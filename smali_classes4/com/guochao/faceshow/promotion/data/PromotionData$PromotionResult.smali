.class public Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/promotion/data/PromotionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PromotionResult"
.end annotation


# instance fields
.field private fullScreenLive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;",
            ">;"
        }
    .end annotation
.end field

.field private live:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;",
            ">;"
        }
    .end annotation
.end field

.field private normalLive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;",
            ">;"
        }
    .end annotation
.end field

.field public video:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->normalLive:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->fullScreenLive:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFullScreenLive()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->live:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->fullScreenLive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->fullScreenLive:Ljava/util/List;

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->live:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 6
    iget v2, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->liveActiveType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->fullScreenLive:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->fullScreenLive:Ljava/util/List;

    return-object v0
.end method

.method public getLive()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->live:Ljava/util/List;

    return-object v0
.end method

.method public getNormalLive()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->live:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->normalLive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->normalLive:Ljava/util/List;

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->live:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 6
    iget v2, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->liveActiveType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->normalLive:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->normalLive:Ljava/util/List;

    return-object v0
.end method
