using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AltaMascotas
{
    public partial class AltaMascotas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void cargaRaza(object sender, EventArgs e)
        {
            string esp = especie.SelectedValue;
            raza.Items.Clear();
            switch (esp)
            {
                case "Perro":
                    raza.Items.Add(new ListItem("Mestizo", "Mestizo"));
                    raza.Items.Add(new ListItem("Ovejero", "Ovejero"));
                    raza.Items.Add(new ListItem("Terrier", "Terrier"));
                    break;
                case "Gato":
                    raza.Items.Add(new ListItem("Siames", "Siames"));
                    raza.Items.Add(new ListItem("Persa", "Persa"));
                    raza.Items.Add(new ListItem("Maine Coon", "Maine Coon"));
                    break;
            }
        }

        protected void Agregar(object sender, EventArgs e)
        {
            if (nombre.Text != "" && responsable.Text != "" && raza.SelectedIndex >= 0)
            {
                Datos.Text = 
                    $"{Datos.Text}" +
                    $"Nombre mascota: {nombre.Text}. " +
                    $"Animal: {especie.SelectedValue}. " +
                    $"Raza: {raza.SelectedValue}. " +
                    $"Persona responsable: {responsable.Text}. - ";
                nombre.Text = string.Empty;
                responsable.Text = string.Empty;
                especie.SelectedIndex = -1;
                raza.Items.Clear();
                raza.Items.Add(new ListItem("Elegir la especie..", "0"));
            }
        }

    }
}