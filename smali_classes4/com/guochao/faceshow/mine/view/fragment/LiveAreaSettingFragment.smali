.class public final Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R$\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\n\u0010\u0002\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "mDataList",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;",
        "getMDataList",
        "()Ljava/util/List;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/LayoutRecyclerViewBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/LayoutRecyclerViewBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/LayoutRecyclerViewBinding;)V",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/databinding/LayoutRecyclerViewBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;->Companion:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;->mDataList:Ljava/util/List;

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getMDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/databinding/LayoutRecyclerViewBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutRecyclerViewBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "data"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;->countryOfStateList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;->mDataList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/LayoutRecyclerViewBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/LayoutRecyclerViewBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/LayoutRecyclerViewBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/LayoutRecyclerViewBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;-><init>(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/LayoutRecyclerViewBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/LayoutRecyclerViewBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutRecyclerViewBinding;

    return-void
.end method
