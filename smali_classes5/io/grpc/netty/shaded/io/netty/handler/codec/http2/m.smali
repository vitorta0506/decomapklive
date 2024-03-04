.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;
    }
.end annotation


# static fields
.field private static final h:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

.field private final b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

.field private final c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;

.field private final d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

.field private e:I

.field private f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;

.field private g:Lio/grpc/netty/shaded/io/netty/channel/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->h:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$b;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$b;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$b;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    .line 5
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->e:I

    const-string v0, "connection"

    .line 6
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    const-string v0, "streamWriteDistributor"

    .line 7
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;

    .line 8
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->a()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    .line 9
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->d()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    .line 10
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->d()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->H(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$b;)V

    .line 12
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;

    iget p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->e:I

    invoke-virtual {p2, v0, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;I)V

    .line 13
    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$a;

    invoke-direct {p2, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)V

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->g(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$b;)V
    .locals 1

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;)V

    invoke-direct {p0, p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$b;)V

    return-void
.end method

.method static synthetic A(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;

    return-object p0
.end method

.method static synthetic B(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)I
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->E()I

    move-result p0

    return p0
.end method

.method static synthetic C(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    return-object p0
.end method

.method static synthetic D(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)I
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->L()I

    move-result p0

    return p0
.end method

.method private E()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->b()I

    move-result v0

    return v0
.end method

.method private F()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->g:Lio/grpc/netty/shaded/io/netty/channel/m;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private G()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->g:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->q0()Z

    move-result v0

    return v0
.end method

.method private I()I
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->g:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->S()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    if-lez v1, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->J()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->b()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private J()I
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->g:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->d()I

    move-result v0

    const v1, 0x8000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private K(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    return-object p1
.end method

.method private L()I
    .locals 2

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->E()I

    move-result v0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->I()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method static synthetic q(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    return-object p0
.end method

.method static synthetic r(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->K(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Z
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->G()Z

    move-result p0

    return p0
.end method

.method static synthetic t(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    return-object p0
.end method

.method static synthetic u(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Z
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->F()Z

    move-result p0

    return p0
.end method

.method static synthetic v()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->h:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-object v0
.end method

.method static synthetic w(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)I
    .locals 0

    iget p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->e:I

    return p0
.end method

.method static synthetic x(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;I)I
    .locals 0

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->e:I

    return p1
.end method

.method static synthetic y(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;

    return-object p0
.end method

.method static synthetic z(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->g:Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object p0
.end method


# virtual methods
.method public H(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$b;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$b;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;

    return-void
.end method

.method public b(IISZ)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;->b(IISZ)V

    return-void
.end method

.method public c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;)V
    .locals 1

    const-string v0, "frame"

    .line 1
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->K(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->g:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {p2, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;->d(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public d(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    const-string v0, "ctx"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/m;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->g:Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->o()V

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->F()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->g()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->l()V

    return-void
.end method

.method public j(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->g(I)V

    return-void
.end method

.method public l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->K(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;I)V

    return-void
.end method

.method public n(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Z
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->K(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->c()Z

    move-result p1

    return p1
.end method

.method public o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->c()V

    return-void
.end method

.method public p()Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->g:Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object v0
.end method
