﻿#pragma checksum "E:\win8\微信文档\wp文档\技术文档\微信WP8终端SDK新手使用指南\Demo程序\SDK_Demo\MainPage.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "8D0C0F0FFCD1A2F611B827332F301D8F"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.17929
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Microsoft.Phone.Controls;
using System;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Automation.Peers;
using System.Windows.Automation.Provider;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Resources;
using System.Windows.Shapes;
using System.Windows.Threading;


namespace SDK_Demo {
    
    
    public partial class MainPage : Microsoft.Phone.Controls.PhoneApplicationPage {
        
        internal System.Windows.Controls.Grid LayoutRoot;
        
        internal System.Windows.Controls.StackPanel TitlePanel;
        
        internal System.Windows.Controls.Button btnLaunch;
        
        internal System.Windows.Controls.Button btnTxt_ChooseByUser;
        
        internal System.Windows.Controls.Button btnTxt;
        
        internal System.Windows.Controls.Button btnImg;
        
        internal System.Windows.Controls.Button btnEmj;
        
        internal System.Windows.Controls.Button btnFile;
        
        internal System.Windows.Controls.Button btnUrl;
        
        internal System.Windows.Controls.Button btnMusic;
        
        internal System.Windows.Controls.Button btnVedio;
        
        internal System.Windows.Controls.Button btnTxtSns;
        
        internal System.Windows.Controls.Button btnImgSns;
        
        internal System.Windows.Controls.Button btnUrlSns;
        
        internal System.Windows.Controls.Button btnMusicSns;
        
        internal System.Windows.Controls.Button btnAuth;
        
        internal System.Windows.Controls.Grid ContentPanel;
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Windows.Application.LoadComponent(this, new System.Uri("/SDK_Demo;component/MainPage.xaml", System.UriKind.Relative));
            this.LayoutRoot = ((System.Windows.Controls.Grid)(this.FindName("LayoutRoot")));
            this.TitlePanel = ((System.Windows.Controls.StackPanel)(this.FindName("TitlePanel")));
            this.btnLaunch = ((System.Windows.Controls.Button)(this.FindName("btnLaunch")));
            this.btnTxt_ChooseByUser = ((System.Windows.Controls.Button)(this.FindName("btnTxt_ChooseByUser")));
            this.btnTxt = ((System.Windows.Controls.Button)(this.FindName("btnTxt")));
            this.btnImg = ((System.Windows.Controls.Button)(this.FindName("btnImg")));
            this.btnEmj = ((System.Windows.Controls.Button)(this.FindName("btnEmj")));
            this.btnFile = ((System.Windows.Controls.Button)(this.FindName("btnFile")));
            this.btnUrl = ((System.Windows.Controls.Button)(this.FindName("btnUrl")));
            this.btnMusic = ((System.Windows.Controls.Button)(this.FindName("btnMusic")));
            this.btnVedio = ((System.Windows.Controls.Button)(this.FindName("btnVedio")));
            this.btnTxtSns = ((System.Windows.Controls.Button)(this.FindName("btnTxtSns")));
            this.btnImgSns = ((System.Windows.Controls.Button)(this.FindName("btnImgSns")));
            this.btnUrlSns = ((System.Windows.Controls.Button)(this.FindName("btnUrlSns")));
            this.btnMusicSns = ((System.Windows.Controls.Button)(this.FindName("btnMusicSns")));
            this.btnAuth = ((System.Windows.Controls.Button)(this.FindName("btnAuth")));
            this.ContentPanel = ((System.Windows.Controls.Grid)(this.FindName("ContentPanel")));
        }
    }
}

