.class public final Lcom/tencent/qgame/animplayer/HandlerHolder;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010\u0011\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/HandlerHolder;",
        "",
        "thread",
        "Landroid/os/HandlerThread;",
        "handler",
        "Landroid/os/Handler;",
        "(Landroid/os/HandlerThread;Landroid/os/Handler;)V",
        "getHandler",
        "()Landroid/os/Handler;",
        "setHandler",
        "(Landroid/os/Handler;)V",
        "getThread",
        "()Landroid/os/HandlerThread;",
        "setThread",
        "(Landroid/os/HandlerThread;)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private thread:Landroid/os/HandlerThread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/os/HandlerThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/HandlerHolder;->thread:Landroid/os/HandlerThread;

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/HandlerHolder;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic copy$default(Lcom/tencent/qgame/animplayer/HandlerHolder;Landroid/os/HandlerThread;Landroid/os/Handler;ILjava/lang/Object;)Lcom/tencent/qgame/animplayer/HandlerHolder;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/tencent/qgame/animplayer/HandlerHolder;->thread:Landroid/os/HandlerThread;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/tencent/qgame/animplayer/HandlerHolder;->handler:Landroid/os/Handler;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qgame/animplayer/HandlerHolder;->copy(Landroid/os/HandlerThread;Landroid/os/Handler;)Lcom/tencent/qgame/animplayer/HandlerHolder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/os/HandlerThread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/HandlerHolder;->thread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public final component2()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/HandlerHolder;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final copy(Landroid/os/HandlerThread;Landroid/os/Handler;)Lcom/tencent/qgame/animplayer/HandlerHolder;
    .locals 1
    .param p1    # Landroid/os/HandlerThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/tencent/qgame/animplayer/HandlerHolder;

    invoke-direct {v0, p1, p2}, Lcom/tencent/qgame/animplayer/HandlerHolder;-><init>(Landroid/os/HandlerThread;Landroid/os/Handler;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/tencent/qgame/animplayer/HandlerHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/qgame/animplayer/HandlerHolder;

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/HandlerHolder;->thread:Landroid/os/HandlerThread;

    iget-object v1, p1, Lcom/tencent/qgame/animplayer/HandlerHolder;->thread:Landroid/os/HandlerThread;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/HandlerHolder;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/tencent/qgame/animplayer/HandlerHolder;->handler:Landroid/os/Handler;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/HandlerHolder;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getThread()Landroid/os/HandlerThread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/HandlerHolder;->thread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/HandlerHolder;->thread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/HandlerHolder;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/HandlerHolder;->handler:Landroid/os/Handler;

    return-void
.end method

.method public final setThread(Landroid/os/HandlerThread;)V
    .locals 0
    .param p1    # Landroid/os/HandlerThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/HandlerHolder;->thread:Landroid/os/HandlerThread;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HandlerHolder(thread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/HandlerHolder;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", handler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/HandlerHolder;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
