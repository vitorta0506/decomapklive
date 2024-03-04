.class public Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImagePhotoWall"
.end annotation


# instance fields
.field private imgId:Ljava/lang/String;

.field private imgUrl:Ljava/lang/String;

.field private smallImg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;->imgId:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;->smallImg:Ljava/lang/String;

    return-object v0
.end method

.method public setImgId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;->imgId:Ljava/lang/String;

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setSmallImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;->smallImg:Ljava/lang/String;

    return-void
.end method
