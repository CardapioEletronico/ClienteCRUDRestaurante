﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RestauranteWeb.Models
{
    public class Fila
    {
        public int Id { get; set; }
        public string Descricao { get; set; }
        public int Cardapio_id { get; set; }

        public Cardapio Cardapio { get; set; }

        public Fila ComCardapio(Cardapio c)
        {
            this.Cardapio = c;
            return this;
        }
    }
}