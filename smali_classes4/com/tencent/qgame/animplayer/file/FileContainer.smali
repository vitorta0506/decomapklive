.class public final Lcom/tencent/qgame/animplayer/file/FileContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qgame/animplayer/file/IFileContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/file/FileContainer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/file/FileContainer;",
        "Lcom/tencent/qgame/animplayer/file/IFileContainer;",
        "file",
        "Ljava/io/File;",
        "(Ljava/io/File;)V",
        "randomAccessFile",
        "Ljava/io/RandomAccessFile;",
        "close",
        "",
        "closeRandomRead",
        "read",
        "",
        "b",
        "",
        "off",
        "len",
        "setDataSource",
        "extractor",
        "Landroid/media/MediaExtractor;",
        "skip",
        "pos",
        "",
        "startRandomRead",
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
.field public static final Companion:Lcom/tencent/qgame/animplayer/file/FileContainer$Companion;

.field private static final TAG:Ljava/lang/String; = "AnimPlayer.FileContainer"


# instance fields
.field private final file:Ljava/io/File;

.field private randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/qgame/animplayer/file/FileContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/file/FileContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/file/FileContainer;->Companion:Lcom/tencent/qgame/animplayer/file/FileContainer$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/file/FileContainer;->file:Ljava/io/File;

    .line 2
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.FileContainer"

    const-string v2, "FileContainer init"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public closeRandomRead()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/file/FileContainer;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    return-void
.end method

.method public read([BII)I
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/file/FileContainer;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public setDataSource(Landroid/media/MediaExtractor;)V
    .locals 1
    .param p1    # Landroid/media/MediaExtractor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/file/FileContainer;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public skip(J)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/file/FileContainer;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    :cond_0
    return-void
.end method

.method public startRandomRead()V
    .locals 3

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/file/FileContainer;->file:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/file/FileContainer;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-void
.end method
