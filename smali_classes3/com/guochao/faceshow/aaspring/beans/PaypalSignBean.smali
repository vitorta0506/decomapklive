.class public Lcom/guochao/faceshow/aaspring/beans/PaypalSignBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private paymentId:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPaymentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PaypalSignBean;->paymentId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PaypalSignBean;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PaypalSignBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setPaymentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PaypalSignBean;->paymentId:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PaypalSignBean;->productId:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PaypalSignBean;->userId:Ljava/lang/String;

    return-void
.end method
