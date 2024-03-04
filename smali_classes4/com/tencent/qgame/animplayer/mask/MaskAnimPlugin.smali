.class public final Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0006H\u0016J\u0008\u0010\u0010\u001a\u00020\u000cH\u0016J\u0008\u0010\u0011\u001a\u00020\u000cH\u0016J\u0008\u0010\u0012\u001a\u00020\u000cH\u0016J\u0010\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u000eH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;",
        "Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;",
        "player",
        "Lcom/tencent/qgame/animplayer/AnimPlayer;",
        "(Lcom/tencent/qgame/animplayer/AnimPlayer;)V",
        "animConfig",
        "Lcom/tencent/qgame/animplayer/AnimConfig;",
        "maskRender",
        "Lcom/tencent/qgame/animplayer/mask/MaskRender;",
        "getPlayer",
        "()Lcom/tencent/qgame/animplayer/AnimPlayer;",
        "destroy",
        "",
        "onConfigCreate",
        "",
        "config",
        "onDestroy",
        "onRelease",
        "onRenderCreate",
        "onRendering",
        "frameIndex",
        "Companion",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin$Companion;

.field private static final TAG:Ljava/lang/String; = "AnimPlayer.MaskAnimPlugin"


# instance fields
.field private animConfig:Lcom/tencent/qgame/animplayer/AnimConfig;

.field private maskRender:Lcom/tencent/qgame/animplayer/mask/MaskRender;

.field private final player:Lcom/tencent/qgame/animplayer/AnimPlayer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->Companion:Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qgame/animplayer/AnimPlayer;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/AnimPlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    return-void
.end method

.method private final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->animConfig:Lcom/tencent/qgame/animplayer/AnimConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getMaskConfig()Lcom/tencent/qgame/animplayer/mask/MaskConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getPlayer()Lcom/tencent/qgame/animplayer/AnimPlayer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    return-object v0
.end method

.method public onConfigCreate(Lcom/tencent/qgame/animplayer/AnimConfig;)I
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/AnimConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onDecoding(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin$DefaultImpls;->onDecoding(Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->destroy()V

    return-void
.end method

.method public onDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin$DefaultImpls;->onDispatchTouchEvent(Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onRelease()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->destroy()V

    return-void
.end method

.method public onRenderCreate()V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.MaskAnimPlugin"

    const-string v2, "mask render init"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getSupportMaskBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/qgame/animplayer/mask/MaskRender;

    invoke-direct {v0, p0}, Lcom/tencent/qgame/animplayer/mask/MaskRender;-><init>(Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;)V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->maskRender:Lcom/tencent/qgame/animplayer/mask/MaskRender;

    .line 3
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getMaskEdgeBlurBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/mask/MaskRender;->initMaskShader(Z)V

    :cond_0
    return-void
.end method

.method public onRendering(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getSupportMaskBoolean()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getConfigManager()Lcom/tencent/qgame/animplayer/AnimConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfigManager;->getConfig()Lcom/tencent/qgame/animplayer/AnimConfig;

    move-result-object p1

    instance-of p1, p1, Lcom/tencent/qgame/animplayer/AnimConfig;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getConfigManager()Lcom/tencent/qgame/animplayer/AnimConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfigManager;->getConfig()Lcom/tencent/qgame/animplayer/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->animConfig:Lcom/tencent/qgame/animplayer/AnimConfig;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->maskRender:Lcom/tencent/qgame/animplayer/mask/MaskRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/mask/MaskRender;->renderFrame(Lcom/tencent/qgame/animplayer/AnimConfig;)V

    :cond_0
    return-void
.end method
