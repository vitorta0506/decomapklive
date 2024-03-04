.class public final Lcom/tencent/qgame/animplayer/file/StreamContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qgame/animplayer/file/IFileContainer;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/file/StreamContainer;",
        "Lcom/tencent/qgame/animplayer/file/IFileContainer;",
        "bytes",
        "",
        "([B)V",
        "stream",
        "Ljava/io/ByteArrayInputStream;",
        "close",
        "",
        "closeRandomRead",
        "read",
        "",
        "b",
        "off",
        "len",
        "setDataSource",
        "extractor",
        "Landroid/media/MediaExtractor;",
        "skip",
        "pos",
        "",
        "startRandomRead",
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

.field private stream:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/file/StreamContainer;->bytes:[B

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/file/StreamContainer;->stream:Ljava/io/ByteArrayInputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/file/StreamContainer;->stream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-void
.end method

.method public closeRandomRead()V
    .locals 0

    return-void
.end method

.method public read([BII)I
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/file/StreamContainer;->stream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public setDataSource(Landroid/media/MediaExtractor;)V
    .locals 2
    .param p1    # Landroid/media/MediaExtractor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/tencent/qgame/animplayer/file/StreamMediaDataSource;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/file/StreamContainer;->bytes:[B

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/file/StreamMediaDataSource;-><init>([B)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->setDataSource(Landroid/media/MediaDataSource;)V

    return-void
.end method

.method public skip(J)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/file/StreamContainer;->stream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    return-void
.end method

.method public startRandomRead()V
    .locals 0

    return-void
.end method
