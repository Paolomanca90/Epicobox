using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Epicobox
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }

    public class Prodotto
    {
        public int IdEsperienza { get; set; }
        public string Nome { get; set; }
        public string DescrizioneBreve { get; set; }
        public string DescrizioneLunga { get; set; }
        public decimal Prezzo { get; set; }
        public string ImageBox { get; set; }
        public DateTime DataInizio { get; set; }
        public DateTime DataFine { get; set; }
        public int Location { get; set; }
        public int Categoria { get; set; }
        public string Image1 { get; set; }
        public string Image2 { get; set; }
        public string Image3 { get; set; }
        public Prodotto() { }
        public Prodotto(int id,string nome, string descrizioneBreve, string descrizioneCompleta, decimal prezzo, string image, int location, int categoria, DateTime dataInizio, DateTime dataFine, string image1, string image2, string image3)
        {
            IdEsperienza = id;
            Nome = nome;
            DescrizioneBreve = descrizioneBreve;
            DescrizioneLunga = descrizioneCompleta;
            Prezzo = prezzo;
            ImageBox = image;
            DataInizio = dataInizio;
            DataFine = dataFine;
            Location = location;
            Categoria = categoria;
            Image1 = image1;
            Image2 = image;
            Image3 = image3;
        }
    }
}