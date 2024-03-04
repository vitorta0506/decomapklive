.class public Lcom/guochao/faceshow/aaspring/beans/SearchTopicBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public currPage:I

.field public hotCount:I

.field public pageSize:I

.field public placeName:Ljava/lang/String;

.field public recommendCount:I

.field public topicName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrPage()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchTopicBean;->currPage:I

    return v0
.end method

.method public getHotCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchTopicBean;->hotCount:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchTopicBean;->pageSize:I

    return v0
.end method

.method public getPlaceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchTopicBean;->placeName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchTopicBean;->recommendCount:I

    return v0
.end method

.method public getTopicName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchTopicBean;->topicName:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrPage(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchTopicBean;->currPage:I

    return-void
.end method

.method public setHotCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchTopicBean;->hotCount:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchTopicBean;->pageSize:I

    return-void
.end method

.method public setPlaceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchTopicBean;->placeName:Ljava/lang/String;

    return-void
.end method

.method public setRecommendCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchTopicBean;->recommendCount:I

    return-void
.end method

.method public setTopicName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchTopicBean;->topicName:Ljava/lang/String;

    return-void
.end method
