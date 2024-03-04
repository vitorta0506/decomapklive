.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$f;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$c;
    }
.end annotation


# static fields
.field private static final g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

.field private final b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

.field private c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

.field private d:Lio/grpc/netty/shaded/io/netty/channel/m;

.field private e:F

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$b;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$b;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;FZ)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;FZ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    .line 3
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->f:I

    const-string v0, "connection"

    .line 4
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    .line 5
    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->F(F)V

    .line 6
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->a()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    if-eqz p3, :cond_0

    .line 7
    new-instance p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$c;

    .line 8
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->d()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->f:I

    invoke-direct {p3, p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V

    goto :goto_0

    :cond_0
    new-instance p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;

    .line 9
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->d()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->f:I

    invoke-direct {p3, p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V

    .line 10
    :goto_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->d()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$a;

    invoke-direct {p2, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;)V

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->g(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;)V

    return-void
.end method

.method private A()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->d()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;

    return-object v0
.end method

.method private B(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->A()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;->i(I)Z

    move-result v0

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;->i(I)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method private static D(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Z
    .locals 1

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object p0

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->CLOSED:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private E(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;

    return-object p1
.end method

.method static synthetic q(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    return-object p0
.end method

.method static synthetic r()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;

    return-object v0
.end method

.method static synthetic s(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;)I
    .locals 0

    iget p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->f:I

    return p0
.end method

.method static synthetic t(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->E(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic u(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;)Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->d:Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object p0
.end method

.method static synthetic v(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->B(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;I)Z

    move-result p0

    return p0
.end method

.method static synthetic w(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;)F
    .locals 0

    iget p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->e:F

    return p0
.end method

.method static synthetic x(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Z
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->D(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Z

    move-result p0

    return p0
.end method

.method static synthetic y(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    return-object p0
.end method

.method private static z(F)V
    .locals 4

    float-to-double v0, p0

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-lez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public C(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;
    .locals 1

    const-string v0, "frameWriter"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    return-object p0
.end method

.method public F(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->z(F)V

    .line 2
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->e:F

    return-void
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->f:I

    return v0
.end method

.method public d(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/m;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->d:Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method public e(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)I
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->E(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;->a()I

    move-result p1

    return p1
.end method

.method public bridge synthetic f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->C(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    move-result-object p1

    return-object p1
.end method

.method public h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)I
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->E(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;->f()I

    move-result p1

    return p1
.end method

.method public i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lkg/j;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result p2

    add-int/2addr p2, p3

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->A()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;

    move-result-object p3

    .line 3
    invoke-interface {p3, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;->c(I)V

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->D(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->E(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;

    move-result-object p1

    .line 6
    invoke-interface {p1, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;->e(Z)V

    .line 7
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;->c(I)V

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    .line 8
    invoke-interface {p3, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;->i(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public j(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->f:I

    sub-int v0, p1, v0

    .line 2
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->f:I

    .line 3
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$f;

    invoke-direct {p1, p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$f;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;I)V

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 5
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$f;->b()V

    return-void
.end method

.method public k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)I
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->E(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;->b()I

    move-result p1

    return p1
.end method

.method public l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->E(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;

    move-result-object p1

    .line 2
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;->d(I)V

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;->h()Z

    return-void
.end method

.method public m(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    const-string v0, "numBytes"

    .line 1
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->D(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->E(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->B(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;I)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Returning bytes for the connection window is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method
