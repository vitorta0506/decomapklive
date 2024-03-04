.class public final Lcom/tencent/qgame/animplayer/util/ALog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u0016\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u001e\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015J\u0016\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0003\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/util/ALog;",
        "",
        "()V",
        "isDebug",
        "",
        "()Z",
        "setDebug",
        "(Z)V",
        "log",
        "Lcom/tencent/qgame/animplayer/util/IALog;",
        "getLog",
        "()Lcom/tencent/qgame/animplayer/util/IALog;",
        "setLog",
        "(Lcom/tencent/qgame/animplayer/util/IALog;)V",
        "d",
        "",
        "tag",
        "",
        "msg",
        "e",
        "tr",
        "",
        "i",
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
.field public static final INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

.field private static isDebug:Z

.field private static log:Lcom/tencent/qgame/animplayer/util/IALog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/qgame/animplayer/util/ALog;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/util/ALog;-><init>()V

    sput-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-boolean v0, Lcom/tencent/qgame/animplayer/util/ALog;->isDebug:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->log:Lcom/tencent/qgame/animplayer/util/IALog;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tencent/qgame/animplayer/util/IALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->log:Lcom/tencent/qgame/animplayer/util/IALog;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tencent/qgame/animplayer/util/IALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->log:Lcom/tencent/qgame/animplayer/util/IALog;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/qgame/animplayer/util/IALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final getLog()Lcom/tencent/qgame/animplayer/util/IALog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->log:Lcom/tencent/qgame/animplayer/util/IALog;

    return-object v0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->log:Lcom/tencent/qgame/animplayer/util/IALog;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tencent/qgame/animplayer/util/IALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/qgame/animplayer/util/ALog;->isDebug:Z

    return v0
.end method

.method public final setDebug(Z)V
    .locals 0

    sput-boolean p1, Lcom/tencent/qgame/animplayer/util/ALog;->isDebug:Z

    return-void
.end method

.method public final setLog(Lcom/tencent/qgame/animplayer/util/IALog;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/util/IALog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->log:Lcom/tencent/qgame/animplayer/util/IALog;

    return-void
.end method
