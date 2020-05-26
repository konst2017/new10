<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use backend\models\Teg;
use yii\helpers\ArrayHelper;

?>

<div class="film-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'year')->textInput() ?>

     

<?php /*
$data = Teg::find()->asArray()->all();

$data = ArrayHelper::map($data, 'title', 'title');

  echo $form->field($model, 'teg')->widget(Select2::classname(), [
    'data' => $data,
  
    'options' => ['placeholder' => 'Выберете тег ...'],
    'pluginOptions' => [
         'multiple' => true
    ],
]);
*/
/*
   $authors = Teg::find()->all();
// формируем массив, с ключем равным полю 'id' и значением равным полю 'name' 
    $items = ArrayHelper::map($authors,'title','title');
    $params = [
        'prompt' => 'Укажите автора записи'
    ];
    echo $form->field($model, 'teg')->dropDownList($items,$params);
*/


?>
	

<?php  echo $form->field($model, 'tegIds')->widget(Select2::class, [
    'data' => Teg::find()->select('title')->indexBy('id')->orderBy('title')->column(),
    'options' => ['placeholder' => 'Выберете тег ...'],
    'pluginOptions' => [
        'multiple' => true
    ],
]);  ?>

 
    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
