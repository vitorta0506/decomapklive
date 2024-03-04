.class public final Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/F2fProxyImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/f2f_proxy"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0013\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0016\u00a2\u0006\u0002\u0010\u000cJ\u0012\u0010\r\u001a\u00020\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J*\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u000b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0008H\u0016J\u0008\u0010\u001b\u001a\u00020\u0008H\u0016J\u0018\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0015\u001a\u00020\u0006H\u0016J\u0018\u0010\u001f\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010 \u001a\u00020!H\u0016J \u0010\"\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020!2\u0006\u0010#\u001a\u00020$H\u0016J\u0008\u0010%\u001a\u00020\u0008H\u0016J\u0010\u0010&\u001a\u00020\u00082\u0006\u0010#\u001a\u00020$H\u0016J\u0018\u0010\'\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020)2\u0006\u0010*\u001a\u00020\u000bH\u0016J\u0010\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\u0016J\u0018\u0010/\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020$H\u0016\u00a8\u00060"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/F2fProxyImpl;",
        "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;",
        "()V",
        "diamondsEnoughToFilterGender",
        "",
        "activity",
        "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;",
        "f2fMoveToMini",
        "",
        "findTips",
        "",
        "",
        "()[Ljava/lang/Integer;",
        "init",
        "context",
        "Landroid/content/Context;",
        "obtainChatFragment",
        "Landroidx/fragment/app/Fragment;",
        "gcUser",
        "Lcom/guochao/faceshow/aaspring/base/model/GCUser;",
        "onActivityResult",
        "f2fMatchActivity",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onEnterF2f",
        "releaseMini",
        "report",
        "f2fMatchRoomInfo",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;",
        "setUserInfo",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "setVideoChatUserInfo",
        "f2fMatchContainer",
        "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;",
        "shouldCostFilterDiamonds",
        "showForbiddenLiveDialogIfNeed",
        "showGenderFilterDialog",
        "Landroid/app/Dialog;",
        "Landroid/app/Activity;",
        "matchGender",
        "showPendantDialog",
        "Landroidx/fragment/app/DialogFragment;",
        "manager",
        "Landroidx/fragment/app/FragmentManager;",
        "showRetryAlertDialog",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Landroid/view/ViewGroup;Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/F2fProxyImpl;->setVideoChatUserInfo$lambda-5(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Landroid/view/ViewGroup;Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;Landroid/app/Dialog;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/F2fProxyImpl;->showRetryAlertDialog$lambda-6(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;Landroid/app/Dialog;Z)V

    return-void
.end method

.method public static synthetic c(Landroid/view/ViewGroup;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/F2fProxyImpl;->setVideoChatUserInfo$lambda-3(Landroid/view/ViewGroup;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/F2fProxyImpl;->setVideoChatUserInfo$lambda-5$lambda-4(Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Ljava/lang/String;)V

    return-void
.end method

.method private static final setVideoChatUserInfo$lambda-3(Landroid/view/ViewGroup;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Landroid/view/View;)V
    .locals 1

    const-string p2, "$viewGroup"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$gcUser"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "viewGroup.context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p2, p0, p1, v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;->start(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static final setVideoChatUserInfo$lambda-5(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Landroid/view/ViewGroup;Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;Landroid/view/View;)V
    .locals 2

    const-string p4, "$gcUser"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$viewGroup"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$binding"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$f2fMatchContainer"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object p4

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Activity;

    .line 4
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/d;

    invoke-direct {v1, p2, p3, p0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/d;-><init>(Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V

    invoke-static {p4, v0, p1, v1}, Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method

.method private static final setVideoChatUserInfo$lambda-5$lambda-4(Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Ljava/lang/String;)V
    .locals 1

    const-string p3, "$binding"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$f2fMatchContainer"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$gcUser"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->focus:Landroid/widget/ImageView;

    const/4 p3, 0x4

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p0, 0x0

    const/4 p3, 0x2

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, p0, p3, v0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer$DefaultImpls;->focusSomebody$default(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final showRetryAlertDialog$lambda-6(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;Landroid/app/Dialog;Z)V
    .locals 1

    const-string v0, "$f2fMatchContainer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;->retryMatch()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;->cancelMatchAndBackToPrepare()V

    :goto_0
    return-void
.end method


# virtual methods
.method public diamondsEnoughToFilterGender(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;)Z
    .locals 3
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Lp9/a;->x(Landroid/app/Activity;I)V

    :cond_0
    return v0
.end method

.method public f2fMoveToMini()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->Companion:Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->isFaceToFaceFloatShowing:Z

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public findTips()[Ljava/lang/Integer;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f120575

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1206a3

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f1206a5

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x7f1206a7

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x7f1206a4

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v1, 0x7f1206a2

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public obtainChatFragment(Lcom/guochao/faceshow/aaspring/base/model/GCUser;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/base/model/GCUser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "gcUser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->Companion:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$Companion;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$Companion;->newInstance(Lcom/guochao/faceshow/aaspring/base/model/GCUser;)Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;IILandroid/content/Intent;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "f2fMatchActivity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->getInstance()Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p4}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)V

    return-void
.end method

.method public onEnterF2f()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->Companion:Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string v2, "getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;->getInstance(Landroid/content/Context;)Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    move-result-object v0

    const/4 v1, 0x7

    .line 2
    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->setBeauty(ILcom/guochao/pusher/base/ILivePusher$BeautyManager;)V

    return-void
.end method

.method public releaseMini()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->Companion:Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->isFaceToFaceFloatShowing:Z

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->releaseMini()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public report(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2fMatchRoomInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "f2fMatchActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "8"

    .line 3
    invoke-static {p2, v0, p1, v1}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserInfo(Lcom/guochao/faceshow/aaspring/base/model/GCUser;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/base/model/GCUser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcUser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewGroup"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a03b7

    .line 1
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4
    invoke-static {v1, p2}, Lcom/guochao/faceshow/databinding/LayoutF2fMatchedUserInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/guochao/faceshow/databinding/LayoutF2fMatchedUserInfoBinding;

    move-result-object p2

    .line 5
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const-string v0, "{\n            LayoutF2fM\u2026ew.tag = this }\n        }"

    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.databinding.LayoutF2fMatchedUserInfoBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/guochao/faceshow/databinding/LayoutF2fMatchedUserInfoBinding;

    .line 8
    :goto_0
    iget-object v0, p2, Lcom/guochao/faceshow/databinding/LayoutF2fMatchedUserInfoBinding;->ageSexView:Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/base/model/GCUserBaseInfo;->getGender()I

    move-result v1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/base/model/GCUserBaseInfo;->getAge()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->b(II)V

    .line 9
    iget-object v0, p2, Lcom/guochao/faceshow/databinding/LayoutF2fMatchedUserInfoBinding;->levelView:Lcom/guochao/faceshow/aaspring/views/LevelView;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/base/model/GCUser;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/LevelView;->setLevel(I)V

    .line 10
    iget-object p2, p2, Lcom/guochao/faceshow/databinding/LayoutF2fMatchedUserInfoBinding;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/base/model/GCUserVipInfo;->getVipLevel()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    return-void
.end method

.method public setVideoChatUserInfo(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Landroid/view/ViewGroup;Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcUser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewGroup"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "f2fMatchContainer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a03b7

    .line 1
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4
    invoke-static {v1, p2}, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const-string v0, "{\n            LayoutVide\u2026ew.tag = this }\n        }"

    .line 6
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.databinding.LayoutVideoChatF2fUserBinding"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;

    .line 8
    :goto_0
    iget-object v0, v1, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->head:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    new-instance v2, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/a;

    invoke-direct {v2, p2, p1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/a;-><init>(Landroid/view/ViewGroup;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, v1, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->ageSexView:Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getGender()I

    move-result v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAge()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->b(II)V

    .line 10
    iget-object v0, v1, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->levelView:Lcom/guochao/faceshow/aaspring/views/LevelView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getLevel()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/LevelView;->setLevel(I)V

    .line 11
    iget-object v0, v1, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getVipLevel()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    .line 12
    iget-object v0, v1, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->head:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->h(Lcom/guochao/faceshow/aaspring/base/model/GCUser;)V

    .line 13
    iget-object v0, v1, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->nickName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, v1, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->focus:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAttentionStatus()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAttentionStatus()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 16
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object v0, v1, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->focus:Landroid/widget/ImageView;

    new-instance v2, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/b;

    invoke-direct {v2, p1, p2, v1, p3}, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/b;-><init>(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Landroid/view/ViewGroup;Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public shouldCostFilterDiamonds()V
    .locals 2

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    invoke-virtual {v1}, Lp9/a;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lp9/a;->d(I)I

    return-void
.end method

.method public showForbiddenLiveDialogIfNeed(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2fMatchContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getUserLiveBanned()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getLiveOperationVo()Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getLiveOperationVo()Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->getReasonMsgLang()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getLiveOperationVo()Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->getReasonMsg()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_0
    new-instance v1, Lcom/guochao/faceshow/views/e;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    .line 7
    new-instance v3, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/F2fProxyImpl$showForbiddenLiveDialogIfNeed$dialog$1;

    invoke-direct {v3, p1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/F2fProxyImpl$showForbiddenLiveDialogIfNeed$dialog$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;)V

    .line 8
    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 10
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 11
    invoke-virtual {v1}, Lcom/guochao/faceshow/views/e;->j()V

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 13
    invoke-virtual {v1}, Lcom/guochao/faceshow/views/e;->show()V

    :cond_2
    return-void
.end method

.method public showGenderFilterDialog(Landroid/app/Activity;I)Landroid/app/Dialog;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->e(Landroid/app/Activity;I)Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;

    move-result-object p1

    const-string p2, "showFilterDialog(activity, matchGender)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public showPendantDialog(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/DialogFragment;
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;-><init>()V

    const/4 v1, 0x7

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->setType(I)V

    const-string v1, "beauty_manager"

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public showRetryAlertDialog(Landroid/content/Context;Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "f2fMatchContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    .line 2
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/c;

    invoke-direct {v1, p2}, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/c;-><init>(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;)V

    .line 3
    invoke-direct {v0, p1, v1}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    const p2, 0x7f12068e

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p2

    const v0, 0x7f1201e1

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/views/e;->e(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method
