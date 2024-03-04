.class public Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/PushMessageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# instance fields
.field private accountId:I

.field private content:Ljava/lang/String;

.field private createTime:Ljava/lang/String;

.field public createTimeLong:J

.field private img:Ljava/lang/String;

.field private infoId:I

.field private isExpand:Z

.field private isLiveDynamic:I

.field private is_tutual:I

.field private nickName:Ljava/lang/String;

.field private sex:I

.field private title:Ljava/lang/String;

.field private typeId:I

.field private url:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private videoImg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->accountId:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->infoId:I

    return v0
.end method

.method public getIsLiveDynamic()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->isLiveDynamic:I

    return v0
.end method

.method public getIs_tutual()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->is_tutual:I

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->sex:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->typeId:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->videoImg:Ljava/lang/String;

    return-object v0
.end method

.method public isExpand()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->isExpand:Z

    return v0
.end method

.method public setAccountId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->accountId:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->isExpand:Z

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setInfoId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->infoId:I

    return-void
.end method

.method public setIsLiveDynamic(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->isLiveDynamic:I

    return-void
.end method

.method public setIs_tutual(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->is_tutual:I

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->sex:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTypeId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->typeId:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->url:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setVideoImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->videoImg:Ljava/lang/String;

    return-void
.end method
