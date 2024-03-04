.class public final Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 &2\u00020\u0001:\u0001&B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u0012\u0010\u0016\u001a\u00020\u00102\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u0010\u0019\u001a\u00020\u00102\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\u0010\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0016\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u001a\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020$2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0002J\u0016\u0010%\u001a\u00020\u00102\u0006\u0010#\u001a\u00020$2\u0006\u0010 \u001a\u00020!R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\n\u0010\u0002\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "growTaskBean",
        "Lcom/guochao/faceshow/signin/bean/GrowTaskBean;",
        "isGiftBag",
        "",
        "isLastTask",
        "viewBinding",
        "Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;)V",
        "dismissAllowingStateLoss",
        "",
        "initView",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "refreshData",
        "signinBean",
        "Lcom/guochao/faceshow/signin/bean/SigninResponse;",
        "refreshSignTip",
        "setImageResource",
        "imageView",
        "Landroid/widget/ImageView;",
        "rewardBean",
        "Lcom/guochao/faceshow/signin/bean/RewardList;",
        "setNumberText",
        "textView",
        "Landroid/widget/TextView;",
        "setTextName",
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
.field public static final Companion:Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private growTaskBean:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isGiftBag:Z

.field private isLastTask:Z

.field public viewBinding:Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->Companion:Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->initView$lambda-1(Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->initView$lambda-0(Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$refreshData(Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;Lcom/guochao/faceshow/signin/bean/SigninResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->refreshData(Lcom/guochao/faceshow/signin/bean/SigninResponse;)V

    return-void
.end method

.method public static final synthetic access$setGrowTaskBean$p(Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->growTaskBean:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-1(Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method private final refreshData(Lcom/guochao/faceshow/signin/bean/SigninResponse;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/SigninResponse;->getLuckInfo()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/signin/bean/RewardList;

    .line 3
    invoke-virtual {v4}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeType()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_5

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/SigninResponse;->getNewUser()Lcom/guochao/faceshow/signin/bean/NewUser;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/guochao/faceshow/signin/bean/NewUser;->getCharmValues()I

    move-result v5

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeNum()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/signin/bean/RewardList;->setPrizeNum(Ljava/lang/Integer;)V

    .line 5
    :cond_5
    :goto_3
    invoke-virtual {v4}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeType()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/SigninResponse;->getNewUser()Lcom/guochao/faceshow/signin/bean/NewUser;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/guochao/faceshow/signin/bean/NewUser;->getRewardDiamond()I

    move-result v5

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v4}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeNum()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    :goto_5
    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/signin/bean/RewardList;->setPrizeNum(Ljava/lang/Integer;)V

    goto :goto_0

    .line 7
    :cond_9
    iget-object p1, p0, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->growTaskBean:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getPrizeVoList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    const-string v3, "null cannot be cast to non-null type android.widget.ImageView"

    const-string v4, "null cannot be cast to non-null type android.widget.TextView"

    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup"

    if-eq p1, v0, :cond_f

    const/4 v6, 0x2

    if-eq p1, v6, :cond_e

    const/4 v7, 0x3

    if-eq p1, v7, :cond_d

    const/4 v8, 0x4

    if-eq p1, v8, :cond_c

    goto/16 :goto_6

    .line 9
    :cond_c
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;->signinFourResultLay:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/TextView;

    .line 11
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-direct {p0, v8, v9}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setNumberText(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 12
    invoke-virtual {v8}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/TextView;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v8, v9}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setTextName(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/ImageView;

    .line 14
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v8, v9}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/TextView;

    .line 16
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-direct {p0, v8, v9}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setNumberText(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 17
    invoke-virtual {v8}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/TextView;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v8, v9}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setTextName(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/ImageView;

    .line 19
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v8, v9}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/TextView;

    .line 21
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-direct {p0, v8, v9}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setNumberText(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/widget/ImageView;

    .line 23
    invoke-virtual {v8}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/TextView;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v8, v10}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setTextName(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 24
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v9, v6}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/TextView;

    .line 26
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-direct {p0, v6, v8}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setNumberText(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    .line 28
    invoke-virtual {v6}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setTextName(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 29
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    goto/16 :goto_6

    .line 30
    :cond_d
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;->signinThreeResultLay:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    .line 31
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/TextView;

    .line 32
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-direct {p0, v7, v8}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setNumberText(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 33
    invoke-virtual {v7}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/TextView;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v7, v8}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setTextName(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 34
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/ImageView;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v7, v8}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/TextView;

    .line 36
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-direct {p0, v7, v8}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setNumberText(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 37
    invoke-virtual {v7}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/TextView;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v7, v8}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setTextName(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/ImageView;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v7, v8}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 39
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 40
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-direct {p0, v0, v7}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setNumberText(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 41
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v0, v4}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setTextName(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 42
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    goto/16 :goto_6

    .line 43
    :cond_e
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;->signinTwoResultLay:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    .line 44
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/TextView;

    .line 45
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-direct {p0, v6, v7}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setNumberText(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 46
    invoke-virtual {v6}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/TextView;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v6, v7}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setTextName(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 47
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/ImageView;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v6, v7}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/TextView;

    .line 49
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-direct {p0, v6, v7}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setNumberText(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 50
    invoke-virtual {v6}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/TextView;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v6, v4}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setTextName(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    goto :goto_6

    .line 52
    :cond_f
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;->signinTwoResultLay:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    .line 53
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/TextView;

    .line 54
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-direct {p0, v6, v7}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setNumberText(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 55
    invoke-virtual {v6}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/TextView;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v6, v4}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setTextName(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 56
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/ImageView;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {p0, v4, v1}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method private final refreshSignTip(Lcom/guochao/faceshow/signin/bean/SigninResponse;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/SigninResponse;->getLuckInfo()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz p1, :cond_a

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x4

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/signin/bean/RewardList;

    .line 3
    invoke-virtual {v5}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeAttribute()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_2

    if-lt v4, v1, :cond_2

    const/4 v4, 0x3

    .line 4
    :cond_2
    :goto_1
    invoke-virtual {v5}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeAttribute()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_6

    invoke-virtual {v5}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeType()Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-lt v6, v1, :cond_6

    invoke-virtual {v5}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeType()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_5
    const/4 v6, 0x6

    if-gt v7, v6, :cond_6

    if-lt v4, v2, :cond_6

    const/4 v4, 0x2

    .line 5
    :cond_6
    :goto_3
    invoke-virtual {v5}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeAttribute()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_0

    invoke-virtual {v5}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeType()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_0

    if-lt v4, v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_9
    move v1, v4

    :cond_a
    if-eq v1, v3, :cond_d

    if-eq v1, v0, :cond_c

    if-eq v1, v2, :cond_b

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;->tvSignedTip:Landroid/widget/TextView;

    sget v0, Lcom/guochao/faceshow/signin/R$string;->signin_result_tip_1:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;->tvSignedTip:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 8
    :cond_b
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;->tvSignedTip:Landroid/widget/TextView;

    sget v0, Lcom/guochao/faceshow/signin/R$string;->signin_result_tip_2:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 9
    :cond_c
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;->tvSignedTip:Landroid/widget/TextView;

    sget v0, Lcom/guochao/faceshow/signin/R$string;->signin_result_tip_1:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 10
    :cond_d
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;->tvSignedTip:Landroid/widget/TextView;

    sget v0, Lcom/guochao/faceshow/signin/R$string;->signin_result_tip:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method

.method private final setNumberText(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V
    .locals 7

    if-eqz p2, :cond_11

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeUseDay()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :goto_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeAttribute()Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x78

    if-nez v2, :cond_1

    goto/16 :goto_9

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_f

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeType()Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    if-nez v2, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeNum()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_4
    :goto_1
    const/4 v4, 0x4

    const/4 v5, 0x0

    if-nez v2, :cond_5

    goto :goto_3

    .line 6
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_7

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_6

    sget v2, Lcom/guochao/faceshow/signin/R$string;->f_dress_day:I

    goto :goto_2

    :cond_6
    sget v2, Lcom/guochao/faceshow/signin/R$string;->f_dress_days:I

    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_7
    :goto_3
    const/4 v4, 0x5

    if-nez v2, :cond_8

    goto :goto_5

    .line 8
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_a

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_9

    sget v2, Lcom/guochao/faceshow/signin/R$string;->f_dress_day:I

    goto :goto_4

    :cond_9
    sget v2, Lcom/guochao/faceshow/signin/R$string;->f_dress_days:I

    :goto_4
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_a
    :goto_5
    const/4 v4, 0x6

    if-nez v2, :cond_b

    goto :goto_7

    .line 10
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_d

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_c

    sget v2, Lcom/guochao/faceshow/signin/R$string;->f_dress_day:I

    goto :goto_6

    :cond_c
    sget v2, Lcom/guochao/faceshow/signin/R$string;->f_dress_days:I

    :goto_6
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 12
    :cond_d
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeNum()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    return-void

    .line 13
    :cond_f
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeNum()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    return-void
.end method

.method public static final showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;ZLjava/lang/Boolean;)Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/guochao/faceshow/signin/bean/GrowTaskBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->Companion:Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;ZLjava/lang/Boolean;)Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/signin/bean/SigninResponse;)Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/guochao/faceshow/signin/bean/SigninResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->Companion:Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/signin/bean/SigninResponse;)Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dismissAllowingStateLoss()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->isLastTask:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->Companion:Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;

    iget-object v2, p0, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->growTaskBean:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;ZLjava/lang/Boolean;)Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;

    :cond_0
    return-void
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->viewBinding:Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
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
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ru"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "it"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;->tvTitle:Landroid/widget/TextView;

    const/4 p2, 0x2

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const-string v0, "SigninBean"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    if-nez p1, :cond_3

    :cond_2
    move-object p1, p2

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "GrowTaskBean"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    if-nez v0, :cond_5

    :cond_4
    move-object v0, p2

    :cond_5
    iput-object v0, p0, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->growTaskBean:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-string v2, "isLastTask"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->isLastTask:Z

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v2, "isGiftBag"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->isGiftBag:Z

    if-nez p1, :cond_8

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->growTaskBean:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    if-nez v0, :cond_8

    return-void

    .line 8
    :cond_8
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;->ivClose:Landroid/widget/ImageView;

    new-instance v2, Lcom/guochao/faceshow/signin/dialog/q;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/signin/dialog/q;-><init>(Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;->tvIKnow:Landroid/widget/TextView;

    new-instance v2, Lcom/guochao/faceshow/signin/dialog/p;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/signin/dialog/p;-><init>(Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_9

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;->primaryTitle:Landroid/widget/TextView;

    sget v0, Lcom/guochao/faceshow/signin/R$string;->signin_perday_primary_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->refreshSignTip(Lcom/guochao/faceshow/signin/bean/SigninResponse;)V

    goto :goto_3

    .line 12
    :cond_9
    iget-boolean v0, p0, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->isGiftBag:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_a

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;->primaryTitle:Landroid/widget/TextView;

    sget v1, Lcom/guochao/faceshow/signin/R$string;->signin_grow_gift_bag:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;->tvSignedTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$initView$3;

    invoke-direct {v6, p0, p1, p2}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$initView$3;-><init>(Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;Lcom/guochao/faceshow/signin/bean/SigninResponse;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 16
    :cond_a
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;->primaryTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;->tvSignedTip:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object p2, p0, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->growTaskBean:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    const/4 v0, 0x1

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskType()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    :goto_2
    if-eqz v1, :cond_d

    .line 19
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;->primaryTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    :cond_d
    :goto_3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->refreshData(Lcom/guochao/faceshow/signin/bean/SigninResponse;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    .line 4
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_2
    return-object p1
.end method

.method public final setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V
    .locals 3
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/signin/bean/RewardList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeAttribute()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 2
    sget v0, Lcom/guochao/faceshow/signin/R$mipmap;->gift_clip_light:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 5
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 6
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4

    .line 8
    sget p2, Lcom/guochao/faceshow/signin/R$mipmap;->icon_signin_fifth:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_4
    :goto_2
    const/4 v1, 0x1

    if-nez v0, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 10
    sget p2, Lcom/guochao/faceshow/signin/R$mipmap;->icon_signin_first:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_6
    :goto_3
    const/4 v1, 0x2

    if-nez v0, :cond_7

    goto :goto_4

    .line 11
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 12
    sget p2, Lcom/guochao/faceshow/signin/R$mipmap;->icon_signin_shuijing:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 13
    :cond_8
    :goto_4
    invoke-static {p1}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getRewardImg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    :goto_5
    return-void
.end method

.method public final setTextName(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V
    .locals 3
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/signin/bean/RewardList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeAttribute()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_9

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeType()Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x3

    if-nez p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 4
    sget p2, Lcom/guochao/faceshow/signin/R$string;->signin_task_gift_chips:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    :goto_0
    const/4 v0, 0x4

    if-nez p2, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 6
    sget p2, Lcom/guochao/faceshow/signin/R$string;->signin_task_touxiangkuang_chips:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    :goto_1
    const/4 v0, 0x5

    if-nez p2, :cond_5

    goto :goto_2

    .line 7
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 8
    sget p2, Lcom/guochao/faceshow/signin/R$string;->signin_task_gongliao_chips:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v0, 0x6

    if-nez p2, :cond_7

    goto :goto_3

    .line 9
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_8

    .line 10
    sget p2, Lcom/guochao/faceshow/signin/R$string;->signin_task_zuojia_chips:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_3
    return-void

    .line 11
    :cond_9
    :goto_4
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_5

    .line 12
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_b

    .line 13
    sget p2, Lcom/guochao/faceshow/signin/R$string;->signin_perday_result_fifth:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_b
    :goto_5
    const/4 v1, 0x1

    if-nez v0, :cond_c

    goto :goto_6

    .line 14
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_d

    .line 15
    sget p2, Lcom/guochao/faceshow/signin/R$string;->signin_reward_diamond:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_d
    :goto_6
    const/4 v1, 0x2

    if-nez v0, :cond_e

    goto :goto_7

    .line 16
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_f

    .line 17
    sget p2, Lcom/guochao/faceshow/signin/R$string;->recharge_crystal:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 18
    :cond_f
    :goto_7
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getRewardName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->viewBinding:Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;

    return-void
.end method
