.class public final Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/signin/RechargeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/signin/viewmodel/SigninTaskViewModel;",
        ">;",
        "Lcom/guochao/faceshow/signin/RechargeListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u0000 ,2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001,B\u0005\u00a2\u0006\u0002\u0010\u0005J\u001a\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0014J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0008H\u0002J\u0008\u0010&\u001a\u00020\u001eH\u0016J\u0012\u0010\'\u001a\u00020\u001e2\u0008\u0010(\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010)\u001a\u00020\u001eH\u0016J\u0008\u0010*\u001a\u00020\u001eH\u0016J\u0008\u0010+\u001a\u00020\u001eH\u0002R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\u0005\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006-"
    }
    d2 = {
        "Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/signin/viewmodel/SigninTaskViewModel;",
        "Lcom/guochao/faceshow/signin/RechargeListener;",
        "()V",
        "mDataList",
        "",
        "Lcom/guochao/faceshow/signin/bean/GrowTaskBean;",
        "getMDataList",
        "()Ljava/util/List;",
        "type",
        "",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "viewBinding",
        "Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/signin/viewmodel/SigninTaskViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "isLastGrowReward",
        "",
        "growTaskBean",
        "onDestroyView",
        "onModelUpdate",
        "model",
        "onRecharged",
        "onResume",
        "requestNet",
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
.field public static final Companion:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/signin/bean/GrowTaskBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private type:I

.field public viewBinding:Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->Companion:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->mDataList:Ljava/util/List;

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->initView$lambda-3(Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->initView$lambda-0(Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->initView$lambda-2(Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;Landroid/view/View;)V
    .locals 6

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->Companion:Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string p0, "childFragmentManager"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$Companion;->showDialog$default(Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$Companion;Landroidx/fragment/app/FragmentManager;ILcom/guochao/faceshow/signin/bean/GrowTaskBean;ILjava/lang/Object;)Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;

    return-void
.end method

.method private static final initView$lambda-2(Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;Ljava/util/List;)V
    .locals 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->type:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {v1}, Lcom/guochao/faceshow/signin/SigninManager;->getMSigninCache()Lcom/guochao/faceshow/signin/bean/SigninCache;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/guochao/faceshow/signin/bean/SigninCache;->getGrowWatchCount()I

    move-result v1

    goto :goto_1

    :cond_1
    if-ne v1, v2, :cond_2

    .line 5
    sget-object v1, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {v1}, Lcom/guochao/faceshow/signin/SigninManager;->getMSigninCache()Lcom/guochao/faceshow/signin/bean/SigninCache;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/guochao/faceshow/signin/bean/SigninCache;->getDayWatchCount()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 6
    :goto_1
    iget v4, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->type:I

    if-nez v4, :cond_3

    .line 7
    sget-object v4, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {v4}, Lcom/guochao/faceshow/signin/SigninManager;->getMSigninCache()Lcom/guochao/faceshow/signin/bean/SigninCache;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/guochao/faceshow/signin/bean/SigninCache;->getGrowSendMsgCount()I

    move-result v4

    goto :goto_2

    :cond_3
    if-ne v4, v2, :cond_4

    .line 8
    sget-object v4, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {v4}, Lcom/guochao/faceshow/signin/SigninManager;->getMSigninCache()Lcom/guochao/faceshow/signin/bean/SigninCache;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/guochao/faceshow/signin/bean/SigninCache;->getDaySendMsgCount()I

    move-result v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 9
    :goto_2
    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getCheckMode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "app"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 10
    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskBelong()Ljava/lang/String;

    move-result-object v5

    const-string v6, "kanzhibao"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskStatus()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_8

    .line 11
    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    mul-int/lit8 v5, v5, 0x3c

    if-lt v1, v5, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->setTaskStatus(Ljava/lang/Integer;)V

    .line 12
    :cond_8
    :goto_5
    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskBelong()Ljava/lang/String;

    move-result-object v1

    const-string v5, "gongliao"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskStatus()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_c

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :goto_6
    if-lt v4, v1, :cond_b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    :cond_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_7
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->setTaskStatus(Ljava/lang/Integer;)V

    .line 14
    :cond_c
    :goto_8
    iget-object v1, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 15
    :cond_d
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 16
    :cond_e
    iget-object p1, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;

    if-eqz p1, :cond_f

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.guochao.faceshow.signin.activity.UserSigninCenterActivity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->resetSingleFragment()V

    goto :goto_9

    .line 18
    :cond_f
    iget-object p1, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;

    if-eqz p1, :cond_10

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.guochao.faceshow.signin.dialog.LiveSignCenterDialog"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->resetSingleFragment()V

    :cond_10
    :goto_9
    return-void
.end method

.method private static final initView$lambda-3(Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;)V
    .locals 8

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->Companion:Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v0, "childFragmentManager"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->isLastGrowReward(Lcom/guochao/faceshow/signin/bean/GrowTaskBean;)Z

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;->showDialog$default(Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;ZLjava/lang/Boolean;ILjava/lang/Object;)Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->requestNet()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/guochao/faceshow/signin/R$string;->signin_task_reward_sent:I

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    return-void
.end method

.method private final isLastGrowReward(Lcom/guochao/faceshow/signin/bean/GrowTaskBean;)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->type:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 3
    iget-object v3, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->mDataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    .line 4
    invoke-virtual {v3}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskId()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {v3}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskStatus()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private final requestNet()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->getViewModel()Lcom/guochao/faceshow/signin/viewmodel/SigninTaskViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/viewmodel/SigninTaskViewModel;->getDaysSignInTasks()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->getViewModel()Lcom/guochao/faceshow/signin/viewmodel/SigninTaskViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/viewmodel/SigninTaskViewModel;->getGrowTasks()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getMDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/signin/bean/GrowTaskBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->type:I

    return v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->viewBinding:Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->getViewModel()Lcom/guochao/faceshow/signin/viewmodel/SigninTaskViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/signin/viewmodel/SigninTaskViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/signin/viewmodel/SigninTaskViewModel;

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    sget-object p1, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/signin/SigninManager;->registerRechargeListener(Lcom/guochao/faceshow/signin/RechargeListener;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string/jumbo v0, "type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    iput p2, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->type:I

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/SigninManager;->checkDayTask()V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;->headerLay:Landroid/widget/LinearLayout;

    iget p2, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->type:I

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;->headerLay:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/guochao/faceshow/signin/fragment/g;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/signin/fragment/g;-><init>(Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$initView$2;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$initView$2;-><init>(Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->getViewModel()Lcom/guochao/faceshow/signin/viewmodel/SigninTaskViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/viewmodel/SigninTaskViewModel;->getGrowTaskList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/signin/fragment/i;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/signin/fragment/i;-><init>(Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->getViewModel()Lcom/guochao/faceshow/signin/viewmodel/SigninTaskViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/viewmodel/SigninTaskViewModel;->getGetSigninReward()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/signin/fragment/h;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/signin/fragment/h;-><init>(Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/signin/SigninManager;->unRegisterRechargeListener(Lcom/guochao/faceshow/signin/RechargeListener;)V

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

.method public onRecharged()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->requestNet()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->requestNet()V

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->type:I

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->viewBinding:Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;

    return-void
.end method
