@echo off
setlocal
set "JAVA_HOME=C:\Program Files\Android\Android Studio\jbr"
set "JAVAFX_HOME=C:\Users\nirvanaguys\.m2\repository\org\openjfx"

set "CP=target\classes;%JAVAFX_HOME%\javafx-controls\21\javafx-controls-21-win.jar;%JAVAFX_HOME%\javafx-base\21\javafx-base-21-win.jar;%JAVAFX_HOME%\javafx-graphics\21\javafx-graphics-21-win.jar;%JAVAFX_HOME%\javafx-fxml\21\javafx-fxml-21-win.jar;C:\Users\nirvanaguys\.m2\repository\com\mysql\mysql-connector-j\8.0.33\mysql-connector-j-8.0.33.jar;C:\Users\nirvanaguys\.m2\repository\de\jensd\fontawesomefx-fontawesome\4.7.0-9.1.2\fontawesomefx-fontawesome-4.7.0-9.1.2.jar;C:\Users\nirvanaguys\.m2\repository\de\jensd\fontawesomefx-commons\9.1.2\fontawesomefx-commons-9.1.2.jar"

"%JAVA_HOME%\bin\java.exe" --enable-native-access=javafx.graphics --module-path "%JAVAFX_HOME%\javafx-controls\21\javafx-controls-21-win.jar;%JAVAFX_HOME%\javafx-base\21\javafx-base-21-win.jar;%JAVAFX_HOME%\javafx-graphics\21\javafx-graphics-21-win.jar;%JAVAFX_HOME%\javafx-fxml\21\javafx-fxml-21-win.jar" --add-modules javafx.controls,javafx.fxml -cp "%CP%" com.example.app.MainApp
endlocal

