using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz
{
    public partial class Quiz20210525 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void gv_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cal")
            {
                int sum = 0;
                int row = Convert.ToInt32(e.CommandArgument);
                for (int i = 2; i < 5; i++)
                {
                    sum += Convert.ToInt32(gv.Rows[row].Cells[i].Text);
                }
                lb_Show.Text = "總分數：" + sum.ToString();
            }
        }
    }
}