# SendEmail
.Net发送邮件
1.补充知识

（1）POP3和SMTP服务器是什么？

简单点来说：POP3 用于接收电子邮件 ，SMTP 用于发送电子邮件。

（1）POP3具体指什么？

POP3(Post Office Protocol 3)即邮局协议的第3个版本，它是规定个人计算机如何连接到互联网上的邮件服务器进行收发邮件的协议。它是因特网电子邮件的第一个离线协议标准，POP3协议允许用户从服务器上把邮件存储到本地主机（即自己的计算机）上，同时根据客户端的操作删除或保存在邮件服务器上的邮件，而POP3服务器则是遵循POP3协议的接收邮件服务器，用来接收电子邮件的。POP3协议是TCP/IP协议族中的一员，,由RFC 1939 定义

（2）SMTP具体是指什么？

SMTP的全称是"Simple Mail Transfer Protocol"，即简单邮件传输协议。它是一组用于从源地址到目的地址传输邮件的规范，通过它来控制邮件的中转方式。SMTP 协议属于 TCP/IP 协议簇，它帮助每台计算机在发送或中转信件时找到下一个目的地。SMTP 服务器就是遵循 SMTP 协议的发送邮件服务器。

2.System.Net.Mail

使用ASP.NET发送电子邮件，需要引用System.Net.Mail命名空间。System.Net.Mail 命名空间包含用于将电子邮件发送到简单邮件传输协议 (SMTP) 服务器进行传送的类。

（1）命名空间下有三个比较主要的类：

MailMessage:提供属性和方法来创建一个邮件消息对象，即邮件内容。

Attachment:提供属性和方法来创建一个邮件附件对象，即邮件附件。

SmtpClient:将电子邮件传输到您指定用于邮件传送的 SMTP 主机。

（2）MailMessage类：

From：发送邮件的地址 
To：接收邮件的地址 
Subject：邮件的标题 
Priority：邮件的优先级（分别为为High,Low,Normal） 
Attachments：电子邮件的数据的附件集合
Bcc：密送地址 
Cc：抄送地址 
Body：邮件正文
SubjectEncoding：电子邮件的主题内容使用的编码

IsBodyHtml：邮件正文是否为 Html 格式的值

详细参考：https://www.cnblogs.com/ForEvErNoME/archive/2012/06/05/2529259.html

（3）Attachment类：

详细参考：http://msdn.microsoft.com/zh-cn/library/system.net.mail.attachment.aspx

（4）SmtpClient类：

DeliveryMethod：指定如何处理待发的电子邮件

Host：SMTP 事务的主机的名称或 IP 地址

Credentials：设置用于验证发件人身份的凭据

详细参考：http://msdn.microsoft.com/zh-cn/library/system.net.mail.smtpclient.aspx

3.ASP.NET发送邮件两种方式

（1）通过邮件服务提供商的SMTP来发送邮件

首先需要注册对应服务提供商免费邮箱，因为你要使用邮件服务提供商的SMTP，他们需要对身份进行验证，这样可以避免产生大量的垃圾邮件。

有三个是重要的信息：SMTP服务器、用户名、密码。从网上收集了几个类，可以参考下。

（2）利用本机的SMTP虚拟服务器的SMTP来发送邮件

需要进行SMTP配置，还是第一种简单实用。
4.参考资料：常用邮件服务器

gmail.com:
POP3服务器地址:pop.gmail.com
SMTP服务器地址:smtp.gmail.com

qq.com:

POP3服务器地址:pop.qq.com
SMTP服务器地址:smtp.qq.com

163.com: 
POP3服务器地址:pop.163.com 
SMTP服务器地址:smtp.163.com 

sina.com: 

POP3服务器地址:pop3.sina.com.cn 
SMTP服务器地址:smtp.sina.com.cn 

yahoo.com: 
POP3服务器地址:pop.mail.yahoo.com 
SMTP服务器地址:smtp.mail.yahoo.com 

sohu.com: 
POP3服务器地址:pop3.sohu.com 
SMTP服务器地址:smtp.sohu.com 

china.com: 
POP3服务器地址:pop.china.com 
SMTP服务器地址:smtp.china.com 


21cn.com: 
POP3服务器地址:pop.21cn.com 
SMTP服务器地址:smtp.21cn.com sina.com: 
