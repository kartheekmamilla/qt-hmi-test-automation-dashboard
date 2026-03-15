#include <QApplication>
#include <QQmlApplicationEngine>
#include <QDebug>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [](QObject *obj, const QUrl &objUrl) {
            if (!obj) {
                qDebug() << "QML failed to load:" << objUrl;
                QCoreApplication::exit(-1);
            }
        },
        Qt::QueuedConnection);

    engine.load(QUrl(QStringLiteral("qrc:/qml/main.qml")));

    return app.exec();
}
