<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "film_tegs".
 *
 * @property int $id
 * @property int $film_id
 * @property int $teg_id
 *
 * @property Film $film
 * @property Teg $teg
 */
class FilmTegs extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'film_tegs';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['film_id', 'teg_id'], 'required'],
            [['film_id', 'teg_id'], 'integer'],
            [['film_id'], 'exist', 'skipOnError' => true, 'targetClass' => Film::className(), 'targetAttribute' => ['film_id' => 'id']],
            [['teg_id'], 'exist', 'skipOnError' => true, 'targetClass' => Teg::className(), 'targetAttribute' => ['teg_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'film_id' => 'Film ID',
            'teg_id' => 'Teg ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getFilm()
    {
        return $this->hasOne(Film::className(), ['id' => 'film_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTeg()
    {
        return $this->hasOne(Teg::className(), ['id' => 'teg_id']);
    }
}
