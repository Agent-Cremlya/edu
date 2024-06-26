<?php
    include('tpl/header.php');
    include('tpl/nav.php');
?>
<main class="flex">
  <div class="container-fluid">
    <div class="row">
      <div class="col">
        <div class="tour">
          <img src="img/Crimea1.jpg" class="tour_img">
          <p>Это прекрасная возможность отдохнуть всей семьей</p>
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#priceModal">
            Рассчитать стоимость
          </button>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col">
        <div class="tour">
          <img src="img/Kavkaz1.jpg" class="tour_img">
          <p>Море, солнце и горы!</p>
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#priceModal">
            Рассчитать стоимость
          </button>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col">
        <div class="tour">
          <img src="img/Altay1.jpg" class="tour_img">
          <p>Незабываемые впечатления!</p>
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#priceModal">
            Рассчитать стоимость
          </button>
        </div>
      </div>
    </div>
  </div>
</main>
<div class="modal fade" id="priceModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalSccrollableLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalScrollableLabel">Рассчитать стоимость</h5>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style="max-width: 600px;">
        <form method="get" action="#" id="orderForm">
          <div class="tour">
            <label class="label" for="name">
              Выберите тур:
            </label>
            <select id="inp1">
              <option value="Крым" selected>
                Крым
              </option>
              <option value="Кавказ">
                Кавказ
              </option>
              <option value="Алтай">
                Алтай
              </option>
            </select>
          </div>
          <div class="tour">
            <label class="label" for="data">
              Выберите дату начала:
            </label>
            <input type="date" id="inp2">
          </div>
          <div class="tour">
            <label class="label" for="number">
              Выберите количество участников:
            </label>
            <select id="inp3">
              <option value="1">1</option>
              <option value="2" selected>2</option>
              <option value="3">3</option>
              <option value="4">4</option>
            </select>
          </div>
          <div class="tour">
            <label class="label" for="email">
              Ваш E-mail:
            </label>
            <input type="email" id="inp4" class="input-xlarge" style="width: 350px;" required>
          </div>
          <button type="button" class="btn btn-primary" data-dismiss="modal">Закрыть</button>
          <button type="submit" class="btn btn-primary" id="submit">Отправить</button>
        </form>
      </div>
    </div>
  </div>
</div>
<footer class="footer">
  <div class="row">
    <div class="col">
      Это сайт, предназначенный для обучения
    </div>
  </div>
</main>
<?php
    include('tpl/footer.php');
?>