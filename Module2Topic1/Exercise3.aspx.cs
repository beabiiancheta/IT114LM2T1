using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TODO 3.3 Set the text value of the finalGrade label to "Submit your grade percentage to see your final grade!". Watch out for post backs
            finalGrade.Text = "Submit your grade percentage to see your final grade!";
        }

        protected void CalculateGrade(object sender, EventArgs e)
        {
            double gradeUser;
            if (double.TryParse(percentageGrade.Text, out gradeUser))
            {
                gradeUser = Math.Round(gradeUser, 2);

                if (gradeUser >= 96.00)
                {
                    finalGrade.Text = "1.0";
                    Response.Write($"<script>alert('Good job! Congrats! You got a GWA of 1.0 ({gradeUser})')</script>");
                }
                else if (gradeUser >= 91.51)
                {
                    finalGrade.Text = "1.25";
                }
                else if (gradeUser >= 87.01)
                {
                    finalGrade.Text = "1.5";
                }
                else if (gradeUser >= 82.51)
                {
                    finalGrade.Text = "1.75";
                }
                else if (gradeUser >= 78.01)
                {
                    finalGrade.Text = "2.0";
                }
                else if (gradeUser >= 73.51)
                {
                    finalGrade.Text = "2.25";
                }
                else if (gradeUser >= 69.01)
                {
                    finalGrade.Text = "2.5";
                }
                else if (gradeUser >= 64.51)
                {
                    finalGrade.Text = "2.75";
                }
                else if (gradeUser >= 60.00)
                {
                    finalGrade.Text = "3.0";
                }
                else if (gradeUser <= 59.00)
                {
                    finalGrade.Text = "5.0";
                }
                else
                {
                    Response.Write($"<script>alert('Invalid! Please enter a valid input!')</script>");
                }
            }
            else
            {
                Response.Write($"<script>alert('Invalid! Please enter a valid input!')</script>");
            }
        }
    }
}
