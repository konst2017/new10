<?php

use yii\db\Migration;

/**
 * Class m200430_121500_film_tegs
 */
class m200430_121500_film_tegs extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
$this->createTable('film_tegs', [
            'id' => $this->primaryKey(),
            'film_id' => $this->integer()->notNull(),
            'teg_id' => $this->integer()->notNull(),
        ]);
 
        $this->createIndex('idx-film_tegs-film_id', 'film_tegs', 'film_id');
        $this->createIndex('idx-film_tegs-teg_id', 'film_tegs', 'teg_id');
        $this->addForeignKey('fk-film_tegs-film_id', 'film_tegs', 'film_id', 'film', 'id', 'CASCADE', 'RESTRICT');
        $this->addForeignKey('fk-film_tegs-teg_id', 'film_tegs', 'teg_id', 'teg', 'id', 'CASCADE', 'RESTRICT');
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('film_tegs'); 

       
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m200430_121500_film_tegs cannot be reverted.\n";

        return false;
    }
    */
}
