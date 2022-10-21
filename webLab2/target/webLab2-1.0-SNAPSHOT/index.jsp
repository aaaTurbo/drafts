<!DOCTYPE html>
<html lang="en">
<jsp:include page="tableindex.jsp"/>
<script src="js/Validator.js" defer></script>
<script src="js/RecieveSubmit.js" defer></script>
<script src="js/SetterOfXandY.js" defer></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <head>
    <meta charset="UTF-8">
    <title>Menu</title>
    <link rel="icon" href="resources/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="resources/styles.css"/>
  </head>
  <body>
     <h1 id="cap">Семенов Антон Алексеевич</br>Группа P32091</br>Вариант 91053</h1>
     <ul>
        <div id="imap" mouseover='mapSelect(id)'>
            <span id="tooltiptext">Введите значение R!</span>
            <svg width="300" height="300">
            <line x1="0" x2="300" y1="150" y2="150"></line>
            <line x1="150" x2="150" y1="0" y2="300"></line>

            <polygon points="150,0 145,15 155,15"></polygon>
            <polygon points="300,150 285,145 285,155"></polygon>

            <polygon points="150,150 250,150 150,50" class="figure"></polygon>

            <polygon points="150,150 50,150 50,250 150,250" class="figure"></polygon>

            <path d="M150,250 A100,100 90 0,0 250,150 L 150,150 Z" class="figure"></path>

            <text x="285" y="135">X</text>
            <text x="160" y="15">Y</text>

            <line x1="50" x2="50" y1="145" y2="155"></line>
            <line x1="100" x2="100" y1="145" y2="155"></line>
            <line x1="200" x2="200" y1="145" y2="155"></line>
            <line x1="250" x2="250" y1="145" y2="155"></line>

            <line x1="145" x2="155" y1="50" y2="50"></line>
            <line x1="145" x2="155" y1="100" y2="100"></line>
            <line x1="145" x2="155" y1="200" y2="200"></line>
            <line x1="145" x2="155" y1="250" y2="250"></line>

            <text x="50" y="140" text-anchor="middle" id="-r">-R</text>
            <text x="98" y="140" text-anchor="middle" id="-r2">-R/2</text>
            <text x="200" y="140" text-anchor="middle" id="r2">R/2</text>
            <text x="250" y="140" text-anchor="middle" id="r">R</text>

            <text x="160" y="52.5" id="R">R</text>
            <text x="160" y="102.5" id="R2">R/2</text>
            <text x="160" y="202.5" id="-R2">-R/2</text>
            <text x="160" y="252.5" id="-R">-R</text>
        </svg>
        </div>
        <li>
        <form id="form" name="form" onsubmit="receiveSubmit(); return false">
                        <label for="x_value" id="buttonsX">Изменение X:

                            <button type="button" class="btnGroupX" value="-5" id="x-5" onclick="setX(value, id)">-5</button>
                            <button type="button" class="btnGroupX" value="-4" id="x-4" onclick="setX(value, id)">-4</button>
                            <button type="button" class="btnGroupX" value="-3" id="x-3" onclick="setX(value, id)">-3</button>
                            <button type="button" class="btnGroupX" value="-2" id="x-2" onclick="setX(value, id)">-2</button>
                            <button type="button" class="btnGroupX" value="-1" id="x-1" onclick="setX(value, id)">-1</button>
                            <button type="button" class="btnGroupX" value="0" id="x0" onclick="setX(value, id)">0</button>
                            <button type="button" class="btnGroupX" value="1" id="x1" onclick="setX(value, id)">1</button>
                            <button type="button" class="btnGroupX" value="2" id="x2" onclick="setX(value, id)">2</button>
                            <button type="button" class="btnGroupX" value="3" id="x3" onclick="setX(value, id)">3</button>

                        </label>
                        <input type="hidden" name="x_value" id="x_value">
                        <br>
                        <label for="y_value">Изменение Y:

                            <input type="text" name="y_value" id="y_value" placeholder="Число от -3 до 5" maxlength="10"
                                  required>
                        </label>
                        <br>
                        <label for="r_value">Изменение R:

                            <input type="text" name="r_value" id="r_value" placeholder="Число от 2 до 5" maxlength="10" oninput="setR(value)"
                                                               required>
                        </label>
                    </form>
        </li>
     </ul>
     <li>
        <box id="validationInfo">
        </box>
        <br>
        <button type="submit" form="form">Подтвердить</button>
        <button form="form" type="reset" onclick="errase()">Сбросить</button>
     </li>
  </body>
</html>
