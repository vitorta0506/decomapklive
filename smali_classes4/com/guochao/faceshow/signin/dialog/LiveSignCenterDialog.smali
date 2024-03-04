.class public final Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \"2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\"B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u001a\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u0012\u0010\u001f\u001a\u00020\u00172\u0008\u0010 \u001a\u0004\u0018\u00010\u0002H\u0016J\u0006\u0010!\u001a\u00020\u0017R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR$\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0011\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006#"
    }
    d2 = {
        "Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;",
        "()V",
        "fragments",
        "",
        "Landroidx/fragment/app/Fragment;",
        "getFragments",
        "()Ljava/util/List;",
        "viewBinding",
        "Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "initFragment",
        "",
        "it",
        "",
        "initView",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onModelUpdate",
        "model",
        "resetSingleFragment",
        "Companion",
        "lib_sign_in_release"
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
.field public static final Companion:Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->Companion:Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->viewModel$delegate:Lkotlin/Lazy;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->fragments:Ljava/util/List;

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->initView$lambda-1(Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->initView$lambda-0(Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S1(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->initView$lambda-2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T1(Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->initView$lambda-4(Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final initFragment(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->fragments:Ljava/util/List;

    sget-object v0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->Companion:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$Companion;->getInstance(I)Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->fragments:Ljava/util/List;

    sget-object v0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->Companion:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$Companion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$Companion;->getInstance(I)Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->fragments:Ljava/util/List;

    sget-object v0, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;->Companion:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$Companion;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$Companion;->getInstance(I)Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-1(Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-2(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final initView$lambda-4(Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;Ljava/lang/Boolean;)V
    .locals 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->initFragment(Z)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget v4, Lcom/guochao/faceshow/signin/R$string;->signin_user_center_stronger:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    sget v2, Lcom/guochao/faceshow/signin/R$string;->signin_user_center_everyday:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget v1, Lcom/guochao/faceshow/signin/R$string;->signin_user_center_activity:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    sget v3, Lcom/guochao/faceshow/signin/R$string;->signin_user_center_everyday:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    sget v2, Lcom/guochao/faceshow/signin/R$string;->signin_user_center_activity:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    sget v2, Lcom/guochao/faceshow/signin/R$drawable;->tab_indicator_translate:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    sget v2, Lcom/guochao/lib_base/R$color;->transparent:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setIndicatorColor(Landroid/content/res/ColorStateList;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog$initView$4$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog$initView$4$2;-><init>(Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;[Ljava/lang/String;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, v2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method public static final showDialog(Landroidx/fragment/app/FragmentActivity;)Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->Companion:Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentActivity;)Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->fragments:Ljava/util/List;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->viewBinding:Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getViewModel()Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->getViewModel()Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
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
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->bgView:Landroid/view/View;

    new-instance p2, Lcom/guochao/faceshow/signin/dialog/d;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/signin/dialog/d;-><init>(Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->ivBack:Landroid/widget/ImageView;

    new-instance p2, Lcom/guochao/faceshow/signin/dialog/c;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/signin/dialog/c;-><init>(Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    sget-object p2, Lcom/guochao/faceshow/signin/dialog/e;->a:Lcom/guochao/faceshow/signin/dialog/e;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->getViewModel()Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;->checkGrowStatus()V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->getViewModel()Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;->getMutableGrowLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/signin/dialog/f;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/signin/dialog/f;-><init>(Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onModelUpdate(Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final resetSingleFragment()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->fragments:Ljava/util/List;

    sget-object v1, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->Companion:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$Companion;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$Companion;->getInstance(I)Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->fragments:Ljava/util/List;

    sget-object v1, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;->Companion:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$Companion;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$Companion;->getInstance(I)Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 4
    sget v1, Lcom/guochao/faceshow/signin/R$string;->signin_user_center_everyday:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    sget v1, Lcom/guochao/faceshow/signin/R$string;->signin_user_center_activity:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->viewpagerSingle:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->viewpagerSingle:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog$resetSingleFragment$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog$resetSingleFragment$1;-><init>(Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;[Ljava/lang/String;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, v3}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->viewpagerSingle:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->viewBinding:Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

    return-void
.end method
