.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/internal/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

.field b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

.field c:Ltg/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltg/e<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lio/grpc/netty/shaded/io/netty/util/internal/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/v<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;",
            ">;"
        }
    .end annotation
.end field

.field final e:I

.field f:I

.field g:I

.field h:I

.field private i:I

.field private j:I

.field k:J

.field l:J

.field m:J

.field private n:B

.field o:S

.field final synthetic p:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V
    .locals 0

    .line 4
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->p:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Ltg/c;->a()Ltg/e;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->c:Ltg/e;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->i:I

    .line 7
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->j:I

    const/16 p1, 0x10

    .line 8
    iput-short p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->o:S

    .line 9
    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 10
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->e:I

    .line 11
    new-instance p1, Lio/grpc/netty/shaded/io/netty/util/internal/g;

    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$f;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$f;

    invoke-direct {p1, p2, p4}, Lio/grpc/netty/shaded/io/netty/util/internal/g;-><init>(Ljava/util/Comparator;I)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V
    .locals 1

    .line 3
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V

    return-void
.end method

.method private d()J
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->c:Ltg/e;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    .line 2
    iget-short v3, v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->o:S

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private e()V
    .locals 2

    new-instance v0, Ltg/d;

    sget v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->h:I

    invoke-direct {v0, v1}, Ltg/d;-><init>(I)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->c:Ltg/e;

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->c:Ltg/e;

    invoke-static {}, Ltg/c;->a()Ltg/e;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->e()V

    :cond_0
    return-void
.end method

.method private o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)Ltg/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;",
            ")",
            "Ltg/e<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->c:Ltg/e;

    iget p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->e:I

    invoke-interface {v0, p1}, Ltg/e;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->c:Ltg/e;

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->e()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->c:Ltg/e;

    iget v2, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->e:I

    invoke-interface {v1, v2, p1}, Ltg/e;->n0(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private r()V
    .locals 1

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->n:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->n:B

    return-void
.end method

.method private t(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->h:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->q(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->h:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->a(I)V

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    if-nez p1, :cond_1

    const p1, 0x7fffffff

    goto :goto_0

    .line 5
    :cond_1
    iget p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->g:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->g:I

    return-void
.end method

.method private x(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "{streamId "

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " streamableBytes "

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " activeCountForTree "

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pseudoTimeQueueIndex "

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->i:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pseudoTimeToWrite "

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->k:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " pseudoTime "

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->l:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " flags "

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->n:B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pseudoTimeQueue.size() "

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " stateOnlyQueueIndex "

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->j:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " parent.streamId "

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->e:I

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "} ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    .line 13
    invoke-direct {v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->x(Ljava/lang/StringBuilder;)V

    const-string v1, ", "

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    const/16 v0, 0x5d

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private y()V
    .locals 1

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->n:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->n:B

    return-void
.end method


# virtual methods
.method A(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;IJ)V
    .locals 4

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->k:J

    iget-wide v2, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->l:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    int-to-long p1, p2

    mul-long p1, p1, p3

    iget-short p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->o:S

    int-to-long p3, p3

    div-long/2addr p1, p3

    add-long/2addr v0, p1

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->k:J

    return-void
.end method

.method B(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->g()Z

    move-result v0

    if-eq v0, p2, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->a(I)V

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->r()V

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 4
    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->a(I)V

    .line 5
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->y()V

    .line 6
    :cond_1
    :goto_0
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->f:I

    return-void
.end method

.method C()Z
    .locals 1

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->n:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method D(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    invoke-interface {p2, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$b;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "byte distribution write error"

    invoke-static {p2, p1, v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method a(I)V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->h:I

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {v1, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->q(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->a(I)V

    :cond_2
    return-void
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/util/internal/g;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/g<",
            "*>;)I"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->p:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)Lio/grpc/netty/shaded/io/netty/util/internal/v;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->j:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->i:I

    :goto_0
    return p1
.end method

.method c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->B(IZ)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    return-void
.end method

.method g()Z
    .locals 2

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->n:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public h(Lio/grpc/netty/shaded/io/netty/util/internal/g;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/g<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->p:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)Lio/grpc/netty/shaded/io/netty/util/internal/v;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->j:I

    goto :goto_0

    .line 3
    :cond_0
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->i:I

    :goto_0
    return-void
.end method

.method i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method j()Z
    .locals 1

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->n:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->l:J

    iput-wide v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->k:J

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V

    return-void
.end method

.method l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->m:J

    iget-short p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->o:S

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->m:J

    return-void
.end method

.method m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    return-object v0
.end method

.method n()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    .line 2
    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->m:J

    iget-short v3, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->o:S

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->m:J

    return-object v0
.end method

.method p(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->c:Ltg/e;

    iget v1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->e:I

    invoke-interface {v0, v1}, Ltg/e;->remove(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->c:Ltg/e;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$c;

    iget-object v2, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    invoke-direct {v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 4
    invoke-direct {p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->t(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V

    .line 5
    iget-object v1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->c:Ltg/e;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->c:Ltg/e;

    invoke-interface {v1}, Ltg/e;->entries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7
    invoke-direct {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->d()J

    move-result-wide v2

    .line 8
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltg/e$a;

    invoke-interface {v4}, Ltg/e$a;->value()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    const-wide/16 v5, 0x1

    .line 9
    iget-short v7, v4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->o:S

    iget-short v8, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->o:S

    mul-int v7, v7, v8

    int-to-long v7, v7

    div-long/2addr v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    long-to-int v6, v5

    int-to-short v5, v6

    iput-short v5, v4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->o:S

    const/4 v5, 0x0

    .line 10
    invoke-virtual {p0, v1, v4, v5, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->w(Ljava/util/Iterator;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;ZLjava/util/List;)V

    .line 11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 12
    :cond_1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->p:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-virtual {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->m(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method q(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/v;->g0(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->m:J

    iget-short p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->o:S

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->m:J

    :cond_0
    return-void
.end method

.method s()V
    .locals 1

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->n:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->n:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->h:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    mul-int/lit16 v1, v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->x(Ljava/lang/StringBuilder;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()V
    .locals 1

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->n:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->n:B

    return-void
.end method

.method v(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;",
            "Z",
            "Ljava/util/List<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$c;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->w(Ljava/util/Iterator;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;ZLjava/util/List;)V

    return-void
.end method

.method w(Ljava/util/Iterator;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ltg/e$a<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;",
            ">;>;",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;",
            "Z",
            "Ljava/util/List<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    if-eq v0, p0, :cond_2

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$c;

    invoke-direct {v1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-direct {p2, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->t(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    iget-object p1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->c:Ltg/e;

    iget v0, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->e:I

    invoke-interface {p1, v0}, Ltg/e;->remove(I)Ljava/lang/Object;

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->f()V

    .line 7
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->c:Ltg/e;

    iget v0, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->e:I

    invoke-interface {p1, v0, p2}, Ltg/e;->n0(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    :cond_2
    if-eqz p3, :cond_3

    .line 8
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->c:Ltg/e;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 9
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)Ltg/e;

    move-result-object p1

    invoke-interface {p1}, Ltg/e;->entries()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 10
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ltg/e$a;

    invoke-interface {p3}, Ltg/e$a;->value()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->w(Ljava/util/Iterator;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;ZLjava/util/List;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method z()V
    .locals 1

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->n:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->n:B

    return-void
.end method
