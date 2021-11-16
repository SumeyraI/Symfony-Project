<?php

namespace App\Controller;

use App\Entity\Admin\Messages;
use App\Entity\University;
use App\Form\Admin\MessagesType;
use App\Repository\Admin\CommentRepository;
use App\Repository\ImageRepository;
use App\Repository\SettingRepository;
use App\Repository\UniversityRepository;
use http\Message\Body;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Mailer\Bridge\Google\Smtp\GmailTransport;
use Symfony\Component\Mailer\Mailer;
use Symfony\Component\Mime\Email;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index(SettingRepository $settingRepository,UniversityRepository  $universityRepository)
    {
        $setting=$settingRepository->findAll();
        $slider=$universityRepository->findBy([],['id'=>'DESC'],4);

        $newuniversities=$universityRepository->findBy([],['id'=>'ASC'],4);  //haberler

        $universities=$universityRepository->findBy([],['description'=>'DESC'],4);    //duyurular

        $etkinlik=$universityRepository->findBy([],['id'=>'DESC'],4);  //etkinlikler



        //dump($slider);
        //die();

        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'setting'=>$setting,
            'slider'=>$slider,
            'universities'=>$universities,
            'newuniversities'=>$newuniversities,
            'etkinlik'=>$etkinlik,


        ]);
    }
    /**
     * @Route("/university/{id}", name="university_show", methods={"GET"})
     */
    public function show(University $university,$id,ImageRepository $imageRepository,CommentRepository $commentRepository): Response
    {
        $images=$imageRepository->findBy(['veri'=>$id]);

        $comments=$commentRepository->findBy(['universityid'=>$id, 'status'=>'True']); //*commentlarda sadece true olanları commentte gösterdik***

        return $this->render('home/universityshow.html.twig', [
            'university' => $university,
            'images' => $images,
            'comments' => $comments,
        ]);
    }

    /**
     * @Route("/about", name="home_about")
     */
    public function about(SettingRepository $settingRepository): Response
    {
        $setting=$settingRepository->findAll();
        return $this->render('home/aboutus.html.twig', [
            'setting'=>$setting,
        ]);
    }

    /**
     * @Route("/contact", name="home_contact", methods={"GET","POST"})
     */
    public function contact(SettingRepository $settingRepository,Request $request): Response
    {
        $message = new Messages();
        $form = $this->createForm(MessagesType::class, $message);
        $form->handleRequest($request);
        $submittedToken = $request->request->get('token');

        $setting=$settingRepository->findAll(); //Get setting data

        if ($form->isSubmitted()) {
            if ($this->isCsrfTokenValid('form-messeage',$submittedToken)){
                $entityManager = $this->getDoctrine()->getManager();
                $message->setStatus('New');
                $message->setIp($_SERVER['REMOTE_ADDR']);
                $entityManager->persist($message);
                $entityManager->flush();
                $this->addFlash('success','Your message has been sent successfully');

                //******** SEND EMAIL ************
                $email = (new Email())
                    ->from($setting[0]->getSmtpemail())
                    ->to($form['email']->getData())
                    //->cc('cc@example.com')
                    //->bcc('bcc@example.com')
                    //->replyTo('fabien@example.com')
                    //->priority(Email::PRIORITY_HIGH)
                    ->subject('Time for Symfony Mailer!')
                    // ->text('Sending emails is fun again!')
                    ->html("Dear " .$form['name']->getData() ."<br>
                    <p>We will evaluate your requests and contact you as soon as possible</p>
                    Thank You<br>
                    ************************************************
                    <br>".$setting[0]->getCompany()." <br>
                    Address : ".$setting[0]->getAddress()." <br>
                    Phone   : ".$setting[0]->getPhone(). "<br>"
                    );
                $transport = new GmailTransport($setting[0]->getSmtpemail(), $setting[0]->getSmtppassword());
                $mailer = new Mailer($transport);
                $mailer->send($email);

                //<<<<<<<<<<<<<<<<<<<<< SEND EMAIL ****************************


                return $this->redirectToRoute('home_contact');
            }
        }


        $setting=$settingRepository->findAll();
        return $this->render('home/contact.html.twig', [
            'setting'=>$setting,
            'form' => $form->createView(),
        ]);
    }



}
