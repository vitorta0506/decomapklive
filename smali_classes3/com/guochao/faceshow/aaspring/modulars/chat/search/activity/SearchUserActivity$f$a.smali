.class Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/manager/im/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;->b(Ljava/util/List;)V
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
        "Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;

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

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f$a;->b(Ljava/util/List;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/SearchUserHeader;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/SearchUserHeader;-><init>()V

    .line 6
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserHeader;->setUser(Z)V

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/SearchUserBottom;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBottom;-><init>()V

    .line 11
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBottom;->setUser(Z)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)Ljava/util/List;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->baseContent:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->baseContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;Z)Z

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->searchContent:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->o0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->o0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    return-void
.end method
