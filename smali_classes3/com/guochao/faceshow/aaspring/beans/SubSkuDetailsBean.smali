.class public Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private disable:Z

.field private skuDetails:Lcom/android/billingclient/api/SkuDetails;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/SkuDetails;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;->skuDetails:Lcom/android/billingclient/api/SkuDetails;

    .line 3
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;->disable:Z

    return-void
.end method


# virtual methods
.method public getSkuDetails()Lcom/android/billingclient/api/SkuDetails;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;->skuDetails:Lcom/android/billingclient/api/SkuDetails;

    return-object v0
.end method

.method public isDisable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;->disable:Z

    return v0
.end method

.method public setDisable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;->disable:Z

    return-void
.end method

.method public setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;->skuDetails:Lcom/android/billingclient/api/SkuDetails;

    return-void
.end method
