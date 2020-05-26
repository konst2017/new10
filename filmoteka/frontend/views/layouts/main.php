<?php
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;
use yii\data\Pagination;
use frontend\controllers\CategoryController;
AppAsset::register($this);
?>

<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>

<?php $this->beginBody()
    ?>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="clear"> 
    <!-- ################################################################################################ -->
    <div class="fl_left">
      <ul class="nospace inline">
        <li><i class="fa fa-phone"></i> +00 (123) 456 7890</li>
        <li><i class="fa fa-envelope-o"></i> info@domain.com</li>
      </ul>
    </div>
    <div class="fl_right">
      <ul class="faico clear">
        <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a class="faicon-pinterest" href="#"><i class="fa fa-pinterest"></i></a></li>
        <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a class="faicon-dribble" href="#"><i class="fa fa-dribbble"></i></a></li>
        <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
        <li><a class="faicon-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
        <li><a class="faicon-rss" href="#"><i class="fa fa-rss"></i></a></li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left"  align="left">
      <h2><a href="index.html">Фильмотека</a></h2>
    </div>
    <nav id="mainav" class="fl_right">
      <ul class="clear">
       
		<li class="active"><a href="<?= \yii\helpers\Url::to(['/site/wiw'])?>">Главная</a>
		
		 <ul>
			
     
    <li><a href="<?= \yii\helpers\Url::to(['/film/index'])?>">Просмотр</a></li>
          


          </ul>
		
		</li>
       
		
		
        <li><a class="drop" href="#">Пользователи</a>
             <ul>
			 <?php
			  if (Yii::$app->user->isGuest) {
				  ?>
     
    <li><a href="<?= \yii\helpers\Url::to(['/site/signup'])?>">Регистрация</a></li>
          <li> <a href="<?= \yii\helpers\Url::to(['http://localhost/filmoteka/backend/web/index.php'], 'https')?>">Вход</a></li>


<?   }   
	 else {
		 ?>
      <li><a href="<?= \yii\helpers\Url::to(['/site/logout'])?>">Выход</a></li>
   

<?php   }	?> 
          </ul>
        </li>
		
      
		<li> <a href="<?= \yii\helpers\Url::to(['/site/contact'])?>">Контакты </a> </li>
      </ul>
    </nav>
    <!-- ################################################################################################ -->
  </header>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row2 bgded" style="background-image:url('images/demo/backgrounds/01.png');">
  <div class="overlay">
    <section id="pageintro" class="clear"> 
      <!-- ################################################################################################ -->
      <div class="center btmspace-80">
        <h2 class="heading xxl uppercase btmspace-30">Библиотека фильмов</h2>
        <p class="xl nospace capitalise">Что хотите выбрать у нас</p>
      </div>
     
      <!-- ################################################################################################ -->
    </section>
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="group">
    
         <?= $content ?>
      
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>

<div class="wrapper row5">
  <footer id="footer" class="clear"> 
    <!-- ################################################################################################ -->
    <div class="one_quarter first">
      <h6 class="title">Наименование</h6>
      <address class="btmspace-15">
      <p class="page-footer-copy">2002—2019 © <span><a href="/about/" title="О компании">ООО «Фильмотека»</a></span>
					<br><br>Фильмотека — это лучшие фильмы нпшего времени .</p>
	
	
      </address>
      <ul class="nospace">
        <li class="btmspace-10"><span class="fa fa-phone"></span> +00 (123) 456 7890</li>
        <li><span class="fa fa-envelope-o"></span> info@domain.com</li>
      </ul>
    </div>
    <div class="one_quarter">
      <h6 class="title">Меню</h6>
	  
      <nav id="mainav" class="fl_right">
      <ul>
       
		<li><a href="<?= \yii\helpers\Url::to(['/site/wiw'])?>">Главная</a></li>
		   </ul>      
        
           
    </nav>
    </div>
    <div class="one_quarter">
      <h6 class="title">Блог</h6>
      <article>
        <h2 class="nospace"><a href="#"></a></h2>
        <time class="smallfont" datetime="2045-04-06"><sup></sup> </time>
        <p></p>
      </article>
    </div>
    <div class="one_quarter">
      <h6 class="title">Дополнительные контакты</h6>
      <form method="post" action="#">
        <fieldset>
        <ul class="page-footer-menu">
					 
					<li> <a href="<?= \yii\helpers\Url::to(['/site/contact'])?>">Контакты </a> </li>
        </fieldset>
      </form>
    </div>
    <!-- ################################################################################################ -->
  </footer>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row6">
  <div id="copyright" class="clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="https://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a> 
<!-- JAVASCRIPTS -->

 <?php $this->endBody() ?>
 
 
 
 
</body>
</html>
<?php $this->endPage() ?>