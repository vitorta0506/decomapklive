.class public final Lcom/tencent/qgame/animplayer/file/StreamMediaDataSource;
.super Landroid/media/MediaDataSource;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J(\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000cH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/file/StreamMediaDataSource;",
        "Landroid/media/MediaDataSource;",
        "bytes",
        "",
        "([B)V",
        "getBytes",
        "()[B",
        "close",
        "",
        "getSize",
        "",
        "readAt",
        "",
        "position",
        "buffer",
        "offset",
        "size",
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
.field private final bytes:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/file/StreamMediaDataSource;->bytes:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public final getBytes()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/file/StreamMediaDataSource;->bytes:[B

    return-object v0
.end method

.method public getSize()J
    .locals 3

    .line 1
    const-class v0, Lcom/tencent/qgame/animplayer/file/StreamMediaDataSource;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/file/StreamMediaDataSource;->bytes:[B

    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v1, v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0

    throw v1
.end method

.method public readAt(J[BII)I
    .locals 8
    .param p3    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lcom/tencent/qgame/animplayer/file/StreamMediaDataSource;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/file/StreamMediaDataSource;->bytes:[B

    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v3, v2

    cmp-long v5, p1, v3

    if-ltz v5, :cond_0

    const/4 p1, -0x1

    .line 3
    monitor-exit v0

    return p1

    :cond_0
    int-to-long v5, p5

    add-long/2addr v5, p1

    cmp-long v7, v5, v3

    if-lez v7, :cond_1

    long-to-int v3, v5

    sub-int/2addr v3, v2

    sub-int/2addr p5, v3

    :cond_1
    long-to-int p2, p1

    .line 4
    :try_start_1
    invoke-static {v1, p2, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit v0

    return p5

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0

    throw p1
.end method
