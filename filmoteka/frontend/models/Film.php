<?php

namespace frontend\models;

use Yii;
use yii2tech\ar\linkmany\LinkManyBehavior;
/**
 * This is the model class for table "film".
 *
 * @property int $id
 * @property string|null $title
 * @property int|null $year
 * @property string|null $teg
 */
class Film extends \yii\db\ActiveRecord
{
	
	public function behaviors()
    {
        return [
            [
                'class' => LinkManyBehavior::class,
                'relation' => 'tegs', // relation, which will be handled
                'relationReferenceAttribute' => 'tegIds', // virtual attribute, which is used for related records specification
            ],
        ];
    }
	
	
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'film';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['year'], 'integer'],
            [['title', 'teg',], 'string', 'max' => 255],
			 ['tegIds', 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'year' => 'Year',
            'teg' => 'Teg',
        ];
    }
	
	  public function getTegs()
    {
        return $this->hasMany(Teg::class, ['id' => 'teg_id'])->viaTable('film_tegs', ['film_id' => 'id']);
    }
	
}
