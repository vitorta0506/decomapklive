.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

.field private final b:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:J

.field private e:Z

.field private f:Z

.field private g:Z

.field final synthetic h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 3
    new-instance p1, Ljava/util/ArrayDeque;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->b:Ljava/util/Deque;

    return-void
.end method

.method static synthetic d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    return-object p0
.end method

.method private f(I)V
    .locals 3

    neg-int p1, p1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->C(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->k(I)I

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->k(I)I
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid window state when writing frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private g(IZ)V
    .locals 0

    neg-int p1, p1

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->j(IZ)V

    return-void
.end method

.method private i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->b:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;->size()I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->j(IZ)V

    return-void
.end method

.method private j(IZ)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->d:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->d:J

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->y(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->e(I)V

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->A(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$a;)V

    :cond_0
    return-void
.end method

.method private o()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;

    return-object v0
.end method

.method private q()I
    .locals 2

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->c:I

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->B(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private s(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->g(IZ)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->z(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;->d(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->d:J

    return-wide v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->c:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method e(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->g:Z

    .line 2
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Stream closed before write could take place"

    invoke-static {v1, p1, p2, v3, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    .line 5
    :cond_1
    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->s(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;)V

    .line 6
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->b:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;

    if-nez v0, :cond_1

    .line 7
    :cond_2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->A(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$a;)V

    .line 8
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->y(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->j(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)V

    return-void
.end method

.method h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;)V

    return-void

    .line 3
    :cond_0
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;->size()I

    move-result v1

    .line 4
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->z(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;->b(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;->size()I

    move-result p1

    sub-int/2addr p1, v1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->j(IZ)V

    return-void

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;)V

    return-void
.end method

.method k(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    if-lez p1, :cond_1

    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    .line 1
    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->c:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result p1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->FLOW_CONTROL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 3
    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Window size overflow for stream: %d"

    .line 4
    invoke-static {p1, v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->c:I

    .line 6
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->A(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$a;)V

    .line 7
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->c:I

    return p1
.end method

.method l()Z
    .locals 5

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->b()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->a()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method m(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->e:Z

    return-void
.end method

.method n()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->e:Z

    return v0
.end method

.method p(I)V
    .locals 0

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->c:I

    return-void
.end method

.method r(I)I
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v3, p1

    const/4 v4, 0x0

    .line 2
    :goto_0
    :try_start_1
    iget-boolean v5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->g:Z

    if-nez v5, :cond_2

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->o()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->q()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-gtz v6, :cond_0

    .line 4
    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;->size()I

    move-result v7

    if-lez v7, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;->size()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    iget-object v7, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->z(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v7

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface {v5, v7, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;->a(Lio/grpc/netty/shaded/io/netty/channel/m;I)V

    .line 7
    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 8
    iget-object v6, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->b:Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    .line 9
    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :cond_1
    :try_start_3
    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;->size()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;->size()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 11
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_1
    if-nez v4, :cond_4

    const/4 v0, -0x1

    .line 12
    iput-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->f:Z

    sub-int/2addr p1, v3

    .line 13
    invoke-direct {p0, p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->g(IZ)V

    .line 14
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->f(I)V

    .line 15
    iget-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->g:Z

    if-eqz p1, :cond_3

    .line 16
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    invoke-virtual {p0, p1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->e(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;)V

    :cond_3
    return v0

    .line 17
    :cond_4
    iput-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->f:Z

    sub-int/2addr p1, v3

    .line 18
    invoke-direct {p0, p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->g(IZ)V

    .line 19
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->f(I)V

    .line 20
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->g:Z

    if-eqz v0, :cond_5

    .line 21
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    invoke-virtual {p0, v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->e(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_1
    move-exception v4

    goto :goto_2

    :catchall_2
    move-exception v4

    move v3, p1

    .line 22
    :goto_2
    :try_start_4
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->g:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 23
    iput-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->f:Z

    sub-int/2addr p1, v3

    .line 24
    invoke-direct {p0, p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->g(IZ)V

    .line 25
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->f(I)V

    .line 26
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->g:Z

    if-eqz v0, :cond_5

    .line 27
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    invoke-virtual {p0, v0, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->e(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return p1

    :catchall_3
    move-exception v0

    .line 28
    iput-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->f:Z

    sub-int/2addr p1, v3

    .line 29
    invoke-direct {p0, p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->g(IZ)V

    .line 30
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->f(I)V

    .line 31
    iget-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->g:Z

    if-eqz p1, :cond_6

    .line 32
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    invoke-virtual {p0, p1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->e(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;)V

    .line 33
    :cond_6
    throw v0
.end method

.method public stream()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    return-object v0
.end method
