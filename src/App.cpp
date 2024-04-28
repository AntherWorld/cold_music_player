#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QIcon>
int main(int argc, char *argv[])
{
   // QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    app.setWindowIcon(QIcon(":/images/music.png"));

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/qml/App.qml"));

    QObject::connect(&engine,&QQmlApplicationEngine::objectCreated,
    &app,[url](QObject *obj,const QUrl &objUrl) {
        if(!obj && url == objUrl)
            QCoreApplication::exit(-1);
    },Qt::QueuedConnection
    
    );
    engine.load(url);
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
