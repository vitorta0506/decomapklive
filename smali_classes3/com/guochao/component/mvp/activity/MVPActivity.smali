.class public final Lcom/guochao/component/mvp/activity/MVPActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;
.source "SourceFile"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    name = "mvp"
    path = "/component_mvp/mvp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/mvp/activity/MVPActivity$Companion;,
        Lcom/guochao/component/mvp/activity/MVPActivity$UserBean;,
        Lcom/guochao/component/mvp/activity/MVPActivity$UserVip;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity<",
        "Lcom/guochao/component/mvp/model/MVPInfoModel;",
        "Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \"2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0003\"#$B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0012\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0012\u0010\u001f\u001a\u00020\u001b2\u0008\u0010 \u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010!\u001a\u00020\u001bH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u0008j\u0008\u0012\u0004\u0012\u00020\u000c`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0010\u0010\u0004\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u0015\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006%"
    }
    d2 = {
        "Lcom/guochao/component/mvp/activity/MVPActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;",
        "Lcom/guochao/component/mvp/model/MVPInfoModel;",
        "Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;",
        "()V",
        "currentIndex",
        "",
        "mFragments",
        "Ljava/util/ArrayList;",
        "Landroidx/fragment/app/Fragment;",
        "Lkotlin/collections/ArrayList;",
        "mTabs",
        "",
        "myIndex",
        "viewBinding",
        "Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "checkGetAll",
        "",
        "initView",
        "savedInstanceSate",
        "Landroid/os/Bundle;",
        "onModelUpdate",
        "model",
        "onResume",
        "Companion",
        "UserBean",
        "UserVip",
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
.field public static final Companion:Lcom/guochao/component/mvp/activity/MVPActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FROM_BAG_BADGE:Ljava/lang/String; = "6"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FROM_BAG_CAR:Ljava/lang/String; = "4"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FROM_BAG_CHAT:Ljava/lang/String; = "5"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FROM_BAG_HEADER:Ljava/lang/String; = "3"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FROM_GIFT:Ljava/lang/String; = "0"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FROM_IM:Ljava/lang/String; = "2"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FROM_MY_MVP:Ljava/lang/String; = "1"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOAST_KEY:Ljava/lang/String; = "toast_key"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOAST_TYPE_CHARGE:Ljava/lang/String; = "charge"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOAST_TYPE_GET_BADGE:Ljava/lang/String; = "get_badge"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOAST_TYPE_GET_CAR:Ljava/lang/String; = "get_car"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOAST_TYPE_GET_CHAT:Ljava/lang/String; = "get_chat"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOAST_TYPE_GET_HEAD:Ljava/lang/String; = "get_head"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private currentIndex:I

.field private final mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private myIndex:I

.field public viewBinding:Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/mvp/activity/MVPActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/mvp/activity/MVPActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/mvp/activity/MVPActivity;->Companion:Lcom/guochao/component/mvp/activity/MVPActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/component/mvp/activity/MVPActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/guochao/component/mvp/activity/MVPActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 3
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/guochao/component/mvp/activity/MVPActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lcom/guochao/component/mvp/activity/MVPActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 4
    iput-object v1, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->mTabs:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->mFragments:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->myIndex:I

    return-void
.end method

.method public static final synthetic access$getMFragments$p(Lcom/guochao/component/mvp/activity/MVPActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->mFragments:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$setCurrentIndex$p(Lcom/guochao/component/mvp/activity/MVPActivity;I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->currentIndex:I

    return-void
.end method

.method public static synthetic d0(Lcom/guochao/component/mvp/activity/MVPActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/mvp/activity/MVPActivity;->initView$lambda-1(Lcom/guochao/component/mvp/activity/MVPActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/component/mvp/activity/MVPActivity;Lcom/guochao/component/mvp/model/MVPInfoModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/mvp/activity/MVPActivity;->initView$lambda-10(Lcom/guochao/component/mvp/activity/MVPActivity;Lcom/guochao/component/mvp/model/MVPInfoModel;)V

    return-void
.end method

.method public static synthetic g0(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/activity/MVPActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/component/mvp/activity/MVPActivity;->initView$lambda-10$lambda-9$lambda-8(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/activity/MVPActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method public static synthetic i0(Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;Landroid/view/View;IIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/guochao/component/mvp/activity/MVPActivity;->initView$lambda-12$lambda-11(Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;Landroid/view/View;IIII)V

    return-void
.end method

.method private static final initView$lambda-1(Lcom/guochao/component/mvp/activity/MVPActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final initView$lambda-10(Lcom/guochao/component/mvp/activity/MVPActivity;Lcom/guochao/component/mvp/model/MVPInfoModel;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissLoading()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewBinding()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->mvpInfoView:Lcom/guochao/component/mvp/view/MVPInfoView;

    invoke-virtual {v0, p1}, Lcom/guochao/component/mvp/view/MVPInfoView;->setData(Lcom/guochao/component/mvp/model/MVPInfoModel;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewBinding()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/guochao/component/mvp/activity/MVPActivity$UserBean;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMyMvpInfoResult()Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;->getImg()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMyMvpInfoResult()Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;->getHeadImg()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    invoke-direct {v1, v3, v4}, Lcom/guochao/component/mvp/activity/MVPActivity$UserBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v3, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 6
    iget-object v1, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->nickNameTV:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMyMvpInfoResult()Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;->getNickName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMyMvpInfoResult()Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;->getMvpLevel()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-lez v3, :cond_4

    .line 8
    sget-object v3, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v4, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_my_mvp_open_yes:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v3, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->mvpLevelIV:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v3, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->getMVPTitle:Landroid/widget/TextView;

    sget v4, Lcom/guochao/component/mvp/R$string;->mvp_this_month_is_mvp_yes:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 11
    :cond_4
    sget-object v3, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v4, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_my_mvp_open_yes:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v3, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->mvpLevelIV:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v3, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->getMVPTitle:Landroid/widget/TextView;

    sget v4, Lcom/guochao/component/mvp/R$string;->mvp_this_month_is_mvp_no:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    if-eqz p1, :cond_5

    .line 14
    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMyMvpInfoResult()Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;->getMvpLevel()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    const/4 v4, 0x1

    if-lt v3, v4, :cond_9

    .line 15
    iget-object v3, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->mvpBgIV:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v3

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMyMvpInfoResult()Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;->getMvpBackground()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_6
    move-object v4, v2

    :goto_6
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/g;

    .line 16
    iget-object v4, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->mvpBgIV:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 17
    iget-object v3, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->badgeIV:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMyMvpInfoResult()Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;->getMvpEmblem()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_7
    move-object v4, v2

    :goto_7
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/g;

    .line 18
    iget-object v4, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->badgeIV:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 19
    iget-object v3, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->mvpLevelIV:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v3

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMyMvpInfoResult()Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;->getMvpIcon()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_8
    move-object v4, v2

    :goto_8
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/g;

    .line 20
    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->mvpLevelIV:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    return-void

    .line 22
    :cond_a
    iget-object v0, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23
    iget-object v0, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_11

    .line 24
    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpRightsVoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_b

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_b
    check-cast v4, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    .line 26
    iget-object v6, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->mTabs:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MVP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;->getLevel()Ljava/lang/Integer;

    move-result-object v8

    goto :goto_a

    :cond_c
    move-object v8, v2

    :goto_a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v6, Lcom/guochao/component/mvp/fragment/MVPListFragment;->Companion:Lcom/guochao/component/mvp/fragment/MVPListFragment$Companion;

    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMyMvpInfoResult()Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;->getMvpLevel()Ljava/lang/Integer;

    move-result-object v7

    goto :goto_b

    :cond_d
    move-object v7, v2

    :goto_b
    invoke-virtual {v6, v7, v4}, Lcom/guochao/component/mvp/fragment/MVPListFragment$Companion;->newInstance(Ljava/lang/Integer;Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;)Lcom/guochao/component/mvp/fragment/MVPListFragment;

    move-result-object v6

    .line 28
    new-instance v7, Lcom/guochao/component/mvp/activity/MVPActivity$initView$6$2$1;

    invoke-direct {v7, p0}, Lcom/guochao/component/mvp/activity/MVPActivity$initView$6$2$1;-><init>(Lcom/guochao/component/mvp/activity/MVPActivity;)V

    invoke-virtual {v6, v7}, Lcom/guochao/component/mvp/fragment/MVPListFragment;->setCallBack(Lkotlin/jvm/functions/Function1;)V

    .line 29
    iget-object v7, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMyMvpInfoResult()Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;->getMvpLevel()Ljava/lang/Integer;

    move-result-object v6

    goto :goto_c

    :cond_e
    move-object v6, v2

    :goto_c
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;->getLevel()Ljava/lang/Integer;

    move-result-object v4

    goto :goto_d

    :cond_f
    move-object v4, v2

    :goto_d
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 31
    iput v3, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->myIndex:I

    :cond_10
    move v3, v5

    goto :goto_9

    .line 32
    :cond_11
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewBinding()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->viewpager:Lcom/guochao/component/mvp/view/WrapViewPager;

    .line 33
    new-instance v2, Lcom/guochao/component/mvp/adapter/ViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->mFragments:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->mTabs:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Lcom/guochao/component/mvp/adapter/ViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    .line 34
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 35
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewBinding()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->tablayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewBinding()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->viewpager:Lcom/guochao/component/mvp/view/WrapViewPager;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 36
    iget v0, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->myIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_12

    .line 37
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewBinding()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->viewpager:Lcom/guochao/component/mvp/view/WrapViewPager;

    iget v3, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->myIndex:I

    invoke-virtual {v0, v3, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_12
    if-eqz p1, :cond_14

    .line 38
    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpRightsVoList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 39
    iget v0, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->myIndex:I

    if-ne v0, v2, :cond_13

    goto :goto_e

    .line 40
    :cond_13
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget v1, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->myIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->checkGetAll()V

    .line 42
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewBinding()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object p1

    iget-object v1, p1, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->getAllTV:Landroid/widget/TextView;

    const-string p1, "viewBinding.getAllTV"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/guochao/component/mvp/activity/d;

    invoke-direct {v4, v0, p0}, Lcom/guochao/component/mvp/activity/d;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/activity/MVPActivity;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    :cond_14
    :goto_e
    return-void
.end method

.method private static final initView$lambda-10$lambda-9$lambda-8(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/activity/MVPActivity;Landroid/view/View;)V
    .locals 1

    const-string p2, "$bean"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_oneclick_to_get_click:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 2
    sget-object p2, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->Companion:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$Companion;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    invoke-virtual {p2, p0}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$Companion;->newInstance(Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;)Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;

    move-result-object p0

    .line 3
    new-instance p2, Lcom/guochao/component/mvp/activity/MVPActivity$initView$6$3$1$1;

    invoke-direct {p2, p1}, Lcom/guochao/component/mvp/activity/MVPActivity$initView$6$3$1$1;-><init>(Lcom/guochao/component/mvp/activity/MVPActivity;)V

    invoke-virtual {p0, p2}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->setCallBack(Lkotlin/jvm/functions/Function1;)V

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "supportFragmentManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "oneKey"

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final initView$lambda-12$lambda-11(Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;Landroid/view/View;IIII)V
    .locals 0

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x64

    if-le p3, p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->top:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->top:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private static final initView$lambda-2(Lcom/guochao/component/mvp/activity/MVPActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/guochao/component/mvp/fragment/MvpHelperDialog;->Companion:Lcom/guochao/component/mvp/fragment/MvpHelperDialog$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "supportFragmentManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/guochao/component/mvp/fragment/MvpHelperDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;)Lcom/guochao/component/mvp/fragment/MvpHelperDialog;

    return-void
.end method

.method private static final initView$lambda-3(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object p0

    const-string v0, "/app/my_wallet"

    invoke-virtual {p0, v0}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    const-string v0, "scene"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->withInt(Ljava/lang/String;I)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    return-void
.end method

.method private static final initView$lambda-5$lambda-4(Lcom/guochao/component/mvp/activity/MVPActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_contact:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->getMyMVPInfo()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/guochao/component/mvp/model/MVPInfoModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMyMvpInfoResult()Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;->getMvpLevel()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-lez p0, :cond_1

    .line 3
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_contact_4000:Ljava/lang/String;

    const-string v0, "0"

    invoke-virtual {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_contact_4000:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_1
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object p0

    const-string p1, "/app/service"

    invoke-virtual {p0, p1}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    const-string p1, "userId"

    const-string v0, "iarGoHNtFX2Sbp3RrJqBWwhQEgWHjN5u"

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    const-string p1, "name"

    const-string v0, "MVP"

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    return-void
.end method

.method public static synthetic k0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->initView$lambda-3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0(Lcom/guochao/component/mvp/activity/MVPActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/mvp/activity/MVPActivity;->initView$lambda-5$lambda-4(Lcom/guochao/component/mvp/activity/MVPActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/guochao/component/mvp/activity/MVPActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/mvp/activity/MVPActivity;->initView$lambda-2(Lcom/guochao/component/mvp/activity/MVPActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final checkGetAll()V
    .locals 15

    .line 1
    iget v0, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->myIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->getMyMVPInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/model/MVPInfoModel;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpRightsVoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->myIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_e

    .line 3
    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;->getDataList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/guochao/component/mvp/model/GiftModel;

    if-eqz v9, :cond_3

    .line 6
    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    if-nez v10, :cond_d

    if-eqz v9, :cond_4

    .line 7
    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    if-nez v10, :cond_d

    if-eqz v9, :cond_5

    .line 8
    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v10

    if-ne v10, v3, :cond_5

    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    if-nez v10, :cond_d

    if-eqz v9, :cond_6

    .line 9
    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_6

    const/4 v10, 0x1

    goto :goto_5

    :cond_6
    const/4 v10, 0x0

    :goto_5
    if-nez v10, :cond_d

    if-eqz v9, :cond_7

    .line 10
    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_6

    :cond_7
    const/4 v10, 0x0

    :goto_6
    if-lez v10, :cond_d

    if-eqz v9, :cond_c

    .line 11
    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 12
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/guochao/component/mvp/model/TypeData;

    .line 13
    invoke-virtual {v11}, Lcom/guochao/component/mvp/model/TypeData;->getStatus()Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    if-nez v11, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v12, :cond_a

    const/4 v11, 0x1

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v11, 0x0

    :goto_8
    if-eqz v11, :cond_8

    goto :goto_9

    :cond_b
    move-object v10, v2

    .line 14
    :goto_9
    check-cast v10, Lcom/guochao/component/mvp/model/TypeData;

    goto :goto_a

    :cond_c
    move-object v10, v2

    :goto_a
    if-nez v10, :cond_d

    const/4 v9, 0x1

    goto :goto_b

    :cond_d
    const/4 v9, 0x0

    :goto_b
    if-eqz v9, :cond_2

    .line 15
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_e
    move-object v7, v2

    :cond_f
    if-eqz v7, :cond_13

    .line 16
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_10
    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/guochao/component/mvp/model/GiftModel;

    if-eqz v10, :cond_11

    .line 18
    invoke-virtual {v10}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_11

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_d

    :cond_11
    const/4 v10, 0x0

    :goto_d
    if-ne v10, v4, :cond_12

    const/4 v10, 0x1

    goto :goto_e

    :cond_12
    const/4 v10, 0x0

    :goto_e
    if-eqz v10, :cond_10

    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_13
    move-object v6, v2

    :cond_14
    invoke-static {v6}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 19
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_1a

    .line 20
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/component/mvp/model/GiftModel;

    if-eqz v9, :cond_15

    .line 21
    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v10

    goto :goto_10

    :cond_15
    const/4 v10, -0x1

    :goto_10
    if-eqz v0, :cond_16

    .line 22
    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;->getLevel()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_16

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_11

    :cond_16
    const/4 v11, -0x1

    :goto_11
    if-eqz v9, :cond_17

    .line 23
    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_17

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v12, :cond_17

    invoke-virtual {v12}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v12

    goto :goto_12

    :cond_17
    move-object v12, v2

    :goto_12
    if-eqz v9, :cond_18

    .line 24
    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_18

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v13, :cond_18

    invoke-virtual {v13}, Lcom/guochao/component/mvp/model/TypeData;->getBussinessId()Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_18

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_13

    :cond_18
    move-object v13, v2

    .line 25
    :goto_13
    new-instance v14, Lcom/guochao/component/mvp/model/GetRewardRequestModel;

    .line 26
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 27
    invoke-direct {v14, v10, v11, v13, v12}, Lcom/guochao/component/mvp/model/GetRewardRequestModel;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_19

    .line 28
    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_19

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v10, :cond_19

    .line 29
    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v9

    invoke-virtual {v10, v9}, Lcom/guochao/component/mvp/model/TypeData;->setType(I)V

    .line 30
    :cond_19
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1a
    if-eqz v7, :cond_1e

    .line 31
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1b
    :goto_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/guochao/component/mvp/model/GiftModel;

    if-eqz v11, :cond_1c

    .line 33
    invoke-virtual {v11}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_1c

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_15

    :cond_1c
    const/4 v11, 0x0

    :goto_15
    if-le v11, v4, :cond_1d

    const/4 v11, 0x1

    goto :goto_16

    :cond_1d
    const/4 v11, 0x0

    :goto_16
    if-eqz v11, :cond_1b

    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1e
    move-object v6, v2

    :cond_1f
    if-eqz v6, :cond_27

    .line 34
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/component/mvp/model/GiftModel;

    if-eqz v9, :cond_20

    .line 35
    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getSelected()I

    move-result v10

    if-ne v10, v1, :cond_20

    const/4 v10, 0x1

    goto :goto_18

    :cond_20
    const/4 v10, 0x0

    :goto_18
    if-eqz v10, :cond_21

    goto :goto_17

    :cond_21
    if-eqz v9, :cond_22

    .line 36
    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v10

    goto :goto_19

    :cond_22
    const/4 v10, -0x1

    :goto_19
    if-eqz v0, :cond_23

    .line 37
    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;->getLevel()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_23

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_1a

    :cond_23
    const/4 v11, -0x1

    :goto_1a
    if-eqz v9, :cond_24

    .line 38
    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_24

    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getSelected()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v12, :cond_24

    invoke-virtual {v12}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v12

    goto :goto_1b

    :cond_24
    move-object v12, v2

    :goto_1b
    if-eqz v9, :cond_25

    .line 39
    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_25

    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getSelected()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v13, :cond_25

    invoke-virtual {v13}, Lcom/guochao/component/mvp/model/TypeData;->getBussinessId()Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_25

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1c

    :cond_25
    move-object v13, v2

    .line 40
    :goto_1c
    new-instance v14, Lcom/guochao/component/mvp/model/GetRewardRequestModel;

    .line 41
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 42
    invoke-direct {v14, v10, v11, v13, v12}, Lcom/guochao/component/mvp/model/GetRewardRequestModel;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_26

    .line 43
    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_26

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v10, :cond_26

    .line 44
    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v9

    invoke-virtual {v10, v9}, Lcom/guochao/component/mvp/model/TypeData;->setType(I)V

    .line 45
    :cond_26
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 46
    :cond_27
    iget v0, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->myIndex:I

    iget v1, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->currentIndex:I

    if-ne v0, v1, :cond_28

    if-eqz v7, :cond_28

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_28

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 47
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewBinding()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->getAllTV:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1d

    .line 48
    :cond_28
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewBinding()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->getAllTV:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1d
    return-void
.end method

.method public final getViewBinding()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->viewBinding:Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    return-object v0
.end method

.method public bridge synthetic getViewModel()Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    move-result-object v0

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object p1

    const-string v0, "/app/gc_event_tracker"

    invoke-virtual {p1, v0}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lcom/guochao/lib_service_center/eventtracker/IGCEventTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/guochao/lib_service_center/eventtracker/IGCEventTracker;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "CLICK_MVP"

    .line 4
    invoke-interface {p1, v0}, Lcom/guochao/lib_service_center/eventtracker/IGCEventTracker;->track(Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "toast_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const-string v5, "getString(\n             \u2026)}\"\n                    )"

    const-string v6, "MVP"

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "get_head"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    .line 7
    :cond_2
    sget p1, Lcom/guochao/component/mvp/R$string;->mvp_toast_tips_something:I

    new-array v3, v0, [Ljava/lang/Object;

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/guochao/component/mvp/R$string;->i_want_to_charge_avatar:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 9
    invoke-virtual {p0, p1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    move-object v6, p0

    .line 10
    invoke-static/range {v6 .. v11}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showMVPToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "get_chat"

    .line 11
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    .line 12
    :cond_3
    sget p1, Lcom/guochao/component/mvp/R$string;->mvp_toast_tips_something:I

    new-array v3, v0, [Ljava/lang/Object;

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/guochao/component/mvp/R$string;->i_want_to_charge_shade:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 14
    invoke-virtual {p0, p1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    move-object v6, p0

    .line 15
    invoke-static/range {v6 .. v11}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showMVPToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_1

    :sswitch_2
    const-string v3, "get_badge"

    .line 16
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    sget p1, Lcom/guochao/component/mvp/R$string;->mvp_reward_get_tips:I

    invoke-static {p0, p1, v2, v4, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showMVPToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_1

    :sswitch_3
    const-string v3, "get_car"

    .line 18
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 19
    :cond_5
    sget p1, Lcom/guochao/component/mvp/R$string;->mvp_toast_tips_something:I

    new-array v3, v0, [Ljava/lang/Object;

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/guochao/component/mvp/R$string;->i_want_to_charge_car:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 21
    invoke-virtual {p0, p1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    move-object v6, p0

    .line 22
    invoke-static/range {v6 .. v11}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showMVPToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_1

    :sswitch_4
    const-string v3, "charge"

    .line 23
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    .line 24
    :cond_6
    sget p1, Lcom/guochao/component/mvp/R$string;->mvp_next_month_tips:I

    invoke-static {p0, p1, v2, v4, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showMVPToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    .line 25
    :cond_7
    :goto_1
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->showStatusBar(Landroid/app/Activity;Z)V

    .line 26
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewBinding()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->titleView:Lcom/guochao/component/mvp/view/TitleView;

    const-string v2, "viewBinding.titleView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/guochao/component/mvp/activity/a;

    invoke-direct {v2, p0}, Lcom/guochao/component/mvp/activity/a;-><init>(Lcom/guochao/component/mvp/activity/MVPActivity;)V

    invoke-static {p1, v1, v2, v0, v1}, Lcom/guochao/component/mvp/view/TitleView;->addBackListener$default(Lcom/guochao/component/mvp/view/TitleView;Ljava/lang/Integer;Landroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewBinding()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->titleView:Lcom/guochao/component/mvp/view/TitleView;

    sget v2, Lcom/guochao/component/mvp/R$string;->mvp_my_mvp:I

    invoke-virtual {p1, v2}, Lcom/guochao/component/mvp/view/TitleView;->setTitle(I)V

    .line 28
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewBinding()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->titleView:Lcom/guochao/component/mvp/view/TitleView;

    sget v2, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_tips:I

    new-instance v3, Lcom/guochao/component/mvp/activity/c;

    invoke-direct {v3, p0}, Lcom/guochao/component/mvp/activity/c;-><init>(Lcom/guochao/component/mvp/activity/MVPActivity;)V

    invoke-virtual {p1, v2, v3}, Lcom/guochao/component/mvp/view/TitleView;->addMoreListener(ILandroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewBinding()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->mvpInfoView:Lcom/guochao/component/mvp/view/MVPInfoView;

    invoke-virtual {p1}, Lcom/guochao/component/mvp/view/MVPInfoView;->getViewBinding()Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;

    move-result-object p1

    iget-object v2, p1, Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;->rechargeTV:Landroid/widget/TextView;

    const-string p1, "viewBinding.mvpInfoView.viewBinding.rechargeTV"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    sget-object v5, Lcom/guochao/component/mvp/activity/e;->a:Lcom/guochao/component/mvp/activity/e;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 30
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->j()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 31
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewBinding()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->mvpBgIV:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "rotationY"

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v5, 0x0

    .line 32
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 33
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewBinding()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->titleView:Lcom/guochao/component/mvp/view/TitleView;

    invoke-virtual {p1}, Lcom/guochao/component/mvp/view/TitleView;->getViewBinding()Lcom/guochao/component/mvp/databinding/ViewTitleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/ViewTitleBinding;->backIV:Landroid/widget/ImageView;

    new-array v2, v2, [F

    .line 34
    fill-array-data v2, :array_1

    .line 35
    invoke-static {p1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 36
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 37
    :cond_8
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewBinding()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object p1

    .line 38
    iget-object v2, p1, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->contactTV:Landroid/widget/TextView;

    const-string p1, "contactTV"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/guochao/component/mvp/activity/b;

    invoke-direct {v5, p0}, Lcom/guochao/component/mvp/activity/b;-><init>(Lcom/guochao/component/mvp/activity/MVPActivity;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 39
    invoke-static {p0, v1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showLoading$default(Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;Ljava/lang/CharSequence;ILjava/lang/Object;)V

    .line 40
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->getMyMVPInfo()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/guochao/component/mvp/activity/g;

    invoke-direct {v0, p0}, Lcom/guochao/component/mvp/activity/g;-><init>(Lcom/guochao/component/mvp/activity/MVPActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 41
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewBinding()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object p1

    .line 42
    iget-object v0, p1, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->viewpager:Lcom/guochao/component/mvp/view/WrapViewPager;

    new-instance v1, Lcom/guochao/component/mvp/activity/MVPActivity$initView$7$1;

    invoke-direct {v1, p0}, Lcom/guochao/component/mvp/activity/MVPActivity$initView$7$1;-><init>(Lcom/guochao/component/mvp/activity/MVPActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 44
    iget-object v0, p1, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->scrollView:Landroidx/core/widget/NestedScrollView;

    new-instance v1, Lcom/guochao/component/mvp/activity/f;

    invoke-direct {v1, p1}, Lcom/guochao/component/mvp/activity/f;-><init>(Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 45
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "mvp_from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_my_open_from:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5128dd4c -> :sswitch_4
        -0x4755c95 -> :sswitch_3
        0x4361357a -> :sswitch_2
        0x75c9e2a1 -> :sswitch_1
        0x75cc1d29 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data
.end method

.method public onModelUpdate(Lcom/guochao/component/mvp/model/MVPInfoModel;)V
    .locals 0
    .param p1    # Lcom/guochao/component/mvp/model/MVPInfoModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic onModelUpdate(Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;)V
    .locals 0

    check-cast p1, Lcom/guochao/component/mvp/model/MVPInfoModel;

    invoke-virtual {p0, p1}, Lcom/guochao/component/mvp/activity/MVPActivity;->onModelUpdate(Lcom/guochao/component/mvp/model/MVPInfoModel;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/mvp/activity/MVPActivity;->getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->myMVPInfo()V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/mvp/activity/MVPActivity;->viewBinding:Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    return-void
.end method
