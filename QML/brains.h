#ifndef BRAINS_H
#define BRAINS_H

#include <QObject>

class brains : public QObject
{
    Q_OBJECT
public:
    explicit brains(QObject *parent = 0);

signals:

public slots:
    void Additing(const QString &msg);
};

#endif // BRAINS_H
