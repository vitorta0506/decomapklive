.class Lcom/guochao/faceshow/activity/MyGiftListActivity$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MyGiftListActivity;->o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/bean/MyPrizeBeanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/MyGiftListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MyGiftListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$b;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/bean/MyPrizeBeanResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/bean/MyPrizeBeanResult;
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
            "Lcom/guochao/faceshow/bean/MyPrizeBeanResult;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/bean/MyPrizeBeanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$b;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    iget v0, p1, Lcom/guochao/faceshow/bean/MyPrizeBeanResult;->totalPage:I

    invoke-static {p2, v0}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->k0(Lcom/guochao/faceshow/activity/MyGiftListActivity;I)I

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$b;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->b0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$b;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->l0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;

    move-result-object p2

    iget-object p1, p1, Lcom/guochao/faceshow/bean/MyPrizeBeanResult;->list:Ljava/util/List;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->resetData(Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$b;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->l0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;

    move-result-object p2

    iget-object p1, p1, Lcom/guochao/faceshow/bean/MyPrizeBeanResult;->list:Ljava/util/List;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->addData(Ljava/util/List;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$b;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->p0()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$b;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->l0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->getItemCount()I

    move-result p1

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-lez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$b;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->m0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$b;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->n0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$b;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->m0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$b;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->n0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/bean/MyPrizeBeanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$b;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->m0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$b;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->m0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C()V

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

    check-cast p1, Lcom/guochao/faceshow/bean/MyPrizeBeanResult;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/activity/MyGiftListActivity$b;->a(Lcom/guochao/faceshow/bean/MyPrizeBeanResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
