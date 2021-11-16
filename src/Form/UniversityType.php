<?php

namespace App\Form;

use App\Entity\Category;
use App\Entity\University;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use phpDocumentor\Reflection\Type;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\File;


class UniversityType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title')
            ->add('keywords')
            ->add('description')
            ->add('image' , FileType::class, [
                'label' => 'University Main Image' ,
                'mapped' => false,

                // make it optional so you don't have to re-upload the PDF file
                // everytime you edit the Product details
                'required' => false,

                // unmapped fields can't define their validation using annotations
                // in the associated entity, so you can use the PHP constraint classes
                'constraints' => [
                    new File([
                        'maxSize' => '1024k',
                        'mimeTypes' => [
                            'image/*',
                          ],
                        'mimeTypesMessage' => 'Please upload a valid İmage File',
                    ])
                ],
            ])

           ->add('category', EntityType::class,[
               'class'=>Category::class,
              'choice_label'=>'title',
              // 'choices'=>[
                //   'Haber'=>'Haber',
                  // 'Duyuru'=>'Duyuru',
                   //'Menu'=>Menu],
           ])


            ->add('detail', CKEditorType::class,array(
                'config'=>array(
                    'uiColor'=>'#ffffff',
                ),
            ))
            ->add('status', ChoiceType::class,[
                'choices'=>[
                    'True'=>'True',
                    'False'=>'False'],
                ])
        ;


    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => University::class,
        ]);
    }
}
