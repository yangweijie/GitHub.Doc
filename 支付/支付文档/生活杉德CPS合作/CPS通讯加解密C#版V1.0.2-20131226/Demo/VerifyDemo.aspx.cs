﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using Sandlife;

public partial class VerifyDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Sandlife.Sandlife sand = new Sandlife.Sandlife();
        /// <summary>
        /// 验签
        /// </summary>
        /// <param name="content">明文</param>
        /// <param name="bn">商户号</param>
        /// <param name="signedString">签名</param>
        /// <param name="PfxPath">证书文件全路径名</param>
        /// <param name="PfxPass">证书密码</param>
        /// <param name="input_charset">编码格式</param>
        /// <returns>true(通过)，false(不通过)</returns>
        /// public bool verify(string content, string bn, string signedString, string PfxPath, string PfxPass, string input_charset)
        //bool rt = sand.verify("version=版本号&merId=商户号&orderId=订单号&orderTime=订单时间&commodities=商品信息&dispatchAmt=配送费用&orderAmt=订单总额&notifyUrl=回调url地址&remark=备注信息&backUp=预留字段", "666002154990022", "TI/SzEddXI4YzybUtM2zBHTaBo58XgHuck9YkEwt2xnI5bqW8+O62q67AEdn3icYk/Db6Ygv9+eIrsS2p+cMFUtMOj1Y0aNb1PDRnoYlKLVue+ejHV3M+2yjHuEHjo1+6dFesMimQnJMMRaozPQpX/eSJF9/UJnPEZKW4o05qBI=", "C:\\temp\\S00000000000001.cer", "", "utf-8");
        bool rt = sand.verify("version=版本号&merId=商户号&orderId=订单号&orderTime=订单时间&commodities=商品信息&dispatchAmt=配送费用&orderAmt=订单总额&notifyUrl=回调url地址&remark=备注信息&backUp=预留字段", "666002154990022", "VsArpo0uq5/iE24Lh9DFvnZa1oIlRuDzG3gYg0QBsgy2CAyLGT09KnswlsoZaC9nQb69nhq9k/H0xTSUKAHaPQSQ98w0UeswWHc+AUe+7KJaR8x81IeApBWvFsmCoxuIFRB23uexGmFMkMeFiO4cLQXRdbKJeTXukj/GHt7NREg=", "C:\\temp\\C00000000000001.cer", "", "utf-8");
        Response.Write(rt);
    }
}
