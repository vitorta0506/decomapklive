.class public final Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;
.source "SourceFile"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    name = "\u4efb\u52a1\u4e2d\u5fc3"
    path = "/lib_sign_in/UserSigninCenterActivity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 I2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001IB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u00104\u001a\u00020\u0008H\u0002J\u0018\u00105\u001a\u00020\u001d2\u0006\u00106\u001a\u00020#2\u0006\u00107\u001a\u00020#H\u0002J\u0010\u00108\u001a\u00020\u00082\u0006\u00109\u001a\u00020\u0007H\u0002J\u0008\u0010:\u001a\u00020\u0008H\u0002J\u0012\u0010;\u001a\u00020\u00082\u0008\u0010<\u001a\u0004\u0018\u00010=H\u0016J\u0012\u0010>\u001a\u00020\u00082\u0008\u0010?\u001a\u0004\u0018\u00010\u0002H\u0016J\u0006\u0010@\u001a\u00020\u0008J \u0010A\u001a\u00020\u00082\u0006\u0010B\u001a\u00020C2\u0006\u00107\u001a\u00020#2\u0006\u0010D\u001a\u00020\u001dH\u0002J\u0010\u0010E\u001a\u00020\u00082\u0008\u0010F\u001a\u0004\u0018\u00010GJ\u0008\u0010H\u001a\u00020\u0007H\u0016R(\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R$\u0010(\u001a\u00020)8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008*\u0010\u0004\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001b\u0010/\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u00103\u001a\u0004\u00080\u00101\u00a8\u0006J"
    }
    d2 = {
        "Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;",
        "()V",
        "callBack",
        "Lkotlin/Function1;",
        "",
        "",
        "getCallBack",
        "()Lkotlin/jvm/functions/Function1;",
        "setCallBack",
        "(Lkotlin/jvm/functions/Function1;)V",
        "fragments",
        "",
        "Landroidx/fragment/app/Fragment;",
        "getFragments",
        "()Ljava/util/List;",
        "isTodaySigned",
        "()Z",
        "setTodaySigned",
        "(Z)V",
        "signList",
        "Lcom/guochao/faceshow/signin/bean/SigninBean;",
        "getSignList",
        "()Lcom/guochao/faceshow/signin/bean/SigninBean;",
        "setSignList",
        "(Lcom/guochao/faceshow/signin/bean/SigninBean;)V",
        "signedCount",
        "",
        "getSignedCount",
        "()I",
        "setSignedCount",
        "(I)V",
        "tag",
        "",
        "getTag",
        "()Ljava/lang/String;",
        "setTag",
        "(Ljava/lang/String;)V",
        "viewBinding",
        "Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "checkActivityTask",
        "getFirstCharIndex",
        "content",
        "keyWords",
        "initFragment",
        "it",
        "initRecyclerView",
        "initView",
        "savedInstanceSate",
        "Landroid/os/Bundle;",
        "onModelUpdate",
        "model",
        "resetSingleFragment",
        "setSpannerString",
        "textView",
        "Landroid/widget/TextView;",
        "color",
        "updateSigninSuccess",
        "data",
        "Lcom/guochao/faceshow/signin/bean/SigninResponse;",
        "useBlackTextStatusBar",
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
.field public static final Companion:Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private callBack:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

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

.field private isTodaySigned:Z

.field private signList:Lcom/guochao/faceshow/signin/bean/SigninBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private signedCount:I

.field private tag:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->Companion:Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->viewModel$delegate:Lkotlin/Lazy;

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->signedCount:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->fragments:Ljava/util/List;

    return-void
.end method

.method private final checkActivityTask()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const-string v1, "activity_task"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->fragments:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 4
    instance-of v3, v3, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    move v2, v4

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v0, v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setCurrentItem(I)V

    :cond_4
    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->initView$lambda-4$lambda-3(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->initView$lambda-1(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->initView$lambda-4(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final getFirstCharIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method public static synthetic i0(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Lcom/guochao/faceshow/signin/bean/SigninBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->initView$lambda-2(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Lcom/guochao/faceshow/signin/bean/SigninBean;)V

    return-void
.end method

.method private final initFragment(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->fragments:Ljava/util/List;

    sget-object v0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->Companion:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$Companion;->getInstance(I)Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->fragments:Ljava/util/List;

    sget-object v0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->Companion:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$Companion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$Companion;->getInstance(I)Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->fragments:Ljava/util/List;

    sget-object v0, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;->Companion:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$Companion;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$Companion;->getInstance(I)Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final initRecyclerView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initRecyclerView$1;-><init>(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final initView$lambda-1(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;->Companion:Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity$Companion;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity$Companion;->start(Landroid/content/Context;)V

    return-void
.end method

.method private static final initView$lambda-2(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Lcom/guochao/faceshow/signin/bean/SigninBean;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/SigninBean;->getDaySign()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->signedCount:I

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/SigninBean;->getDayFlag()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->isTodaySigned:Z

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->signList:Lcom/guochao/faceshow/signin/bean/SigninBean;

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->initRecyclerView()V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->showDialogToggle:Landroid/widget/ImageView;

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v2

    const-string v3, "SignInIgnore"

    invoke-static {v2, v3, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v1

    .line 7
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->tvSignedCount:Landroid/widget/TextView;

    .line 9
    sget v2, Lcom/guochao/faceshow/signin/R$string;->signin_perday_signed_tip:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    iget v3, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->signedCount:I

    if-gez v3, :cond_3

    const-string v3, "0"

    goto :goto_3

    :cond_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    aput-object v3, v1, v0

    .line 11
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->tvSignedCount:Landroid/widget/TextView;

    const-string/jumbo v0, "viewBinding.tvSignedCount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->signedCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    sget v1, Lcom/guochao/faceshow/signin/R$color;->signin_count_days:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 15
    invoke-direct {p0, p1, v0, v1}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V

    return-void
.end method

.method private static final initView$lambda-4(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Ljava/lang/Boolean;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->initFragment(Z)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    .line 3
    sget v3, Lcom/guochao/faceshow/signin/R$string;->signin_user_center_stronger:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    .line 4
    sget v1, Lcom/guochao/faceshow/signin/R$string;->signin_user_center_everyday:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 5
    sget v0, Lcom/guochao/faceshow/signin/R$string;->signin_user_center_activity:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/String;

    .line 6
    sget v2, Lcom/guochao/faceshow/signin/R$string;->signin_user_center_everyday:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 7
    sget v1, Lcom/guochao/faceshow/signin/R$string;->signin_user_center_activity:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initView$5$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initView$5$1;-><init>(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;[Ljava/lang/String;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->showDialogToggle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Lcom/guochao/faceshow/signin/activity/a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/signin/activity/a;-><init>(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-direct {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->checkActivityTask()V

    return-void
.end method

.method private static final initView$lambda-4$lambda-3(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->showDialogToggle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->showDialogToggle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->showDialogToggle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isSelected()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "SignInIgnore"

    .line 4
    invoke-static {p1, v0, p0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic k0(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->initView$lambda-0(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Landroid/view/View;)V

    return-void
.end method

.method private final setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-gt v4, v1, :cond_5

    if-nez v5, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    move v6, v1

    .line 3
    :goto_1
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    .line 4
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-nez v5, :cond_3

    if-nez v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v1, v2

    .line 5
    invoke-interface {v0, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    invoke-direct {p0, v0, p2}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getFirstCharIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x12

    if-ltz v0, :cond_6

    .line 9
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    .line 10
    invoke-virtual {v1, v3, v0, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 11
    :cond_6
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 12
    invoke-virtual {v1, p2, v3, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 13
    :goto_4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final start(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->Companion:Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$Companion;->start(Landroid/content/Context;)V

    return-void
.end method

.method public static final start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->Companion:Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCallBack()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->callBack:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

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

    iget-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->fragments:Ljava/util/List;

    return-object v0
.end method

.method public final getSignList()Lcom/guochao/faceshow/signin/bean/SigninBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->signList:Lcom/guochao/faceshow/signin/bean/SigninBean;

    return-object v0
.end method

.method public final getSignedCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->signedCount:I

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->viewBinding:Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewModel()Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->statusBarSpace:Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->ivLeftBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/signin/activity/c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/signin/activity/c;-><init>(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->signinRules:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/signin/activity/b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/signin/activity/b;-><init>(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/widget/TextView;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->tvTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setCustomBold([Landroid/widget/TextView;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewModel()Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;->checkGrowStatus()V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewModel()Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;->checkSignInTask()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->tag:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    new-instance v0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initView$3;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$initView$3;-><init>(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;)V

    invoke-virtual {p1, v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewModel()Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;->getSigninTaskLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/signin/activity/d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/signin/activity/d;-><init>(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewModel()Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;->getMutableGrowLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/signin/activity/e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/signin/activity/e;-><init>(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final isTodaySigned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->isTodaySigned:Z

    return v0
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
    iget-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->fragments:Ljava/util/List;

    sget-object v1, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->Companion:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$Companion;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$Companion;->getInstance(I)Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->fragments:Ljava/util/List;

    sget-object v1, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;->Companion:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$Companion;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$Companion;->getInstance(I)Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 4
    sget v1, Lcom/guochao/faceshow/signin/R$string;->signin_user_center_everyday:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 5
    sget v1, Lcom/guochao/faceshow/signin/R$string;->signin_user_center_activity:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->viewpagerSingle:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->viewpagerSingle:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$resetSingleFragment$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$resetSingleFragment$1;-><init>(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;[Ljava/lang/String;Landroidx/fragment/app/FragmentManager;)V

    .line 10
    invoke-virtual {v1, v3}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->viewpagerSingle:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 12
    invoke-direct {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->checkActivityTask()V

    return-void
.end method

.method public final setCallBack(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->callBack:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setSignList(Lcom/guochao/faceshow/signin/bean/SigninBean;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/signin/bean/SigninBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->signList:Lcom/guochao/faceshow/signin/bean/SigninBean;

    return-void
.end method

.method public final setSignedCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->signedCount:I

    return-void
.end method

.method public final setTag(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->tag:Ljava/lang/String;

    return-void
.end method

.method public final setTodaySigned(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->isTodaySigned:Z

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->viewBinding:Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    return-void
.end method

.method public final updateSigninSuccess(Lcom/guochao/faceshow/signin/bean/SigninResponse;)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/signin/bean/SigninResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->signedCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->signedCount:I

    .line 3
    iput-boolean v1, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->isTodaySigned:Z

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->tvSignedCount:Landroid/widget/TextView;

    sget v2, Lcom/guochao/faceshow/signin/R$string;->signin_perday_signed_tip:I

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->signedCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->tvSignedCount:Landroid/widget/TextView;

    const-string/jumbo v2, "viewBinding.tvSignedCount"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->signedCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/guochao/faceshow/signin/R$color;->signin_count_days:I

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->signList:Lcom/guochao/faceshow/signin/bean/SigninBean;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/SigninBean;->getDaySign()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/signin/bean/SigninBean;->setDaySign(Ljava/lang/Integer;)V

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/signin/bean/SigninBean;->setDayFlag(Ljava/lang/Integer;)V

    if-eqz p1, :cond_1

    .line 9
    sget-object v0, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->Companion:Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "supportFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/signin/bean/SigninResponse;)Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x7

    invoke-virtual {p1, v5, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_2
    return-void
.end method

.method public useBlackTextStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
