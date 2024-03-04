.class public final Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \"2\u00020\u0001:\u0001\"B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0012\u001a\u0004\u0018\u00010\nJ\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u0018J\u0006\u0010\u001f\u001a\u00020\u0018J\u0006\u0010 \u001a\u00020\u0018J\u0006\u0010!\u001a\u00020\u0018R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;",
        "",
        "player",
        "Lcom/tencent/qgame/animplayer/AnimPlayer;",
        "(Lcom/tencent/qgame/animplayer/AnimPlayer;)V",
        "decodeIndex",
        "",
        "frameDiffTimes",
        "frameIndex",
        "maskAnimPlugin",
        "Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;",
        "mixAnimPlugin",
        "Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;",
        "getPlayer",
        "()Lcom/tencent/qgame/animplayer/AnimPlayer;",
        "plugins",
        "",
        "Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;",
        "getMaskAnimPlugin",
        "getMixAnimPlugin",
        "onConfigCreate",
        "config",
        "Lcom/tencent/qgame/animplayer/AnimConfig;",
        "onDecoding",
        "",
        "onDestroy",
        "onDispatchTouchEvent",
        "",
        "ev",
        "Landroid/view/MotionEvent;",
        "onLoopStart",
        "onRelease",
        "onRenderCreate",
        "onRendering",
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
.field public static final Companion:Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager$Companion;

.field private static final DIFF_TIMES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AnimPlayer.AnimPluginManager"


# instance fields
.field private decodeIndex:I

.field private frameDiffTimes:I

.field private frameIndex:I

.field private final maskAnimPlugin:Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;

.field private final mixAnimPlugin:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

.field private final player:Lcom/tencent/qgame/animplayer/AnimPlayer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->Companion:Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qgame/animplayer/AnimPlayer;)V
    .locals 3
    .param p1    # Lcom/tencent/qgame/animplayer/AnimPlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    .line 2
    new-instance v0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    invoke-direct {v0, p1}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;-><init>(Lcom/tencent/qgame/animplayer/AnimPlayer;)V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->mixAnimPlugin:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    .line 3
    new-instance v1, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;

    invoke-direct {v1, p1}, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;-><init>(Lcom/tencent/qgame/animplayer/AnimPlayer;)V

    iput-object v1, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->maskAnimPlugin:Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    const/4 v0, 0x1

    aput-object v1, p1, v0

    .line 4
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->plugins:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getMaskAnimPlugin()Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->maskAnimPlugin:Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;

    return-object v0
.end method

.method public final getMixAnimPlugin()Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->mixAnimPlugin:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    return-object v0
.end method

.method public final getPlayer()Lcom/tencent/qgame/animplayer/AnimPlayer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    return-object v0
.end method

.method public final onConfigCreate(Lcom/tencent/qgame/animplayer/AnimConfig;)I
    .locals 3
    .param p1    # Lcom/tencent/qgame/animplayer/AnimConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.AnimPluginManager"

    const-string v2, "onConfigCreate"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->plugins:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;

    .line 4
    invoke-interface {v1, p1}, Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;->onConfigCreate(Lcom/tencent/qgame/animplayer/AnimConfig;)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onDecoding(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDecoding decodeIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimPlayer.AnimPluginManager"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->decodeIndex:I

    .line 3
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->plugins:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;

    .line 5
    invoke-interface {v1, p1}, Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;->onDecoding(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.AnimPluginManager"

    const-string v2, "onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->plugins:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;

    .line 4
    invoke-interface {v1}, Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->plugins:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;

    .line 3
    invoke-interface {v1, p1}, Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onLoopStart()V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.AnimPluginManager"

    const-string v2, "onLoopStart"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->frameIndex:I

    .line 3
    iput v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->decodeIndex:I

    return-void
.end method

.method public final onRelease()V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.AnimPluginManager"

    const-string v2, "onRelease"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->plugins:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;

    .line 4
    invoke-interface {v1}, Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;->onRelease()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onRenderCreate()V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.AnimPluginManager"

    const-string v2, "onRenderCreate"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->frameIndex:I

    .line 3
    iput v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->decodeIndex:I

    .line 4
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->plugins:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;

    .line 6
    invoke-interface {v1}, Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;->onRenderCreate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onRendering()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->decodeIndex:I

    iget v1, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->frameIndex:I

    add-int/lit8 v1, v1, 0x1

    const-string v2, "AnimPlayer.AnimPluginManager"

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->frameDiffTimes:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 2
    :cond_0
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jump frameIndex= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->frameIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",decodeIndex="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->decodeIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",frameDiffTimes="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->frameDiffTimes:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->decodeIndex:I

    iput v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->frameIndex:I

    .line 4
    :cond_1
    iget v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->decodeIndex:I

    iget v1, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->frameIndex:I

    if-eq v0, v1, :cond_2

    .line 5
    iget v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->frameDiffTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->frameDiffTimes:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->frameDiffTimes:I

    .line 7
    :goto_0
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRendering frameIndex="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->frameIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->plugins:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;

    .line 10
    iget v2, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->frameIndex:I

    invoke-interface {v1, v2}, Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;->onRendering(I)V

    goto :goto_1

    .line 11
    :cond_3
    iget v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->frameIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->frameIndex:I

    return-void
.end method
