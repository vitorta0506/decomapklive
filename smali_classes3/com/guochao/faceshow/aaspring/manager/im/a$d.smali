.class Lcom/guochao/faceshow/aaspring/manager/im/a$d;
.super Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/im/a;->k(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/manager/im/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/im/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$d;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFriendInfoChanged(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;->onFriendInfoChanged(Ljava/util/List;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;

    .line 4
    invoke-virtual {v3}, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->getUserID()Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$d;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    iget-object v5, v5, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 6
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7
    invoke-virtual {v3}, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->getUserProfile()Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/ConversationUtils;->from(Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v2

    .line 8
    invoke-virtual {v6, v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setConversationInfoDetail(Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V

    const/4 v2, 0x1

    .line 9
    :cond_1
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$d;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    iget-object v5, v5, Lcom/guochao/faceshow/aaspring/manager/im/a;->o:Landroid/util/LruCache;

    invoke-virtual {v5, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/manager/im/b$n;

    if-eqz v4, :cond_2

    .line 10
    iput-boolean v0, v4, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->a:Z

    .line 11
    invoke-virtual {v3}, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->getUserProfile()Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;

    move-result-object v3

    iput-object v3, v4, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->c:Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$d;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/im/a;->g()V

    :cond_5
    return-void
.end method
