.class public abstract Lcom/guochao/faceshow/aaspring/manager/im/b$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/manager/im/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Lcom/tencent/imsdk/v2/V2TIMConversationResult;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;"
        }
    .end annotation
.end field

.field b:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$o;->a:Ljava/util/List;

    .line 3
    iput p2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$o;->b:I

    return-void
.end method


# virtual methods
.method public abstract a(JLjava/util/List;ZI)V
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;ZI)V"
        }
    .end annotation
.end method

.method public b(Lcom/tencent/imsdk/v2/V2TIMConversationResult;)V
    .locals 10

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversationResult;->getNextSeq()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$o;->a:Ljava/util/List;

    if-nez v3, :cond_1

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$o;->a:Ljava/util/List;

    :cond_1
    if-eqz p1, :cond_7

    .line 4
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversationResult;->getConversationList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 5
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversationResult;->getConversationList()Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 7
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/imsdk/v2/V2TIMConversation;

    .line 9
    invoke-virtual {v5}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getGroupID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 10
    invoke-virtual {v5}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getGroupID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/guochao/faceshow/utils/TXIMUtils;->quitGroup(Ljava/lang/String;)V

    .line 11
    :cond_3
    invoke-virtual {v5}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 12
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {v5}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lfb/a;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 14
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {v5}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getType()I

    move-result v5

    if-eq v5, v0, :cond_2

    .line 16
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$o;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    if-nez p1, :cond_8

    goto :goto_2

    .line 18
    :cond_8
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversationResult;->getNextSeq()J

    move-result-wide v1

    :goto_2
    move-wide v5, v1

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$o;->a:Ljava/util/List;

    iget v9, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$o;->b:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/guochao/faceshow/aaspring/manager/im/b$o;->a(JLjava/util/List;ZI)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 6

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$o;->a:Ljava/util/List;

    iget v5, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$o;->b:I

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/manager/im/b$o;->a(JLjava/util/List;ZI)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMConversationResult;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/b$o;->b(Lcom/tencent/imsdk/v2/V2TIMConversationResult;)V

    return-void
.end method
