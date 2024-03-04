.class public final Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;
.super Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 -2\u00020\u0001:\u0001-B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001f\u001a\u00020\u0006J\u0008\u0010 \u001a\u00020!H\u0016J\u000e\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020$J\u000e\u0010%\u001a\u00020\u00052\u0006\u0010#\u001a\u00020$J\u001a\u0010&\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0014J\u0012\u0010+\u001a\u00020\u00062\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0006\u0010,\u001a\u00020\u0006R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0014\u0010\u0002\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006."
    }
    d2 = {
        "Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;",
        "Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;",
        "()V",
        "callBack",
        "Lkotlin/Function1;",
        "",
        "",
        "getCallBack",
        "()Lkotlin/jvm/functions/Function1;",
        "setCallBack",
        "(Lkotlin/jvm/functions/Function1;)V",
        "isSetTime",
        "",
        "timeStr",
        "getTimeStr",
        "()Ljava/lang/String;",
        "setTimeStr",
        "(Ljava/lang/String;)V",
        "viewBinding",
        "Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;)V",
        "viewModel",
        "Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;",
        "getViewModel",
        "()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "checkPostData",
        "createCenterDialog",
        "Landroidx/appcompat/app/AppCompatDialog;",
        "getMinuteStr",
        "time",
        "",
        "getZeroTime",
        "initView",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "setTime",
        "Companion",
        "component_mvp_release"
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
.field public static final Companion:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private callBack:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isSetTime:Z

.field private timeStr:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->Companion:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    const-class v1, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 v0, 0x0

    invoke-static {p0, v1, v2, v0}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->initView$lambda-0(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Lcom/guochao/component/mvp/model/UserModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->initView$lambda-6(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Lcom/guochao/component/mvp/model/UserModel;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->initView$lambda-2(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->initView$lambda-4(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;III)V

    return-void
.end method

.method public static synthetic T1(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->initView$lambda-5(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U1(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Lkotlin/jvm/internal/Ref$IntRef;III)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->initView$lambda-3(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Lkotlin/jvm/internal/Ref$IntRef;III)V

    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;)Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    return-object v0
.end method

.method private static final initView$lambda-0(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-2(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timePickerLL:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timeLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->feeET:Landroid/widget/EditText;

    invoke-static {p1, p0}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoardNow(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private static final initView$lambda-3(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Lkotlin/jvm/internal/Ref$IntRef;III)V
    .locals 2

    const-string v0, "$y"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$d"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$h"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v0, 0x17

    const/4 v1, 0x1

    if-ne p5, p0, :cond_0

    iget p0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p0, v1

    if-ne p6, p0, :cond_0

    iget p0, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p0, v1

    if-ne p7, p0, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timeWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->getHourWheelView()Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    move-result-object p0

    iget p1, p4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;->K(III)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timeWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->getHourWheelView()Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;->K(III)V

    .line 4
    :goto_0
    invoke-virtual {p3}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->setTime()V

    return-void
.end method

.method private static final initView$lambda-4(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;III)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->setTime()V

    return-void
.end method

.method private static final initView$lambda-5(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Landroid/view/View;)V
    .locals 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "mvpLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    :goto_0
    new-instance v0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;

    const/4 v1, 0x7

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->feeET:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->timeStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    move-result-object p1

    new-instance v1, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$7$1;-><init>(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v0, v1}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->setWorldTop(Lcom/guochao/component/mvp/model/GetInterestsRequestModel;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final initView$lambda-6(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Lcom/guochao/component/mvp/model/UserModel;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/UserModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne v2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->nameTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/UserModel;->getNickName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->avatarIV:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/UserModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/bumptech/glide/request/h;->y0()Lcom/bumptech/glide/request/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->y0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 6
    sget v0, Lcom/guochao/component/mvp/R$drawable;->ic_mvp_setting_def_header:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    .line 7
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->avatarIV:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto :goto_3

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->avatarIV:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->avatarIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->f(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->nameTV:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->nameTV:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->avatarIV:Landroid/widget/ImageView;

    sget p1, Lcom/guochao/component/mvp/R$drawable;->ic_mvp_setting_def_header:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    return-void
.end method

.method public static final newInstance(Ljava/lang/Integer;)Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;
    .locals 1
    .param p0    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->Companion:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$Companion;->newInstance(Ljava/lang/Integer;)Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkPostData()V
    .locals 4

    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->okTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->feeET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->isSetTime:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;

    move-result-object v0

    return-object v0
.end method

.method public final getCallBack()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->callBack:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getMinuteStr(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const-string p1, "00"

    goto :goto_0

    :cond_0
    const-string p1, "30"

    :goto_0
    return-object p1
.end method

.method public final getTimeStr()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->timeStr:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->viewBinding:Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getZeroTime(I)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 v0, 0x9

    if-le p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->closeIV:Landroid/widget/ImageView;

    const-string p1, "viewBinding.closeIV"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/guochao/component/mvp/fragment/d;

    invoke-direct {v3, p0}, Lcom/guochao/component/mvp/fragment/d;-><init>(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->feeET:Landroid/widget/EditText;

    const-string p2, "viewBinding.feeET"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p2, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$$inlined$addTextChangedListener$default$1;

    invoke-direct {p2, p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$$inlined$addTextChangedListener$default$1;-><init>(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;)V

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timeET:Landroid/widget/TextView;

    const-string p1, "viewBinding.timeET"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/guochao/component/mvp/fragment/e;

    invoke-direct {v3, p0}, Lcom/guochao/component/mvp/fragment/e;-><init>(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;)V

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 8
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 9
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 10
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 11
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 12
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->dateWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    .line 13
    invoke-static {p2}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->dayOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    move-result-object v0

    .line 14
    invoke-static {p2}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->yearOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    move-result-object v4

    .line 15
    invoke-static {p2}, Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;->dayOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    move-result-object p2

    .line 16
    invoke-virtual {p1, v0, v4, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->x(Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;)V

    .line 17
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->dateWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    new-instance p2, Lcom/guochao/component/mvp/fragment/h;

    move-object v0, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/guochao/component/mvp/fragment/h;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {p1, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->setOnDateSelectedListener(Li1/c;)V

    .line 18
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timeWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    new-instance p2, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$5;

    invoke-direct {p2, p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$5;-><init>(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;)V

    invoke-virtual {p1, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->setTimeFormatter(Li1/i;)V

    .line 19
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timeWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->getHourWheelView()Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    .line 20
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timeWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    new-instance p2, Lcom/guochao/component/mvp/fragment/i;

    invoke-direct {p2, p0}, Lcom/guochao/component/mvp/fragment/i;-><init>(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;)V

    invoke-virtual {p1, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->setOnTimeSelectedListener(Li1/h;)V

    .line 21
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->okTV:Landroid/widget/TextView;

    const-string p1, "viewBinding.okTV"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/guochao/component/mvp/fragment/f;

    invoke-direct {v3, p0}, Lcom/guochao/component/mvp/fragment/f;-><init>(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 22
    invoke-direct {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->getUserModel()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/guochao/component/mvp/fragment/g;

    invoke-direct {v0, p0}, Lcom/guochao/component/mvp/fragment/g;-><init>(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

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
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->callBack:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setTime()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timeET:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3
    iget-object v1, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timeWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {v1}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->getSelectedMinute()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const-string v1, "00"

    goto :goto_0

    :cond_0
    const-string v1, "30"

    .line 4
    :goto_0
    iget-object v2, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timeET:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->dateWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v4}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->getSelectedYear()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->dateWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v5}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->getSelectedMonth()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getZeroTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v5, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->dateWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v5}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->getSelectedDay()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getZeroTime(I)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    iget-object v6, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timeWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {v6}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->getSelectedHour()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getZeroTime(I)Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    sget v2, Lcom/guochao/component/mvp/R$string;->mvp_set_top_america_time:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.mvp_set_top_america_time)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 11
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-string v8, "#a1a1a1"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v8, 0x21

    const/4 v9, 0x0

    .line 12
    invoke-virtual {v3, v7, v9, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->dateWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v7}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->getSelectedYear()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->dateWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v7}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->getSelectedMonth()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getZeroTime(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    iget-object v4, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->dateWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v4}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->getSelectedDay()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getZeroTime(I)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    iget-object v4, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timeWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {v4}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->getSelectedHour()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getZeroTime(I)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":00"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "America/New_York"

    .line 18
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc7/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->timeStr:Ljava/lang/String;

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 21
    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timeTV:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->isSetTime:Z

    .line 23
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->checkPostData()V

    return-void
.end method

.method public final setTimeStr(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->timeStr:Ljava/lang/String;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->viewBinding:Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    return-void
.end method
