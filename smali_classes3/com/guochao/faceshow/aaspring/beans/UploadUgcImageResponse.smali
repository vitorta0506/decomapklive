.class public Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse$ResultBean;
    }
.end annotation


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;

.field private result:Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse$ResultBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse$ResultBean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse;->result:Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse$ResultBean;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse;->code:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse;->msg:Ljava/lang/String;

    return-void
.end method

.method public setResult(Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse$ResultBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse;->result:Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse$ResultBean;

    return-void
.end method
