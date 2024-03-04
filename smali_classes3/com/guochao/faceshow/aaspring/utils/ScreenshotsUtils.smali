.class public final Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$CallBack;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001dB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014J&\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0003\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;",
        "",
        "()V",
        "isPost",
        "",
        "()Z",
        "setPost",
        "(Z)V",
        "listener",
        "Landroid/hardware/display/DisplayManager$DisplayListener;",
        "getListener",
        "()Landroid/hardware/display/DisplayManager$DisplayListener;",
        "changeFlagSecure",
        "",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "switch",
        "",
        "initDisplayListener",
        "context",
        "Landroid/content/Context;",
        "removeDisplayListener",
        "updateScreenshotsSwitch",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "roomId",
        "",
        "callBack",
        "Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$CallBack;",
        "CallBack",
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


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static isPost:Z

.field private static final listener:Landroid/hardware/display/DisplayManager$DisplayListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$listener$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$listener$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->listener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final changeFlagSecure(Landroidx/fragment/app/FragmentActivity;I)V
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/guochao/faceshow/utils/Contants;->SWITCH_SCREEN_SHOTS_ON:I

    const/16 v1, 0x2000

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getListener()Landroid/hardware/display/DisplayManager$DisplayListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->listener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-object v0
.end method

.method public final initDisplayListener(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "display"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.hardware.display.DisplayManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->listener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final isPost()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->isPost:Z

    return v0
.end method

.method public final removeDisplayListener(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->listener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v0, :cond_0

    const-string v1, "display"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.hardware.display.DisplayManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 3
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_0
    return-void
.end method

.method public final setPost(Z)V
    .locals 0

    sput-boolean p1, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->isPost:Z

    return-void
.end method

.method public final updateScreenshotsSwitch(Landroidx/fragment/app/Fragment;ILjava/lang/String;Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$CallBack;)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$CallBack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roomId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->isPost:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->isPost:Z

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->P(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/live/newLive/updateLiveInfo"

    .line 4
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;->b()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;->c(Z)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->c(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "screenShotSwitch"

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string p2, "liveId"

    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$updateScreenshotsSwitch$1;

    invoke-direct {p2, p4}, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$updateScreenshotsSwitch$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$CallBack;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
