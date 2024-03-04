.class public Lcom/tencent/liteav/base/util/UrlReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav"
.end annotation


# static fields
.field private static final AVSEEK_SIZE:I = 0x10000

.field private static final SEEK_CUR:I = 0x1

.field private static final SEEK_END:I = 0x2

.field private static final SEEK_SET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UrlReader"


# instance fields
.field private mFileSize:I

.field private mOffset:J

.field private mStream:Ljava/io/InputStream;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/base/util/UrlReader;->mUri:Landroid/net/Uri;

    .line 3
    invoke-direct {p0}, Lcom/tencent/liteav/base/util/UrlReader;->open()V

    return-void
.end method

.method private open()V
    .locals 6

    const-string v0, "UrlReader"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/liteav/base/util/UrlReader;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/liteav/base/util/UrlReader;->mStream:Ljava/io/InputStream;

    .line 2
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    iput v3, p0, Lcom/tencent/liteav/base/util/UrlReader;->mFileSize:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Fail to get file size "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iput-object v1, p0, Lcom/tencent/liteav/base/util/UrlReader;->mStream:Ljava/io/InputStream;

    return-void

    .line 5
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fail to open uri "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/liteav/base/util/UrlReader;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iput-object v1, p0, Lcom/tencent/liteav/base/util/UrlReader;->mStream:Ljava/io/InputStream;

    return-void
.end method

.method private seekFromBegin(J)J
    .locals 5

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    return-wide v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/base/util/UrlReader;->close()V

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/base/util/UrlReader;->open()V

    .line 3
    iget-object v2, p0, Lcom/tencent/liteav/base/util/UrlReader;->mStream:Ljava/io/InputStream;

    if-nez v2, :cond_1

    return-wide v0

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/liteav/base/util/UrlReader;->mOffset:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fail to seek "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " exception "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v2, "UrlReader"

    invoke-static {v2, p1, p2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-wide v0
.end method

.method private seekFromCurrent(J)J
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/base/util/UrlReader;->mOffset:J

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/base/util/UrlReader;->seekFromBegin(J)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 v0, -0x1

    .line 2
    :try_start_0
    iget-wide v2, p0, Lcom/tencent/liteav/base/util/UrlReader;->mOffset:J

    iget-object v4, p0, Lcom/tencent/liteav/base/util/UrlReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/liteav/base/util/UrlReader;->mOffset:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fail to seek "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " exception "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v2, "UrlReader"

    invoke-static {v2, p1, p2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-wide v0
.end method

.method private seekFromEnd(J)J
    .locals 7

    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    cmp-long v4, p1, v0

    if-lez v4, :cond_0

    return-wide v2

    .line 1
    :cond_0
    iget v4, p0, Lcom/tencent/liteav/base/util/UrlReader;->mFileSize:I

    int-to-long v4, v4

    add-long/2addr v4, p1

    cmp-long v6, v4, v0

    if-gez v6, :cond_1

    return-wide v2

    .line 2
    :cond_1
    iget-wide v0, p0, Lcom/tencent/liteav/base/util/UrlReader;->mOffset:J

    cmp-long v6, v4, v0

    if-gez v6, :cond_2

    .line 3
    invoke-direct {p0, v4, v5}, Lcom/tencent/liteav/base/util/UrlReader;->seekFromBegin(J)J

    move-result-wide p1

    return-wide p1

    :cond_2
    sub-long/2addr v4, v0

    .line 4
    :try_start_0
    iget-object v6, p0, Lcom/tencent/liteav/base/util/UrlReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v6, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/tencent/liteav/base/util/UrlReader;->mOffset:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Fail to seek "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " exception "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "UrlReader"

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-wide v2
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/util/UrlReader;->mStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Close exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "UrlReader"

    invoke-static {v3, v0, v2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/liteav/base/util/UrlReader;->mStream:Ljava/io/InputStream;

    const-wide/16 v2, 0x0

    .line 5
    iput-wide v2, p0, Lcom/tencent/liteav/base/util/UrlReader;->mOffset:J

    .line 6
    iput v1, p0, Lcom/tencent/liteav/base/util/UrlReader;->mFileSize:I

    return-void
.end method

.method public read([BI)I
    .locals 5
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/util/UrlReader;->mStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1, v2, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 3
    iget-wide p1, p0, Lcom/tencent/liteav/base/util/UrlReader;->mOffset:J

    int-to-long v3, v1

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/tencent/liteav/base/util/UrlReader;->mOffset:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Read exception "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "UrlReader"

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v1
.end method

.method public seek(JI)J
    .locals 3
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/util/UrlReader;->mStream:Ljava/io/InputStream;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    if-eqz p3, :cond_4

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/high16 p1, 0x10000

    if-eq p3, p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget p1, p0, Lcom/tencent/liteav/base/util/UrlReader;->mFileSize:I

    int-to-long v1, p1

    goto :goto_0

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/base/util/UrlReader;->seekFromEnd(J)J

    move-result-wide v1

    goto :goto_0

    .line 4
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/base/util/UrlReader;->seekFromCurrent(J)J

    move-result-wide v1

    goto :goto_0

    .line 5
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/base/util/UrlReader;->seekFromBegin(J)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method
