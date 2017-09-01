﻿<!--
/*
 * Project: BJP09001
 *
 * Description:
 *    商户接口范例。
 *
 * Modify Information:
 *    Author        Date        Description
 *    ============  ==========  =======================================
 *    abchina       2009/06/02  V2.0.1 Release
 *
 */
-->

<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void btnButton_Click(object sender, EventArgs e)
    {
        //1、生成订单对象
        com.hitrust.trustpay.client.b2c.Order tOrder = new com.hitrust.trustpay.client.b2c.Order();
        tOrder.OrderNo = txtOrderNo.Text;                       //设定订单编号 （必要信息）
        tOrder.ExpiredDate = int.Parse(txtExpiredDate.Text);//设定订单有效期
        //wdy add 20100812 tiedaobu
        tOrder.BuyIP = txtBuyIP.Text;                           //IP
        tOrder.OrderDesc = txtOrderDesc.Text;                   //设定订单说明
        tOrder.OrderDate = txtOrderDate.Text;                   //设定订单日期 （必要信息 - YYYY/MM/DD）
        tOrder.OrderTime = txtOrderTime.Text;                   //设定订单时间 （必要信息 - HH:MM:SS）
        tOrder.OrderAmount = double.Parse(txtOrderAmount.Text); //设定订单金额 （必要信息）
        tOrder.OrderURL = txtOrderURL.Text;                     //设定订单网址

        //2、生成定单订单对象，并将订单明细加入定单中（可选信息）
        com.hitrust.trustpay.client.b2c.OrderItem tOrderItem = new com.hitrust.trustpay.client.b2c.OrderItem();
        tOrderItem.ProductID = "IP000001";
        tOrderItem.ProductName = "中国移动IP卡";
        tOrderItem.UnitPrice = 1.00;
        tOrderItem.Qty = 1;
        tOrder.addOrderItem(tOrderItem);
        tOrderItem = new com.hitrust.trustpay.client.b2c.OrderItem();
        tOrderItem.ProductID = "IP000002";
        tOrderItem.ProductName = "网通IP卡";
        tOrderItem.UnitPrice = 1.00;
        tOrderItem.Qty = 2;
        tOrder.addOrderItem(tOrderItem);

        //3、生成支付请求对象
        com.hitrust.trustpay.client.b2c.PaymentRequest tPaymentRequest = new com.hitrust.trustpay.client.b2c.PaymentRequest();
        tPaymentRequest.Order = tOrder;                             //设定支付请求的订单 （必要信息）
        tPaymentRequest.ProductType = txtProductType.Text;          //设定商品种类 （必要信息）
        tPaymentRequest.PaymentType = txtPaymentType.Text;          //设定支付类型
        tPaymentRequest.NotifyType = txtNotifyType.Text;            //设定支付结果通知类型
        tPaymentRequest.ResultNotifyURL = txtResultNotifyURL.Text;  //设定支付结果回传网址 （必要信息）
        tPaymentRequest.MerchantRemarks = txtMerchantRemarks.Text;  //设定商户备注信息
        tPaymentRequest.PayLinkType = txtPaymentLinkType.Text;      //设定支付接入方式
        //PaymentRequest.PAY_LINK_TYPE_NET;1:internet网络接入   
        //PaymentRequest.PAY_LINK_TYPE_TEL;2:手机网络接入
        //PaymentRequest.PAY_LINK_TYPE_TV;3:数字电视网络接入
        //PaymentRequest.PAY_LINK_TYPE_IC;4:智能客户端
        //PaymentRequest.PAY_LINK_TYPE_MOBILE;5:电话网络


        //4、传送支付请求并取得支付网址
        com.hitrust.trustpay.client.TrxResponse tTrxResponse = tPaymentRequest.postRequest();
        //多商户
        //com.hitrust.trustpay.client.TrxResponse tTrxResponse = tPaymentRequest.extendPostRequest(1);
        string strMessage = "";
        if (tTrxResponse.isSuccess())
        {
            //5、支付请求提交成功，将客户端导向支付页面
            Response.Redirect(tTrxResponse.getValue("PaymentURL"));
        }
        else
        {
            //6、支付请求提交失败，商户自定后续动作
            strMessage = "ReturnCode   = [" + tTrxResponse.ReturnCode + "]<br/>" +
                              "ErrorMessage = [" + tTrxResponse.ErrorMessage + "]<br/>";
        }

        lblMessage.Text = strMessage;
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>农行网上支付平台-商户接口范例-支付请求</title>
</head>
<body style="font-size: 14px;">
    <center>
        支付请求</center>
    <form id="form1" runat="server">
        <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="red"></asp:Label>
        <br />
        <table>
            <tr>
                <td>
                    OrderNo
                </td>
                <td>
                    <asp:TextBox runat="server" ID='txtOrderNo' Text='ON200412230001' /></td>
            </tr>
            <tr>
                <td>
                     ExpiredDate
                </td>
                <td>
                    <asp:TextBox runat="server" ID='txtExpiredDate' Text='30' /></td>
            </tr>
            
            <tr>
                <td>
                    BuyIP
                </td>
                <td>
                    <asp:TextBox runat="server" ID='txtBuyIP' Text='127.0.0.1' /></td>
            </tr>
            <tr>
                <td>
                    OrderDesc
                </td>
                <td>
                    <asp:TextBox runat="server" ID='txtOrderDesc' Text='Game Card Order' /></td>
            </tr>
            <tr>
                <td>
                    OrderDate
                </td>
                <td>
                    <asp:TextBox runat="server" ID='txtOrderDate' Text='2004/12/23' />（YYYY/MM/DD）</td>
            </tr>
            <tr>
                <td>
                    OrderTime
                </td>
                <td>
                    <asp:TextBox runat="server" ID='txtOrderTime' Text='11:55:30' />（HH:MM:SS）</td>
            </tr>
            <tr>
                <td>
                    OrderAmount
                </td>
                <td>
                    <asp:TextBox runat="server" ID='txtOrderAmount' Text='2' /></td>
            </tr>
            <tr>
                <td>
                    OrderURL
                </td>
                <td>
                    <asp:TextBox runat="server" ID='txtOrderURL' Text='http://127.0.0.1/Merchant/MerchantQueryOrder.aspx?ON=ON200412230001&DetailQuery=1' /></td>
            </tr>
            <tr>
                <td>
                    ProductType
                </td>
                <td>
                    <asp:TextBox runat="server" ID='txtProductType' Text='1' /></td>
            </tr>
            <tr>
                <td>
                    PaymentType
                </td>
                <td>
                    <asp:TextBox runat="server" ID='txtPaymentType' Text='1' />1：农行卡支付 2：国际卡支付 3：农行贷记卡支付
                    A：支付方式合并  5：第三方跨行支付</td>
            </tr>
            <tr>
                <td>
                    PaymentLinkType
                </td>
                <td>
                    <asp:TextBox runat="server" ID='txtPaymentLinkType' Text='1' />1：internet网络接入 2：手机网络接入
                    3:数字电视网络接入 4:智能客户端 5:电话网络</td>
            </tr>
            <tr>
                <td>
                    NotifyType
                </td>
                <td>
                    <asp:TextBox runat="server" ID='txtNotifyType' Text='0' />0：URL页面通知 1：服务器通知</td>
            </tr>
            <tr>
                <td>
                    ResultNotifyURL</td>
                <td>
                    <asp:TextBox runat="server" ID='txtResultNotifyURL' Text='http://127.0.0.1/Merchant/MerchantResult.asp' /></td>
            </tr>
            <tr>
                <td>
                    MerchantRemarks</td>
                <td>
                    <asp:TextBox runat="server" ID='txtMerchantRemarks' Text='Hi!' /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnButton" runat="server" Text="提交页面内容" OnClick="btnButton_Click" />
                    <a href='Merchant.html'>回商户首页</a>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
