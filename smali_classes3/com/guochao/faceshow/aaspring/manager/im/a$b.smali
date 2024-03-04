.class Lcom/guochao/faceshow/aaspring/manager/im/a$b;
.super Lcom/tencent/imsdk/v2/V2TIMConversationListener;
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$b;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMConversationListener;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMConversation;

    .line 4
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfb/a;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public onConversationChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationListener;->onConversationChanged(Ljava/util/List;)V

    const-string v0, "24HourMessage"

    const-string v1, "onConversationChanged()"

    .line 2
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/manager/im/a$b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->onRefreshConversations(Ljava/util/List;Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$b;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/a;->v(Ljava/util/List;)V

    return-void
.end method

.method public onNewConversation(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationListener;->onNewConversation(Ljava/util/List;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/manager/im/a$b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->onRefreshConversations(Ljava/util/List;Z)V

    return-void
.end method
