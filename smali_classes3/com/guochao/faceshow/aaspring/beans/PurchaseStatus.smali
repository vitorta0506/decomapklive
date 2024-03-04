.class public Lcom/guochao/faceshow/aaspring/beans/PurchaseStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private orderId:Ljava/lang/String;

.field private purchaseToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PurchaseStatus;->purchaseToken:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/PurchaseStatus;->orderId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PurchaseStatus;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PurchaseStatus;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PurchaseStatus;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setPurchaseToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PurchaseStatus;->purchaseToken:Ljava/lang/String;

    return-void
.end method
