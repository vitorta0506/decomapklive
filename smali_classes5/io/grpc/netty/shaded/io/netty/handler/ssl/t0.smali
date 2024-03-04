.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;
.super Lio/grpc/netty/shaded/io/netty/util/b;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;
    }
.end annotation


# instance fields
.field private a:J


# direct methods
.method static synthetic a(Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;)J
    .locals 2

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method private c()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;->a:J

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;-><init>()V

    throw v0
.end method


# virtual methods
.method b(J[Ljava/security/cert/X509Certificate;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;J[Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method

.method protected deallocate()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;->a:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->freePrivateKey(J)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;->a:J

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->refCnt()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/b;->release(I)Z

    return-void
.end method

.method public e()Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;
    .locals 0

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->retain()Lio/grpc/netty/shaded/io/netty/util/s;

    return-object p0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "unknown"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h(I)Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/b;->retain(I)Lio/grpc/netty/shaded/io/netty/util/s;

    return-object p0
.end method

.method public i()Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;
    .locals 0

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->touch()Lio/grpc/netty/shaded/io/netty/util/s;

    return-object p0
.end method

.method public isDestroyed()Z
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->refCnt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;->e()Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;->h(I)Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;->i()Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;->j(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/t0;

    move-result-object p1

    return-object p1
.end method
