<!DOCTYPE html>
<html>
<head>
    <title>Sistem Prediksi Performa Belajar Mahasiswa</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
    <style>
        .form {
            background-color: #F0F0F4;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .label {
            color: #093269;
            font-weight: bold;
        }
        .hasil-prediksi {
            color: #093269;
        }
    </style>
<body>
    <div class="container mt-5">
        <h1 class="mb-4">Sistem Prediksi Performa Belajar Mahasiswa</h1>
        <form method="post" action="" class="form">
            <div class="form-group">
                <label class="label" for="ipk">Indikator IPK:</label>
                <select class="form-control" name="ipk" id="ipk">
                <option value="A">A (3.50 - 4.00)</option>
                <option value="B">B (3.00 - 3.49)</option>
                <option value="C">C (2.76 - 2.99)</option>
                <option value="D">D (2.00 - 2.75)</option>
                <option value="E">E (< 2.00)</option>
                </select>
            </div>

            <div class="form-group">
                <label class="label" for="tidur">Merasa tidur cukup?</label>
                <select class="form-control" name="tidur" id="tidur">
                    <option value="Ya">Ya</option>
                    <option value="Tidak terlalu">Tidak terlalu</option>
                    <option value="Tidak sama sekali">Tidak sama sekali</option>
                </select>
            </div>

            <div class="form-group">
                <label class="label" for="bergadang">Sering bergadang?</label>
                <select class="form-control" name="bergadang" id="bergadang">
                    <option value="Sering">Sering</option>
                    <option value="Jarang">Jarang</option>
                    <option value="Tidak pernah">Tidak pernah</option>
                </select>
            </div>

            <button type="submit" class="btn btn-primary">Prediksi</button>

            <?php
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                $ipk = $_POST["ipk"];
                $tidur = $_POST["tidur"];
                $bergadang = $_POST["bergadang"];

            $command = sprintf("python decisiontree.py %s %s %s", 
                               escapeshellarg($ipk), 
                               escapeshellarg($tidur), 
                               escapeshellarg($bergadang));
                               
            $hasil_prediksi = shell_exec($command);

            echo "<div class='mt-3'>";
            echo "<h3 class='hasil-prediksi'>Hasil Prediksi:</h3>";
            echo "<p class='hasil-prediksi'>Indikator IPK: $ipk</p>";
            echo "<p class='hasil-prediksi'>Tidur Cukup: $tidur</p>";
            echo "<p class='hasil-prediksi'>Sering bergadang: $bergadang</p>";
            echo "<p class='hasil-prediksi'><b>Hasil Prediksi: $hasil_prediksi berdampak</b></p>";
            echo "</div>";
        }
        ?>            
            
        </form>
</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>