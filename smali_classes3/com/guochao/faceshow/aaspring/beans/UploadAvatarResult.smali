.class public Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bigImgUrl:Ljava/lang/String;

.field private smallImgUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBigImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;->bigImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;->smallImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBigImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;->bigImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setSmallImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;->smallImgUrl:Ljava/lang/String;

    return-void
.end method
