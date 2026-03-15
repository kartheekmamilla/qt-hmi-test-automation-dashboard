QT += quick quickcontrols2 charts

CONFIG += c++17

DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
    main.cpp

RESOURCES += qml.qrc

QML_IMPORT_PATH += $$PWD/qml
QML_DESIGNER_IMPORT_PATH += $$PWD/qml
