.class Lcom/guochao/faceshow/aaspring/manager/im/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/manager/im/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/im/b$a;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/manager/im/b$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/im/b$a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a$a;->b:Lcom/guochao/faceshow/aaspring/manager/im/b$a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/b$a$a;->b(Ljava/util/List;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a$a;->b:Lcom/guochao/faceshow/aaspring/manager/im/b$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/manager/im/b$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/manager/im/a;->p:Z

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a$a;->b:Lcom/guochao/faceshow/aaspring/manager/im/b$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/manager/im/b$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a$a;->b:Lcom/guochao/faceshow/aaspring/manager/im/b$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/manager/im/b$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/manager/im/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a$a;->b:Lcom/guochao/faceshow/aaspring/manager/im/b$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/manager/im/b$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/manager/im/a;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a$a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    const/4 v3, 0x0

    .line 8
    :goto_1
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a$a;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 9
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a$a;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a$a;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a$a;->b:Lcom/guochao/faceshow/aaspring/manager/im/b$a;

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/manager/im/b$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/manager/im/b;->u0(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v4

    .line 11
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a$a;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setTIMConversation2(Lcom/tencent/imsdk/v2/V2TIMConversation;)V

    .line 12
    invoke-virtual {v4, v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setConversationInfoDetail(Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V

    .line 13
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 14
    :cond_1
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a$a;->b:Lcom/guochao/faceshow/aaspring/manager/im/b$a;

    iget-object v5, v5, Lcom/guochao/faceshow/aaspring/manager/im/b$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iget-object v5, v5, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a$a;->b:Lcom/guochao/faceshow/aaspring/manager/im/b$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/manager/im/b$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/manager/im/a;->d:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->B0(ILjava/util/List;Z)V

    return-void
.end method
