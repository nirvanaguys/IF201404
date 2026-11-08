$javaHome = "C:\Program Files\Android\Android Studio\jbr"
$javafxRepo = "C:\Users\nirvanaguys\.m2\repository\org\openjfx"
$mysqlJar = "C:\Users\nirvanaguys\.m2\repository\com\mysql\mysql-connector-j\8.0.33\mysql-connector-j-8.0.33.jar"
$fontAwesomeJar = "C:\Users\nirvanaguys\.m2\repository\de\jensd\fontawesomefx-fontawesome\4.7.0-9.1.2\fontawesomefx-fontawesome-4.7.0-9.1.2.jar"
$fontAwesomeCommons = "C:\Users\nirvanaguys\.m2\repository\de\jensd\fontawesomefx-commons\9.1.2\fontawesomefx-commons-9.1.2.jar"

$moduleJars = @(
    "$javafxRepo\javafx-controls\21\javafx-controls-21-win.jar",
    "$javafxRepo\javafx-base\21\javafx-base-21-win.jar",
    "$javafxRepo\javafx-graphics\21\javafx-graphics-21-win.jar",
    "$javafxRepo\javafx-fxml\21\javafx-fxml-21-win.jar"
)

$modulePath = $moduleJars -join ";"
$classPath = ("target\classes", $modulePath, $mysqlJar, $fontAwesomeJar, $fontAwesomeCommons) -join ";"

Write-Host "Menjalankan EDULIFE+ Application..." -ForegroundColor Cyan
& "$javaHome\bin\java.exe" --enable-native-access=javafx.graphics --module-path "$modulePath" --add-modules javafx.controls,javafx.fxml -cp "$classPath" com.example.app.MainApp
