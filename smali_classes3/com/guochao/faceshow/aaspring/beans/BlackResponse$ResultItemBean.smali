.class public Lcom/guochao/faceshow/aaspring/beans/BlackResponse$ResultItemBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/BlackResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultItemBean"
.end annotation


# instance fields
.field private ResultCode:I

.field private ResultInfo:Ljava/lang/String;

.field private To_Account:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/BlackResponse$ResultItemBean;->ResultCode:I

    return v0
.end method

.method public getResultInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BlackResponse$ResultItemBean;->ResultInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTo_Account()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BlackResponse$ResultItemBean;->To_Account:Ljava/lang/String;

    return-object v0
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/BlackResponse$ResultItemBean;->ResultCode:I

    return-void
.end method

.method public setResultInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BlackResponse$ResultItemBean;->ResultInfo:Ljava/lang/String;

    return-void
.end method

.method public setTo_Account(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BlackResponse$ResultItemBean;->To_Account:Ljava/lang/String;

    return-void
.end method
