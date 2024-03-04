.class public Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;
.source "SourceFile"

# interfaces
.implements Lp9/a$e;
.implements Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$e;,
        Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;,
        Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;,
        Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$f;
    }
.end annotation


# instance fields
.field public a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

.field private b:Leb/b;

.field c:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;

.field private d:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$e;

.field private e:F

.field f:Lcom/opensource/svgaplayer/SVGAImageView;

.field mViewGroup:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mWebGameLayout:Lcom/guochao/faceshow/aaspring/views/WebGameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;-><init>()V

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;)Leb/b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->b:Leb/b;

    return-object p0
.end method

.method static synthetic Q1(ZLandroid/os/Bundle;)Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->S1(ZLandroid/os/Bundle;)Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    move-result-object p0

    return-object p0
.end method

.method private static S1(ZLandroid/os/Bundle;)Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {v0, p0}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    return-object v0
.end method


# virtual methods
.method public R1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010045

    const v2, 0x7f010046

    .line 4
    invoke-virtual {v0, v1, v2, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->R1()V

    return-void
.end method

.method public getJSAction()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mJSAction:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/web/jsinterface/GameJsAction;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-direct {v0, p0, v1, v2}, Lcom/guochao/faceshow/web/jsinterface/GameJsAction;-><init>(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mJSAction:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->setOnCallBack(Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mJSAction:Ljava/lang/Object;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01f8

    return v0
.end method

.method public synthetic getReCaptChaToken(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/web/jsinterface/a;->a(Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;Ljava/lang/Object;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->initView(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameCode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->mWebGameLayout:Lcom/guochao/faceshow/aaspring/views/WebGameLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/views/WebGameLayout;->b:Z

    .line 4
    :cond_0
    new-instance v0, Leb/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Leb/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->b:Leb/b;

    .line 5
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lp9/a;->c(Lp9/a$e;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v0

    const v1, 0x7f0a0207

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$b;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/utils/TXIMUtils;->joinGroup(Ljava/lang/String;)V

    .line 10
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$e;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$e;

    .line 11
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$e;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->addAdvancedMsgListener(Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;)V

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a025c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->e:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->e:F

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->e:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const v0, 0x3f8ccccd    # 1.1f

    const-string v1, "heightRatio"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->e:F

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "liveInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;

    :cond_0
    return-void
.end method

.method public onCrystalsChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "refreshCrystals(%s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->s(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->onDestroy()V

    .line 2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lp9/a;->r(Lp9/a$e;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/utils/TXIMUtils;->quitGroup(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$e;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->removeAdvancedMsgListener(Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;)V

    :cond_0
    return-void
.end method

.method public onDiamondsChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "refreshDiamonds(%s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->s(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInviteClick()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic onInviteClick(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/web/jsinterface/a;->b(Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;Ljava/lang/Object;)V

    return-void
.end method

.method public playWinAnimation()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
