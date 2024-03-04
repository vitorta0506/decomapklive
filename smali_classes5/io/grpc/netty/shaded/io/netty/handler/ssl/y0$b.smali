.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field static final k:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/util/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/v<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

.field private final f:J

.field private final g:J

.field private volatile h:J

.field private volatile i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/t;->b()Lio/grpc/netty/shaded/io/netty/util/t;

    move-result-object v0

    const-class v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;

    .line 2
    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/t;->c(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->k:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c()Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    return-object v0
.end method

.method public d([BLjava/lang/String;Ljava/lang/String;[B[[BJJ)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public e([Ljava/security/cert/Certificate;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;->c()Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method g()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->j:Z

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->invalidate()V

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->a:Lio/grpc/netty/shaded/io/netty/util/v;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/v;->b(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getApplicationBufferSize()I
    .locals 1

    sget v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J:I

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->g:J

    return-wide v0
.end method

.method public getId()[B
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->h:J

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPacketBufferSize()I
    .locals 1

    sget v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->K:I

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->d:I

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionContext()Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->getSessionContext()Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized h()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->g()V

    .line 2
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->b:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLSession;->free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;->hashCode()I

    move-result v0

    return v0
.end method

.method i(J)Z
    .locals 4

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->g:J

    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->f:J

    add-long/2addr v0, v2

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    iget-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->i:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->i:Z

    return-void
.end method

.method public isValid()Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->i(J)Z

    move-result v0

    return v0
.end method

.method j()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->b:J

    return-wide v0
.end method

.method k()Z
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->b:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLSession;->shouldBeSingleUse(J)Z

    move-result v0

    return v0
.end method

.method l()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->h:J

    return-void
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
