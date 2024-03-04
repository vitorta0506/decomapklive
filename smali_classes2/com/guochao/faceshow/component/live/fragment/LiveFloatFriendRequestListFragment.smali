.class public final Lcom/guochao/faceshow/component/live/fragment/LiveFloatFriendRequestListFragment;
.super Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/live/fragment/LiveFloatFriendRequestListFragment;",
        "Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;",
        "()V",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/FragmentLiveFloatFriendRequestListBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/FragmentLiveFloatFriendRequestListBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/FragmentLiveFloatFriendRequestListBinding;)V",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# instance fields
.field public viewBinding:Lcom/guochao/faceshow/databinding/FragmentLiveFloatFriendRequestListBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/component/live/fragment/LiveFloatFriendRequestListFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatFriendRequestListFragment;->initView$lambda-0(Lcom/guochao/faceshow/component/live/fragment/LiveFloatFriendRequestListFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/component/live/fragment/LiveFloatFriendRequestListFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveFloatFriendRequestListBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatFriendRequestListFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentLiveFloatFriendRequestListBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/component/live/utils/FloatFragmentUtils;->setDefaultFragmentViewHeight(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatFriendRequestListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveFloatFriendRequestListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentLiveFloatFriendRequestListBinding;->back:Landroid/widget/ImageView;

    new-instance p2, Lcom/guochao/faceshow/component/live/fragment/a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/component/live/fragment/a;-><init>(Lcom/guochao/faceshow/component/live/fragment/LiveFloatFriendRequestListFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object p1

    .line 5
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "float"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "request"

    .line 6
    invoke-virtual {p1, v0, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const p2, 0x7f0a0461

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatFriendRequestListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveFloatFriendRequestListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/FragmentLiveFloatFriendRequestListBinding;->realContent:Landroid/widget/FrameLayout;

    .line 11
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 12
    invoke-virtual {p2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/FragmentLiveFloatFriendRequestListBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/FragmentLiveFloatFriendRequestListBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatFriendRequestListFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentLiveFloatFriendRequestListBinding;

    return-void
.end method
