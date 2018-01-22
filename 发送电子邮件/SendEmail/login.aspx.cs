using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnMail_Click(object sender, EventArgs e)
    {
        bool flag = MailHelper.SendEmail(txtmailTo.Text.Trim(),txtmailSubject.Text.Trim(),txtmailContent.Text.Trim());
        if (flag)
        {
            Page.ClientScript.RegisterClientScriptBlock(Page.ClientScript.GetType(), "myscripts", "<script>alert(\"发送成功!\");</script>");
        }
        else
        {
            Page.ClientScript.RegisterClientScriptBlock(Page.ClientScript.GetType(), "myscripts", "<script>alert(\"发送失败!\");</script>");
        }
    }
}