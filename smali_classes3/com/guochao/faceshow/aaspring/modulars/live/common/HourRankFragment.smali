.class public final Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Lp9/a$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \"2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\"B\u0007\u00a2\u0006\u0004\u0008 \u0010!J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0007J\u0012\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000cH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000cH\u0016J\u0012\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010\u0015\u001a\u00020\u0006H\u0016J\u0008\u0010\u0017\u001a\u00020\u0016H\u0016J\u0008\u0010\u0018\u001a\u00020\u0006H\u0016R$\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment;",
        "Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;",
        "Ljava/io/Closeable;",
        "Lp9/a$e;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "Ly7/e;",
        "event",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "",
        "getLayoutId",
        "currentDiamonds",
        "onDiamondsChanged",
        "currentCrystals",
        "onCrystalsChanged",
        "Landroid/view/View;",
        "view",
        "initView",
        "onDestroy",
        "",
        "getJSAction",
        "close",
        "Lcom/guochao/faceshow/web/jsinterface/GameJsAction;",
        "gameJsAction",
        "Lcom/guochao/faceshow/web/jsinterface/GameJsAction;",
        "getGameJsAction",
        "()Lcom/guochao/faceshow/web/jsinterface/GameJsAction;",
        "setGameJsAction",
        "(Lcom/guochao/faceshow/web/jsinterface/GameJsAction;)V",
        "<init>",
        "()V",
        "Companion",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private gameJsAction:Lcom/guochao/faceshow/web/jsinterface/GameJsAction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment;->close$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment;)V

    return-void
.end method

.method private static final close$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public static final newInstance(I)Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment$Companion;->newInstance(I)Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/m;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final event(Ly7/e;)V
    .locals 5
    .param p1    # Ly7/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ly7/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    if-eqz v0, :cond_2

    .line 3
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p1}, Ly7/e;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 5
    invoke-virtual {p1}, Ly7/e;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string p1, "2"

    :goto_0
    aput-object p1, v2, v3

    .line 6
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "setFoucesdH5(%s,%s)"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "format(format, *args)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->s(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final getGameJsAction()Lcom/guochao/faceshow/web/jsinterface/GameJsAction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment;->gameJsAction:Lcom/guochao/faceshow/web/jsinterface/GameJsAction;

    return-object v0
.end method

.method public getJSAction()Ljava/lang/Object;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment;->gameJsAction:Lcom/guochao/faceshow/web/jsinterface/GameJsAction;

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->e0()Ld9/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 4
    :goto_1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;->a(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    .line 6
    new-instance v3, Lcom/guochao/faceshow/web/jsinterface/GameJsAction;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/guochao/faceshow/web/jsinterface/GameJsAction;-><init>(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Landroid/webkit/WebView;)V

    .line 7
    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment;->gameJsAction:Lcom/guochao/faceshow/web/jsinterface/GameJsAction;

    move-object v0, v3

    :cond_2
    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0198

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->initView(Landroid/view/View;)V

    .line 2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lp9/a;->c(Lp9/a$e;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    .line 3
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/base/utils/ActivityExtendsKt;->safeRegisterEventBus(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createBottomDialog()Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "createBottomDialog()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCrystalsChanged(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "refreshCrystals(%s)"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "format(format, *args)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->s(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->onDestroy()V

    .line 2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lp9/a;->r(Lp9/a$e;)V

    return-void
.end method

.method public onDiamondsChanged(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "refreshDiamonds(%s)"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "format(format, *args)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->s(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setGameJsAction(Lcom/guochao/faceshow/web/jsinterface/GameJsAction;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/web/jsinterface/GameJsAction;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment;->gameJsAction:Lcom/guochao/faceshow/web/jsinterface/GameJsAction;

    return-void
.end method
