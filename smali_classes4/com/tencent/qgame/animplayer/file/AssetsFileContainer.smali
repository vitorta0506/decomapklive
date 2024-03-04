.class public final Lcom/tencent/qgame/animplayer/file/AssetsFileContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qgame/animplayer/file/IFileContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/file/AssetsFileContainer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000fH\u0016J\u0010\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u000cH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00060\nR\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/file/AssetsFileContainer;",
        "Lcom/tencent/qgame/animplayer/file/IFileContainer;",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "assetsPath",
        "",
        "(Landroid/content/res/AssetManager;Ljava/lang/String;)V",
        "assetFd",
        "Landroid/content/res/AssetFileDescriptor;",
        "assetsInputStream",
        "Landroid/content/res/AssetManager$AssetInputStream;",
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
.field public static final Companion:Lcom/tencent/qgame/animplayer/file/AssetsFileContainer$Companion;

.field private static final TAG:Ljava/lang/String; = "AnimPlayer.FileContainer"


# instance fields
.field private final assetFd:Landroid/content/res/AssetFileDescriptor;

.field private final assetsInputStream:Landroid/content/res/AssetManager$AssetInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/qgame/animplayer/file/AssetsFileContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/file/AssetsFileContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/file/AssetsFileContainer;->Companion:Lcom/tencent/qgame/animplayer/file/AssetsFileContainer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/res/AssetManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    const-string v1, "assetManager.openFd(assetsPath)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/file/AssetsFileContainer;->assetFd:Landroid/content/res/AssetFileDescriptor;

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/file/AssetsFileContainer;->assetsInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4
    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string p2, "AnimPlayer.FileContainer"

    const-string v0, "AssetsFileContainer init"

    invoke-virtual {p1, p2, v0}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.content.res.AssetManager.AssetInputStream"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/file/AssetsFileContainer;->assetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/file/AssetsFileContainer;->assetsInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    return-void
.end method

.method public closeRandomRead()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/file/AssetsFileContainer;->assetsInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    return-void
.end method

.method public read([BII)I
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/file/AssetsFileContainer;->assetsInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/AssetManager$AssetInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public setDataSource(Landroid/media/MediaExtractor;)V
    .locals 7
    .param p1    # Landroid/media/MediaExtractor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/file/AssetsFileContainer;->assetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/file/AssetsFileContainer;->assetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/file/AssetsFileContainer;->assetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/file/AssetsFileContainer;->assetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/file/AssetsFileContainer;->assetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v5

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    :goto_0
    return-void
.end method

.method public skip(J)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/file/AssetsFileContainer;->assetsInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/AssetManager$AssetInputStream;->skip(J)J

    return-void
.end method

.method public startRandomRead()V
    .locals 0

    return-void
.end method
