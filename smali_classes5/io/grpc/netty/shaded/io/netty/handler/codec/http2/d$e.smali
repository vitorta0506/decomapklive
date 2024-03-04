.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a<",
        "TF;>;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private final i:I

.field j:I

.field k:I

.field final synthetic l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;ZI)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->d:I

    .line 3
    iput-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->a:Z

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->b:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->c:I

    goto :goto_0

    .line 6
    :cond_0
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->b:I

    .line 7
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->c:I

    :goto_0
    xor-int/2addr p1, p2

    .line 8
    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->e:Z

    const p1, 0x7fffffff

    .line 9
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->h:I

    const-string p1, "maxReservedStreams"

    .line 10
    invoke-static {p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->i:I

    .line 11
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->B()V

    return-void
.end method

.method private B()V
    .locals 4

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->h:I

    int-to-long v0, v0

    iget v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->i:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->g:I

    return-void
.end method

.method static synthetic a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;)I
    .locals 0

    iget p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->d:I

    return p0
.end method

.method static synthetic b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->j(I)V

    return-void
.end method

.method private c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->a:Ltg/e;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->G()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ltg/e;->n0(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;

    invoke-interface {v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->p()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v2

    const-string v3, "Caught Throwable from listener onStreamAdded."

    invoke-interface {v2, v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->d:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_1

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->REFUSED_STREAM:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v0, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Cannot create stream %d greater than Last-Stream-ID %d from GOAWAY."

    .line 4
    invoke-static {p1, p2, v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->r(I)Z

    move-result v0

    if-nez v0, :cond_4

    if-ltz p1, :cond_3

    .line 6
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    iget-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "server"

    goto :goto_1

    :cond_2
    const-string p1, "client"

    :goto_1
    aput-object p1, v0, v2

    const-string p1, "Request stream %d is not correct for %s connection"

    invoke-static {p2, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 7
    :cond_3
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2NoMoreStreamIdsException;

    invoke-direct {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2NoMoreStreamIdsException;-><init>()V

    throw p1

    .line 8
    :cond_4
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->b:I

    if-lt p1, v0, :cond_d

    if-lez v0, :cond_c

    .line 9
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->RESERVED_LOCAL:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    if-eq p2, v0, :cond_6

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->RESERVED_REMOTE:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    if-ne p2, v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 p2, 0x1

    :goto_3
    if-nez p2, :cond_7

    .line 10
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    if-eqz p2, :cond_a

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->k:I

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->g:I

    if-lt v0, v1, :cond_a

    .line 11
    :cond_8
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->REFUSED_STREAM:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum active streams violated for this endpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_9

    iget p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->g:I

    goto :goto_4

    :cond_9
    iget p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->h:I

    :goto_4
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, p2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 12
    :cond_a
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->s()Z

    move-result p2

    if-nez p2, :cond_b

    return-void

    .line 13
    :cond_b
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v0, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "Attempted to create stream id %d after connection was closed"

    .line 15
    invoke-static {p2, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 16
    :cond_c
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->REFUSED_STREAM:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;->GRACEFUL_SHUTDOWN:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    const-string v1, "Stream IDs are exhausted for this endpoint."

    invoke-direct {p1, p2, v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    throw p1

    .line 17
    :cond_d
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v0, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    iget p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Request stream %d is behind the next expected stream %d"

    .line 19
    invoke-static {p2, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->closedStreamError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method private g(I)V
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->c:I

    if-le p1, v0, :cond_0

    if-ltz v0, :cond_0

    .line 2
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->c:I

    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 3
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->b:I

    .line 4
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->k:I

    return-void
.end method

.method private h()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j(I)V
    .locals 0

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->d:I

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->h:I

    return v0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->j:I

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->h:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(IZ)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->IDLE:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->h()Z

    move-result v1

    invoke-static {p1, v0, v1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->q(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;ZZ)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object p2

    .line 2
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->e(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;)V

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    invoke-direct {v0, v1, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;)V

    .line 4
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->g(I)V

    .line 5
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;)V

    .line 6
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->q()V

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->a:Z

    return v0
.end method

.method public k()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    :goto_0
    return-object v0
.end method

.method public l(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->localSideOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->remoteSideOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2
    :goto_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->k()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object p2

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->x()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->h()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->RESERVED_LOCAL:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    goto :goto_1

    :cond_1
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->RESERVED_REMOTE:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    .line 4
    :goto_1
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->e(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;)V

    .line 5
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    invoke-direct {v0, v1, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;)V

    .line 6
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->g(I)V

    .line 7
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;)V

    return-object v0

    .line 8
    :cond_2
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Server push not allowed to opposite endpoint"

    invoke-static {p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 9
    :cond_3
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "Stream %d is not open for sending push promise"

    invoke-static {p1, p2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 10
    :cond_4
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Parent stream missing"

    invoke-static {p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method public m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->j:I

    return v0
.end method

.method public o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    const-string v0, "flowController"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;

    return-void
.end method

.method public p(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->r(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->v()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public q(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Z
    .locals 1

    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;

    if-eqz v0, :cond_0

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;->s()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public r(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_1

    iget-boolean v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->a:Z

    and-int/2addr p1, v1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public s(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Servers do not allow push"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->e:Z

    return-void
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->d:I

    return v0
.end method

.method public u(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->h:I

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->B()V

    return-void
.end method

.method public v()I
    .locals 2

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->b:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic w(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->l(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;

    move-result-object p1

    return-object p1
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->e:Z

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->c:I

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->c:I

    :cond_0
    return v0
.end method

.method public bridge synthetic z(IZ)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->f(IZ)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$g;

    move-result-object p1

    return-object p1
.end method
