<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\ArrayHelper;
/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */
use yii\widgets\DetailView;
$this->title = 'Films';
$this->params['breadcrumbs'][] = $this->title;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use frontend\models\Teg;
?>
<div class="film-index">

    <h1><?= Html::encode($this->title) ?></h1>
 <?php $form = ActiveForm::begin(); ?>
 
 <?php  echo $form->field($model, 'tegIds')->widget(Select2::class, [
    'data' => Teg::find()->select('title')->indexBy('id')->orderBy('title')->column(),
		
    'options' => ['placeholder' => 'Выберете тег ...'

	
	],
    'pluginOptions' => [
        'multiple' => true
    ],
]);  ?>

<div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>
 <?php ActiveForm::end(); ?>
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
            ['class' => 'yii\grid\ActionColumn','template' => '{view}'],
        ],
    ]); ?>


</div>
