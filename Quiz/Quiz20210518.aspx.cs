using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Quiz
{
    public partial class Quiz20210518 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s_Conn = "Data Source=(localdb)\\MSSQLLocalDB;" +
                            "Initial Catalog=Test;" +
                            "Integrated Security=True;" +
                            "Connect Timeout=30;Encrypt=False;" +
                            "TrustServerCertificate=False;" +
                            "ApplicationIntent=ReadWrite;MultiSubnetFailover=False;" +
                            "User ID = sa; Password = 12345";

            SqlConnection o_Conn = new SqlConnection(s_Conn);

            try
            {
                o_Conn.Open();

                SqlCommand o_Com = new SqlCommand("INSERT INTO Users VALUES(3, N'雅每每', '2021/11/11')", o_Conn);

                o_Com.ExecuteNonQuery();

            }
            catch (Exception exc)
            {
                Response.Write(exc.ToString());
            }
        }
    }
}