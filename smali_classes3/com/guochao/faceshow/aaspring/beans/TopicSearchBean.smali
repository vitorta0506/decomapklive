.class public Lcom/guochao/faceshow/aaspring/beans/TopicSearchBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isNew:I

.field private topicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsNew()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/TopicSearchBean;->isNew:I

    return v0
.end method

.method public getTopicList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TopicSearchBean;->topicList:Ljava/util/List;

    return-object v0
.end method

.method public setIsNew(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/TopicSearchBean;->isNew:I

    return-void
.end method

.method public setTopicList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/TopicSearchBean;->topicList:Ljava/util/List;

    return-void
.end method
