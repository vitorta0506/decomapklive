.class public Lcom/tencent/imsdk/v2/V2TIMMessageSearchResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private messageSearchResult:Lcom/tencent/imsdk/message/MessageSearchResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageSearchResultItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessageSearchResultItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchResult;->messageSearchResult:Lcom/tencent/imsdk/message/MessageSearchResult;

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchResult;->messageSearchResult:Lcom/tencent/imsdk/message/MessageSearchResult;

    invoke-virtual {v1}, Lcom/tencent/imsdk/message/MessageSearchResult;->getMessageSearchResultItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/message/MessageSearchResultItem;

    .line 4
    new-instance v3, Lcom/tencent/imsdk/v2/V2TIMMessageSearchResultItem;

    invoke-direct {v3}, Lcom/tencent/imsdk/v2/V2TIMMessageSearchResultItem;-><init>()V

    .line 5
    invoke-virtual {v3, v2}, Lcom/tencent/imsdk/v2/V2TIMMessageSearchResultItem;->setMessageSearchResultItem(Lcom/tencent/imsdk/message/MessageSearchResultItem;)V

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchResult;->messageSearchResult:Lcom/tencent/imsdk/message/MessageSearchResult;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageSearchResult;->getTotalCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setMessageSearchResult(Lcom/tencent/imsdk/message/MessageSearchResult;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchResult;->messageSearchResult:Lcom/tencent/imsdk/message/MessageSearchResult;

    return-void
.end method
