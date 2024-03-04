.class public final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$c;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$f;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$e;
    }
.end annotation


# static fields
.field static final h:I


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

.field private final b:Ltg/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltg/e<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lio/grpc/netty/shaded/io/netty/util/internal/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/v<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

.field private final e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

.field private f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "io.grpc.netty.shaded.io.netty.http2.childrenMapSize"

    invoke-static {v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->h:I

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;I)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    .line 3
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->f:I

    const-string v0, "maxStateOnlySize"

    .line 4
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    if-nez p2, :cond_0

    .line 5
    invoke-static {}, Ltg/c;->a()Ltg/e;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->b:Ltg/e;

    .line 6
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/i;->c()Lio/grpc/netty/shaded/io/netty/util/internal/i;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->c:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ltg/d;

    invoke-direct {v0, p2}, Ltg/d;-><init>(I)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->b:Ltg/e;

    .line 8
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/g;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$e;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$e;

    add-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/g;-><init>(Ljava/util/Comparator;I)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->c:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    .line 9
    :goto_0
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->g:I

    .line 10
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    .line 11
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->a()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    .line 12
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->d()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 13
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    invoke-interface {v0, p2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;

    invoke-direct {p2, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)V

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->g(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;)V

    return-void
.end method

.method static synthetic d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)Ltg/e;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->b:Ltg/e;

    return-object p0
.end method

.method static synthetic e(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    return-object p0
.end method

.method static synthetic f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)Lio/grpc/netty/shaded/io/netty/util/internal/v;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->c:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    return-object p0
.end method

.method static synthetic g(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    return-object p0
.end method

.method static synthetic h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)I
    .locals 0

    iget p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->g:I

    return p0
.end method

.method private k(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$b;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->f:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    invoke-virtual {p3, v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->D(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$b;)V

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget p1, p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->f:I

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->B(IZ)V

    :cond_0
    return v0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->l(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$b;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)I

    move-result p1

    return p1
.end method

.method private l(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$b;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-wide v0, p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->m:J

    .line 2
    invoke-virtual {p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->n()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    move-result-object v2

    .line 3
    invoke-virtual {p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    move-result-object v3

    .line 4
    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->s()V

    if-nez v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    iget-wide v3, v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->k:J

    iget-wide v5, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->k:J

    sub-long/2addr v3, v5

    iget-short v5, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->o:S

    int-to-long v5, v5

    mul-long v3, v3, v5

    div-long/2addr v3, v0

    iget v5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->f:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    const-wide/32 v5, 0x7fffffff

    .line 6
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 7
    :goto_0
    invoke-direct {p0, p1, p2, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->k(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$b;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)I

    move-result p1

    .line 8
    iget-wide v3, p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->l:J

    int-to-long v5, p1

    add-long/2addr v3, v5

    iput-wide v3, p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->l:J

    .line 9
    invoke-virtual {v2, p3, p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->A(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->z()V

    .line 11
    iget p2, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->h:I

    if-eqz p2, :cond_1

    .line 12
    invoke-virtual {p3, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->z()V

    .line 14
    iget p2, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->h:I

    if-eqz p2, :cond_2

    .line 15
    invoke-virtual {p3, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V

    .line 16
    :cond_2
    throw p1
.end method

.method private n(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->c(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->b:Ltg/e;

    invoke-interface {v0, p1}, Ltg/e;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    :goto_0
    return-object p1
.end method

.method private o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    return-object p1
.end method


# virtual methods
.method public a(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$b;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    iget v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->h:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    iget v2, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->h:I

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->l(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$b;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    iget v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->h:I

    if-eqz v0, :cond_1

    if-gtz p1, :cond_0

    if-ne v2, v0, :cond_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public b(IISZ)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->n(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->g:I

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;I)V

    .line 4
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->c:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->b:Ltg/e;

    invoke-interface {v1, p1, v0}, Ltg/e;->n0(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->n(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 7
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->g:I

    if-nez p1, :cond_2

    return-void

    .line 8
    :cond_2
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    invoke-direct {p1, p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;I)V

    .line 9
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->c:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    invoke-interface {v3, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->b:Ltg/e;

    invoke-interface {v3, p2, p1}, Ltg/e;->n0(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    invoke-virtual {v3, p1, v2, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->v(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;ZLjava/util/List;)V

    .line 13
    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->m(Ljava/util/List;)V

    .line 14
    :cond_3
    iget p2, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->h:I

    if-eqz p2, :cond_4

    iget-object p2, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    if-eqz p2, :cond_4

    .line 15
    iget-wide v3, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->m:J

    iget-short v5, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->o:S

    sub-int v5, p3, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->m:J

    .line 16
    :cond_4
    iput-short p3, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->o:S

    .line 17
    iget-object p2, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    if-ne p1, p2, :cond_5

    if-eqz p4, :cond_9

    iget-object p2, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->c:Ltg/e;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    if-eq p2, v1, :cond_9

    .line 18
    :cond_5
    invoke-virtual {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 19
    new-instance p2, Ljava/util/ArrayList;

    if-eqz p4, :cond_6

    iget-object p3, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->c:Ltg/e;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    goto :goto_0

    :cond_6
    const/4 p3, 0x0

    :goto_0
    add-int/lit8 p3, p3, 0x2

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    iget-object p3, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    invoke-virtual {p3, p1, v2, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->v(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;ZLjava/util/List;)V

    goto :goto_1

    .line 21
    :cond_7
    new-instance p2, Ljava/util/ArrayList;

    if-eqz p4, :cond_8

    iget-object p3, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->c:Ltg/e;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v2

    :cond_8
    add-int/2addr v2, v1

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    :goto_1
    invoke-virtual {p1, v0, p4, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->v(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;ZLjava/util/List;)V

    .line 23
    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->m(Ljava/util/List;)V

    .line 24
    :cond_9
    :goto_2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->c:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    iget p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->g:I

    if-le p1, p2, :cond_a

    .line 25
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->c:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    .line 26
    iget-object p2, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    invoke-virtual {p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->p(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V

    .line 27
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->b:Ltg/e;

    iget p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->e:I

    invoke-interface {p2, p1}, Ltg/e;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_a
    return-void
.end method

.method public c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$a;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$a;->stream()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    move-result-object v0

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$a;)I

    move-result v1

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$a;->b()I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->B(IZ)V

    return-void
.end method

.method public j(I)V
    .locals 1

    const-string v0, "allocationQuantum"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->l(ILjava/lang/String;)I

    .line 2
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->f:I

    return-void
.end method

.method m(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$c;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$c;

    .line 3
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->c:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    iget-object v3, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    invoke-interface {v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/v;->M0(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    iget-object v3, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    if-eqz v3, :cond_0

    iget v4, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->h:I

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v3, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V

    .line 6
    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    iget-object v2, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    iget v1, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->h:I

    invoke-virtual {v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->a(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
