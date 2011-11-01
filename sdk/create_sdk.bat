set QT_DIR=C:\Qt\bin
set SOURCE_DIR=C:\00_Git\DLT-viewer
set BUILD_DIR=C:\00_Git\BuildDltViewer-build-desktop-Qt_4_7_4_for_Desktop_-_MinGW_4_4__Qt_SDK__Release\release
set TARGET_DIR=C:\dlt_viewer\releases\dlt_viewer_new

cd %BUILD_DIR%

ECHO Create directories
mkdir %TARGET_DIR%
mkdir %TARGET_DIR%\plugins
mkdir %TARGET_DIR%\sdk
mkdir %TARGET_DIR%\sdk\include
mkdir %TARGET_DIR%\sdk\lib
mkdir %TARGET_DIR%\sdk\src
mkdir %TARGET_DIR%\sdk\src\dummydecoderplugin
mkdir %TARGET_DIR%\sdk\src\dummyviewerplugin
mkdir %TARGET_DIR%\sdk\src\dummycontrolplugin

ECHO Copy files
copy %QT_DIR%\..\mingw\bin\mingwm10.dll %TARGET_DIR%
copy %QT_DIR%\..\mingw\bin\libgcc_s_dw2-1.dll %TARGET_DIR%
copy %QT_DIR%\QtCore4.dll %TARGET_DIR%
copy %QT_DIR%\QtGui4.dll %TARGET_DIR%
copy %QT_DIR%\QtNetwork4.dll %TARGET_DIR%

copy %BUILD_DIR%\dlt_viewer.exe %TARGET_DIR%
copy %BUILD_DIR%\qextserialport.dll %TARGET_DIR%
copy %BUILD_DIR%\qdlt.dll %TARGET_DIR%

copy %BUILD_DIR%\plugins\dltviewerplugin.dll %TARGET_DIR%\plugins
copy %BUILD_DIR%\plugins\nonverboseplugin.dll %TARGET_DIR%\plugins
copy %BUILD_DIR%\plugins\filetransferplugin.dll %TARGET_DIR%\plugins
copy %BUILD_DIR%\plugins\dltsystemviewerplugin.dll %TARGET_DIR%\plugins

copy %SOURCE_DIR%\ReleaseNotes_Viewer.txt %TARGET_DIR%

copy %SOURCE_DIR%\qdlt\dlt.h %TARGET_DIR%\sdk\include
copy %SOURCE_DIR%\qdlt\dlt_common.h %TARGET_DIR%\sdk\include
copy %SOURCE_DIR%\qdlt\dlt_protocol.h %TARGET_DIR%\sdk\include
copy %SOURCE_DIR%\qdlt\dlt_types.h %TARGET_DIR%\sdk\include
copy %SOURCE_DIR%\qdlt\dlt_user.h %TARGET_DIR%\sdk\include
copy %SOURCE_DIR%\qdlt\dlt_user_macros.h %TARGET_DIR%\sdk\include
copy %SOURCE_DIR%\qdlt\qdlt.h %TARGET_DIR%\sdk\include
copy %SOURCE_DIR%\src\plugininterface.h %TARGET_DIR%\sdk\include

copy %BUILD_DIR%\libqdlt.a %TARGET_DIR%\sdk\lib
copy %BUILD_DIR%\libqextserialport.a %TARGET_DIR%\sdk\lib

copy %SOURCE_DIR%\plugin\dummyviewerplugin %TARGET_DIR%\sdk\src\dummyviewerplugin
copy %SOURCE_DIR%\plugin\dummydecoderplugin %TARGET_DIR%\sdk\src\dummydecoderplugin
copy %SOURCE_DIR%\plugin\dummycontrolplugin %TARGET_DIR%\sdk\src\dummycontrolplugin

copy %SOURCE_DIR%\sdk\BuildPlugins.pro %TARGET_DIR%\sdk\src
copy %SOURCE_DIR%\sdk\dummydecoderplugin.pro %TARGET_DIR%\sdk\src\dummydecoderplugin
copy %SOURCE_DIR%\sdk\dummyviewerplugin.pro %TARGET_DIR%\sdk\src\dummyviewerplugin
copy %SOURCE_DIR%\sdk\dummycontrolplugin.pro %TARGET_DIR%\sdk\src\dummycontrolplugin