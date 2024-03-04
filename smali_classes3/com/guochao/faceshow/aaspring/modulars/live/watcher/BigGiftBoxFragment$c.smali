.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->showGiftUserList(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mGrabResultView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mViewShowUserList:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mFailTipsTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mBackButton:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;->getRecords()Ljava/util/List;

    move-result-object p2

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;->getStatus()I

    move-result v0

    :goto_1
    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;I)I

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getBoxType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->ivBoxOpen:Landroid/widget/ImageView;

    const v0, 0x7f0f020c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->ivBoxOpen:Landroid/widget/ImageView;

    const v0, 0x7f0f020b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->ivBoxOpen:Landroid/widget/ImageView;

    const v0, 0x7f0f01b6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;

    invoke-direct {v1, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->onFailure(Lg7/a;)V

    :cond_4
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->emptyUsers:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTipsTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mViewShowUserList:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mFailTipsTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mBackButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;->a(Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
