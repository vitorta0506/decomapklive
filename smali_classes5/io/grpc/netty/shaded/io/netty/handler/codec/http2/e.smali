.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$b;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;
    }
.end annotation


# static fields
.field private static final k:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# instance fields
.field private a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

.field private final b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

.field private c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

.field private final d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

.field private final e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;

.field private f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

.field private final g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;

.field private final h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y0;

.field private final i:Z

.field private final j:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->k:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;)V
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;Z)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;Z)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;ZZ)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;ZZ)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$a;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    .line 6
    iput-boolean p6, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->i:Z

    if-eqz p5, :cond_0

    .line 7
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y0;

    goto :goto_0

    .line 8
    :cond_0
    instance-of p5, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y0;

    if-eqz p5, :cond_2

    .line 9
    move-object p5, p2

    check-cast p5, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y0;

    iput-object p5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y0;

    :goto_0
    const-string p5, "connection"

    .line 10
    invoke-static {p1, p5}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    iput-object p5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    .line 11
    invoke-interface {p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->a()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    move-result-object p5

    iput-object p5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    const-string p5, "frameReader"

    .line 12
    invoke-static {p3, p5}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;

    const-string p3, "encoder"

    .line 13
    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    const-string p3, "requestVerifier"

    .line 14
    invoke-static {p4, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;

    .line 15
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object p3

    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;

    move-result-object p3

    if-nez p3, :cond_1

    .line 16
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object p3

    new-instance p4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    invoke-direct {p4, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;)V

    invoke-interface {p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;)V

    .line 17
    :cond_1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->Y0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;

    return-void

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "disabling autoAckSettings requires the encoder to be a "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y0;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private A(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)I
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)I

    move-result p1

    return p1
.end method

.method private C(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$b;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->m()Z

    move-result v1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$b;->a(ZIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    .line 3
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p2

    if-eqz p3, :cond_0

    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    invoke-interface {p1, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;)Ljava/lang/Object;

    .line 4
    :cond_0
    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    return-object p0
.end method

.method static synthetic b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->i:Z

    return p0
.end method

.method static synthetic c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;

    return-object p0
.end method

.method static synthetic e()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->k:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-object v0
.end method

.method static synthetic h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    return-object p0
.end method

.method static synthetic i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    return-object p1
.end method

.method static synthetic j(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)I
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->A(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)I

    move-result p0

    return p0
.end method

.method static synthetic k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->C(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;IZ)V

    return-void
.end method

.method static synthetic o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    return-object p0
.end method

.method static synthetic p(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    return-object p0
.end method

.method static synthetic q(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    return-object p0
.end method

.method static synthetic r(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    return-object p0
.end method

.method static synthetic s(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;

    return-object p0
.end method

.method static synthetic t(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y0;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y0;

    return-object p0
.end method


# virtual methods
.method public H1()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;
    .locals 5

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;-><init>()V

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;->configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0$a;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0$a;->a()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0$a;

    move-result-object v2

    .line 4
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0$a;->c()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k0;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;

    move-result-object v3

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->A(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    .line 6
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v3

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->A()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->C(J)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    .line 7
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0$a;->c()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->y(J)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    .line 8
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k0;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->E(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    .line 9
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0$a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->G(J)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    .line 10
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->I(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    :cond_0
    return-object v0
.end method

.method public S(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    return-void
.end method

.method public X0()Z
    .locals 2

    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;->close()V

    return-void
.end method

.method public connection()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    return-object v0
.end method

.method public f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;)V
    .locals 1

    const-string v0, "lifecycleManager"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    return-void
.end method

.method public final m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;

    return-object v0
.end method

.method public n0(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "Lkg/j;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    invoke-interface {p3, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;->T0(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    return-void
.end method

.method protected v(J)J
    .locals 0

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method w(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->m(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;)V

    .line 2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {p1, p2, p3, p4, p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->j(IJLkg/j;)V

    return-void
.end method

.method y(Lio/grpc/netty/shaded/io/netty/channel/m;BILio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;Lkg/j;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->j(Lio/grpc/netty/shaded/io/netty/channel/m;BILio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;Lkg/j;)V

    return-void
.end method
