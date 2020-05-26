<?php

use yii\helpers\Html;
use yii\grid\GridView;

use yii\helpers\ArrayHelper;
/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Films';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="film-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Film', ['create'], ['class' => 'btn btn-success']) ?>
    </p>


    <?= GridView::widget([
        'dataProvider' => $dataProvider,
		
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'title',
            'year',
           
	 [
                'attribute' => 'teg',
             
            'value' => function ($data) {
                return !empty($data->tegs) ? implode(', ', ArrayHelper::getColumn($data->tegs, 'title')) : '-'; 
            },  
            ],
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
