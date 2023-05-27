#ifndef HTTPUTILS_H
#define HTTPUTILS_H

#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QObject>

class HttpUtils : public QObject
{
    Q_OBJECT
public:
    explicit HttpUtils(QObject *parent = nullptr);
    Q_INVOKABLE void replyFinished(QNetworkReply *reply);
    Q_INVOKABLE void connet(QString url);

private:
    QNetworkAccessManager *manager;
    QString BASE_URL = "http://localhost:3000/";

signals:
    void replySignal(QString reply);
};

#endif // HTTPUTILS_H
