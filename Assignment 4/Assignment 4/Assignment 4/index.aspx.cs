using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_4
{
    public partial class index : System.Web.UI.Page
    {
        // initializers
        Double _principal = 0.0, _years = 0.0, _rate = 0.0, _monthly, _top, _bottom, _bottom1, _bottom2, _bottom3;

        protected void txtOther_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //txtOther.Enabled = false;
        }

        protected void radList_SelectedIndexChanged(object sender, EventArgs e)
        {
            // txtOther text is set to the selection value
            txtOther.Text = radList.SelectedValue;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            // clears all info
            lblResult.Text = "";
            txtPrincipal.Text = "";
            txtOther.Text = "";
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            // Converts textbox text into _principal double variable
            if (Double.TryParse(txtPrincipal.Text, out _principal) && _principal >= 1)
            {

            }

            else
            // Error message if conditions are not met
            {
                txtPrincipal.Text = "INVALID";
            }

            // Converts textOther value into _years double variable
            if (Double.TryParse(txtOther.Text, out _years) && _years >= 1)
            {

            }

            else
            // Error message if conditions are not met
            {
                txtOther.Text = "INVALID";

            }

            if (Double.TryParse(DropDownList.SelectedValue, out _rate) && _principal >= 1 && _years >= 1)
            // Mortgage calculations performed if conditions are met
            {
                _top = (_principal * _rate) / 1200;
                _bottom1 = 1 + (_rate / 1200);
                _bottom2 = -12 * _years;
                _bottom3 = Math.Pow(_bottom1, _bottom2);
                _bottom = 1 - _bottom3;
                _monthly = _top / _bottom;
                lblResult.Text = _monthly.ToString("C");
            }

            else
            // Error message if conditions are not met
            {
                lblResult.Text = "TRY AGAIN";

            }
        }
    }
}