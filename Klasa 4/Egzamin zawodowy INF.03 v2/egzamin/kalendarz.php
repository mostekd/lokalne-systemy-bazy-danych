<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header><h1>Dni, miesiące, lata...</h1></header>
    <section id="napis">
        <i>
    <?php
        $conn = mysqli_connect("localhost", "root", "", "kalendarz");
        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }

        date_default_timezone_set('Europe/Warsaw');
        $today_date = date("m-d");

        $sql = "SELECT imiona FROM imieniny WHERE data = '$today_date'";
        $result = mysqli_query($conn, $sql);

        $polish_days = [
            "Monday" => "poniedziałek",
            "Tuesday" => "wtorek",
            "Wednesday" => "środa",
            "Thursday" => "czwartek",
            "Friday" => "piątek",
            "Saturday" => "sobota",
            "Sunday" => "niedziela"
        ];
        $day_of_week_pl = $polish_days[date("l")];

        $formatted_date = date("d-m") . "-2024";

        if ($result && mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            echo "Dzisiaj jest " . $day_of_week_pl . ", " . $formatted_date . ", imieniny: " . $row['imiona'];
        } else {
            echo "No name days found for today.";
        }
    ?>
    </i>
    </section>
    <div>
    <section id="left">
        <table>
                <tr>
                    <th style="border-right: lavender;">liczba dni</th>
                    <th style="border-left: lavender;">miesiąc</th>
                </tr>
                <tr>
                    <td rowspan="8">31</td>
                    <td>styczeń</td>
                </tr>
                <tr>
                    <td>marzec</td>
                </tr>
                <tr>
                    <td>maj</td>
                </tr>
                <tr>
                    <td>lipiec</td>
                </tr>
                <tr>
                    <td>sierpień</td>
                </tr>
                <tr>
                    <td>październik</td>
                </tr>
                <tr>
                    <td>grudzień</td>
                </tr>
                <tr>
                    <td>kwiecień</td>
                </tr>
                <tr>
                    <td rowspan="3">30</td>
                    <td>czerwiec</td>
                </tr>
                <tr>
                    <td>wrześień</td>
                </tr>
                <tr>
                    <td>listopad</td>
                </tr>
                <tr>
                    <td colspan="1">28 lub 29</td>
                    <td>luty</td>
                </tr>
        </table>
        </section>
    <section id="middle">
        <h1>Sprawdź kto ma urodziny</h1>
        <form method="post">
            <input type="date" name="birthdate"
                   value="2024-01-01"
                   min="2024-01-01"
                   max="2024-12-31">
            <button type="submit">Wyślij</button>
        </form>

        <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $birthdate = $_POST["birthdate"];
            $birthdate = date('2024-m-d', strtotime($birthdate));
            $birthdate_formatted = date("m-d", strtotime($birthdate));
            $sql_imieniny = "SELECT imiona FROM imieniny WHERE data = '$birthdate_formatted'";
            $result_imieniny = mysqli_query($conn, $sql_imieniny);
            if ($result_imieniny && mysqli_num_rows($result_imieniny) > 0) {
                $row_imieniny = mysqli_fetch_assoc($result_imieniny);
                echo "Dnia " . $birthdate . " są imieniny: " . $row_imieniny['imiona'];
            } else {
                echo "Brak imienin dla podanej daty.";
            }
        }
        ?>
    </section>
    <section id="right">
        <img src="kalendarz.gif" id="image">
        <h1>Rodzaje <br> kalendarzy</h1>
        <br>
        <ol>
            <li>słoneczny
                <ul>
                    <li>kalendarz Majów</li>
                    <li>juliański</li>
                    <li>gregoriański</li>
                </ul>
            </li>
            <li>księżycowy
                <ul>
                    <li>starogrecki</li>
                    <li>babiolański</li>
                </ul>
            </li>
        </ol>
    </section>
    </div>
    <footer>
            <i id="inner">
                Stronę opracował(a): 000000000
            </i>
    </footer>
</body>
</html>
<?php
mysqli_close($conn);
?>