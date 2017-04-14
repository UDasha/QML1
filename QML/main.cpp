#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "brains.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    QObject* root=engine.rootObjects()[0];
    brains* brain=new brains(root);

    QObject::connect(root, SIGNAL(qmlSignal(QString)), brain, SLOT(Additing(QString)));

    return app.exec();
}
