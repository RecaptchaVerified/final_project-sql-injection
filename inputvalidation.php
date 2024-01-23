<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User</title>
    <link rel="stylesheet" href="inputvalidation.css">
  </head>
  <body>
    <header class="header">
    <h3>Vulnerable Input Validation</h3>
      <h1>Buy Beautiful Mice</h1>
    </header>
    <form method="get" action="pay.php">
            <fieldset>
              <div class="gallery">
                <p>Mickey: 24$</p>
                <input style="position:absolute; top: 230px;" id="search" name="mickey" value="" />
                <img src="https://cdn.vox-cdn.com/thumbor/Lvzfj2103DbOND7X5WWpTS0QbdI=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/24008104/GettyImages_815784878.jpg">
              </div>
              <div class="gallery">
                <p>Jerry: 3$</p>
                <input style="position:absolute; top: 440px;" id="search" name="jerry" value="" />
                <img src="https://i.redd.it/h15xq2yyvvy41.jpg">
              </div>
              <div class="gallery">
                <p>Minnie: 52$</p>
                <input style="position:absolute; top: 650px;" id="search" name="minnie" value="" />
                <img src="https://pics.craiyon.com/2023-07-21/1206184dd5c740c895ae428c0e243a08.webp">
              </div>
              <input id="pay" type="submit" value="Check out" />
            </fieldset>
    </form>

</body>
</html>