.class Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TXCTPPlayerOnLogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/thumbplayer/api/TPPlayerMgr$OnLogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TXCTPPlayerOnLogListener"
.end annotation


# instance fields
.field logLevel:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/tencent/liteav/base/util/LiteavLog;->getLogLevel()I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TXCTPPlayerOnLogListener;->logLevel:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TXCTPPlayerOnLogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TXCTPPlayerOnLogListener;->logLevel:I

    sget-object v1, Lcom/tencent/liteav/base/util/LiteavLog$b;->a:Lcom/tencent/liteav/base/util/LiteavLog$b;

    .line 2
    iget v1, v1, Lcom/tencent/liteav/base/util/LiteavLog$b;->mNativeValue:I

    if-gt v0, v1, :cond_0

    .line 3
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TXCTPPlayerOnLogListener;->logLevel:I

    sget-object v1, Lcom/tencent/liteav/base/util/LiteavLog$b;->d:Lcom/tencent/liteav/base/util/LiteavLog$b;

    .line 2
    iget v1, v1, Lcom/tencent/liteav/base/util/LiteavLog$b;->mNativeValue:I

    if-gt v0, v1, :cond_0

    .line 3
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TXCTPPlayerOnLogListener;->logLevel:I

    sget-object v1, Lcom/tencent/liteav/base/util/LiteavLog$b;->b:Lcom/tencent/liteav/base/util/LiteavLog$b;

    .line 2
    iget v1, v1, Lcom/tencent/liteav/base/util/LiteavLog$b;->mNativeValue:I

    if-gt v0, v1, :cond_0

    .line 3
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TXCTPPlayerOnLogListener;->logLevel:I

    sget-object v1, Lcom/tencent/liteav/base/util/LiteavLog$b;->a:Lcom/tencent/liteav/base/util/LiteavLog$b;

    .line 2
    iget v1, v1, Lcom/tencent/liteav/base/util/LiteavLog$b;->mNativeValue:I

    if-gt v0, v1, :cond_0

    .line 3
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TXCTPPlayerOnLogListener;->logLevel:I

    sget-object v1, Lcom/tencent/liteav/base/util/LiteavLog$b;->c:Lcom/tencent/liteav/base/util/LiteavLog$b;

    .line 2
    iget v1, v1, Lcom/tencent/liteav/base/util/LiteavLog$b;->mNativeValue:I

    if-gt v0, v1, :cond_0

    .line 3
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
