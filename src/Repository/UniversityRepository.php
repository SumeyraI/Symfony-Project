<?php

namespace App\Repository;

use App\Entity\University;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method University|null find($id, $lockMode = null, $lockVersion = null)
 * @method University|null findOneBy(array $criteria, array $orderBy = null)
 * @method University[]    findAll()
 * @method University[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class UniversityRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, University::class);
    }

    // /**
    //  * @return University[] Returns an array of University objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('u')
            ->andWhere('u.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('u.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?University
    {
        return $this->createQueryBuilder('u')
            ->andWhere('u.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */

    // **   LEFT JOIN WITH SQL  ******
    public function getAllUniversities(): array
    {
        $conn = $this->getEntityManager()->getConnection();
        $sql = '
        SELECT h.*,c.title as catname,u.name,u.surname FROM university h
        JOIN category c ON c.id = h.category_id
        JOIN user u ON u.id = h.userid
        ORDER BY c.title ASC
        ';
        $stmt = $conn->prepare($sql);
        $stmt->execute();

        return $stmt->fetchAll();

    }

}
