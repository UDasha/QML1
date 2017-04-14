#include "brains.h"
#include<QVariant>

brains::brains(QObject *parent) : QObject(parent)
{

}

void brains::Additing(const QString &msg)
{
    //создаем объекты строк ввода
    QObject* textinput1=this->parent()->findChild<QObject*>("textinput1");
    QObject* textinput2=this->parent()->findChild<QObject*>("textinput2");

    //создаем объект строки вывода
    QObject* result=this->parent()->findChild<QObject*>("resultRectText");

    //Получение информации
    QString value1=(textinput1->property("text")).toString();
    QString value2=(textinput2->property("text")).toString();

    //вычисления
    int a=value1.toInt();
    int b=value2.toInt();

    int c=a+b;

    //сохраняем результат
    QString resultString=QString::number(c);

    result->setProperty("text", value1+ "+" +value2+ "=" +resultString+ " " +msg);

}
