﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void buttonplayMusic(object sender, EventArgs e)
        {
            string playSong = "Now Playing - Perfect Night";
            SongPlaying.InnerHtml = playSong;
        }
    }
}