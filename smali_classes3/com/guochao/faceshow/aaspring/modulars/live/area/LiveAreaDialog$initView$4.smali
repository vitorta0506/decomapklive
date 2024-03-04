.class public final Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog$initView$4;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J,\u0010\u0008\u001a\u00020\u00072\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0005H\u0016J\u001c\u0010\u000b\u001a\u00020\u00072\u0012\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\tH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog$initView$4",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;",
        "data",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
        "",
        "onResponse",
        "Lg7/a;",
        "exp",
        "onFailure",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog$initView$4;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog$initView$4;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog$initView$4;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;->getList()Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;->getFragments()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$Companion;

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$Companion;->getInstance(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;)Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;->getTitles()Ljava/util/List;

    move-result-object v1

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;->name:Ljava/lang/String;

    const-string v2, "it.name"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogLiveAreaBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/DialogLiveAreaBinding;->viewPager:Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog$initView$4$onResponse$1$2;

    invoke-direct {v1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog$initView$4$onResponse$1$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 9
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogLiveAreaBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/DialogLiveAreaBinding;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogLiveAreaBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/DialogLiveAreaBinding;->viewPager:Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    :cond_1
    return-void
.end method
