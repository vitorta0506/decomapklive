.class public abstract Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qgame/animplayer/inter/IAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IAnimListenerImp"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0008H\u0016J\u0012\u0010\r\u001a\u00020\u00082\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0008H\u0016J\u001a\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0015\u001a\u00020\u0008H\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;",
        "Lcom/tencent/qgame/animplayer/inter/IAnimListener;",
        "animView",
        "Lcom/tencent/qgame/animplayer/AnimView;",
        "(Lcom/tencent/qgame/animplayer/AnimView;)V",
        "getAnimView",
        "()Lcom/tencent/qgame/animplayer/AnimView;",
        "onFailed",
        "",
        "errorType",
        "",
        "errorMsg",
        "",
        "onVideoComplete",
        "onVideoConfigReady",
        "",
        "config",
        "Lcom/tencent/qgame/animplayer/AnimConfig;",
        "onVideoDestroy",
        "onVideoRender",
        "frameIndex",
        "onVideoStart",
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
.field private final animView:Lcom/tencent/qgame/animplayer/AnimView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/qgame/animplayer/AnimView;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/AnimView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;->animView:Lcom/tencent/qgame/animplayer/AnimView;

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;->onVideoComplete$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;->onFailed$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;)V

    return-void
.end method

.method private static final onFailed$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;->animView:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;->onVideoComplete(Lcom/tencent/qgame/animplayer/AnimView;)V

    return-void
.end method

.method private static final onVideoComplete$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;->animView:Lcom/tencent/qgame/animplayer/AnimView;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;->onVideoComplete(Lcom/tencent/qgame/animplayer/AnimView;)V

    return-void
.end method


# virtual methods
.method public final getAnimView()Lcom/tencent/qgame/animplayer/AnimView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;->animView:Lcom/tencent/qgame/animplayer/AnimView;

    return-object v0
.end method

.method public onFailed(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/vap/b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/vap/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/vap/a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/vap/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract onVideoComplete(Lcom/tencent/qgame/animplayer/AnimView;)V
    .param p1    # Lcom/tencent/qgame/animplayer/AnimView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public onVideoConfigReady(Lcom/tencent/qgame/animplayer/AnimConfig;)Z
    .locals 1
    .param p1    # Lcom/tencent/qgame/animplayer/AnimConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onVideoDestroy()V
    .locals 0

    return-void
.end method

.method public onVideoRender(ILcom/tencent/qgame/animplayer/AnimConfig;)V
    .locals 0
    .param p2    # Lcom/tencent/qgame/animplayer/AnimConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onVideoStart()V
    .locals 0

    return-void
.end method
