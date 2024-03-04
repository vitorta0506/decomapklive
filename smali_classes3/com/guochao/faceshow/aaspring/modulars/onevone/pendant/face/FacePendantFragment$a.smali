.class Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Landroid/util/SparseArray<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;>;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Landroid/util/SparseArray;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;>;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;>;>;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;Ljava/util/List;)Ljava/util/List;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a$a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p2, v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a;->onResponse(Landroid/util/SparseArray;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
