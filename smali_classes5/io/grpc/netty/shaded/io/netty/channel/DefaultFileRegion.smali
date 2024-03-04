.class public Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;
.super Lio/grpc/netty/shaded/io/netty/util/b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/p0;


# static fields
.field private static final f:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:J

.field private final c:J

.field private d:J

.field private e:Ljava/nio/channels/FileChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->f:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method static k(Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->e:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->c:J

    sub-long/2addr v2, p1

    .line 3
    iget-wide v4, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->b:J

    add-long/2addr v4, v2

    add-long/2addr v4, p1

    cmp-long p1, v4, v0

    if-gtz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Underlying file size "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " smaller then requested count "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->c:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->e:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->a:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->e:Ljava/nio/channels/FileChannel;

    :cond_0
    return-void
.end method

.method public count()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->c:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->d:J

    return-wide v0
.end method

.method protected deallocate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->e:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->e:Ljava/nio/channels/FileChannel;

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->f:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Failed to close a file."

    invoke-interface {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->b:J

    return-wide v0
.end method

.method public g(Ljava/nio/channels/WritableByteChannel;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->c:J

    sub-long v5, v0, p2

    const-wide/16 v0, 0x0

    cmp-long v2, v5, v0

    if-ltz v2, :cond_4

    cmp-long v3, p2, v0

    if-ltz v3, :cond_4

    if-nez v2, :cond_0

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->refCnt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->b()V

    .line 4
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->e:Ljava/nio/channels/FileChannel;

    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->b:J

    add-long/2addr v3, p2

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    .line 5
    iget-wide p1, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->d:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->d:J

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 6
    invoke-static {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->k(Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;J)V

    :cond_2
    :goto_0
    return-wide v2

    .line 7
    :cond_3
    new-instance p1, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw p1

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " (expected: 0 - "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->c:J

    const-wide/16 v1, 0x1

    sub-long/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(I)Lio/grpc/netty/shaded/io/netty/channel/p0;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/b;->retain(I)Lio/grpc/netty/shaded/io/netty/util/s;

    return-object p0
.end method

.method public i()Lio/grpc/netty/shaded/io/netty/channel/p0;
    .locals 0

    return-object p0
.end method

.method public j(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/p0;
    .locals 0

    return-object p0
.end method

.method public retain()Lio/grpc/netty/shaded/io/netty/channel/p0;
    .locals 0

    .line 3
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->retain()Lio/grpc/netty/shaded/io/netty/util/s;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->retain()Lio/grpc/netty/shaded/io/netty/channel/p0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->h(I)Lio/grpc/netty/shaded/io/netty/channel/p0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->i()Lio/grpc/netty/shaded/io/netty/channel/p0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->j(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/p0;

    move-result-object p1

    return-object p1
.end method
