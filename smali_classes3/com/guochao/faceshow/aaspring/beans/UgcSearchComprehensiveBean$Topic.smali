.class public Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Topic"
.end annotation


# instance fields
.field private partakeTimes:Ljava/lang/String;

.field private topicId:Ljava/lang/String;

.field private topicName:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPartakeTimes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;->partakeTimes:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;->topicId:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;->topicName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;->type:I

    return v0
.end method

.method public setPartakeTimes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;->partakeTimes:Ljava/lang/String;

    return-void
.end method

.method public setTopicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;->topicId:Ljava/lang/String;

    return-void
.end method

.method public setTopicName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;->topicName:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;->type:I

    return-void
.end method
