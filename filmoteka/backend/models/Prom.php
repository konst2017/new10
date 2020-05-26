
<?php

class m200424_092308_film_tegs extends Migration
{
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
 
    public function safeDown()
    {
        $this->dropTable('film_tegs');
    }
}

?>