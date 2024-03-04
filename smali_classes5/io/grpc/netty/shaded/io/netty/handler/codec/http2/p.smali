.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;
    }
.end annotation


# instance fields
.field private final a:[Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

.field private final b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

.field private final c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;

.field private final d:B

.field private final e:Z

.field private final f:I

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x200

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;-><init>(ZII)V

    return-void
.end method

.method constructor <init>(ZII)V
    .locals 7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    sget-object v3, Lio/grpc/netty/shaded/io/netty/util/c;->f:Lio/grpc/netty/shaded/io/netty/util/c;

    const/4 v1, -0x1

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, v3

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;)V

    iput-object v6, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    .line 5
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;-><init>()V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;

    .line 6
    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->e:Z

    const-wide/16 v0, 0x1000

    .line 7
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->h:J

    const-wide v0, 0xffffffffL

    .line 8
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->i:J

    const/16 p1, 0x80

    .line 9
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->b(I)I

    move-result p1

    new-array p1, p1, [Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->a:[Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    .line 10
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->d:B

    .line 11
    iput-object v6, v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    iput-object v6, v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    .line 12
    iput p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->f:I

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)V
    .locals 9

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->h:J

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->b()V

    return-void

    .line 3
    :cond_0
    :goto_0
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->h:J

    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->g:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, p3

    if-gez v2, :cond_1

    .line 4
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->r()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->s(Ljava/lang/CharSequence;)I

    move-result v4

    .line 6
    invoke-direct {p0, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->p(I)I

    move-result v0

    .line 7
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->a:[Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    aget-object v8, v1, v0

    .line 8
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    iget-object v2, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    iget v2, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->g:I

    add-int/lit8 v7, v2, -0x1

    move-object v3, v1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;)V

    .line 9
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->a:[Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    aput-object v1, p1, v0

    .line 10
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    invoke-static {v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;)V

    .line 11
    iget-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->g:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->g:J

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->a:[Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    iput-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    iput-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->g:J

    return-void
.end method

.method private c(Lkg/j;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJ)V
    .locals 14

    move-object v6, p0

    move-object v1, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-wide/from16 v9, p5

    if-eqz p4, :cond_0

    .line 1
    invoke-direct {p0, v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->o(Ljava/lang/CharSequence;)I

    move-result v5

    .line 2
    sget-object v4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->i(Lkg/j;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;I)V

    return-void

    .line 3
    :cond_0
    iget-wide v2, v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->h:J

    const-wide/16 v4, 0x0

    const/4 v0, -0x1

    const/4 v11, 0x7

    const/16 v12, 0x80

    cmp-long v13, v2, v4

    if-nez v13, :cond_2

    .line 4
    invoke-static/range {p2 .. p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 5
    invoke-static/range {p2 .. p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->c(Ljava/lang/CharSequence;)I

    move-result v5

    .line 6
    sget-object v4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->i(Lkg/j;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1, v12, v11, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->g(Lkg/j;III)V

    :goto_0
    return-void

    :cond_2
    cmp-long v4, v9, v2

    if-lez v4, :cond_3

    .line 8
    invoke-direct {p0, v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->o(Ljava/lang/CharSequence;)I

    move-result v5

    .line 9
    sget-object v4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->i(Lkg/j;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;I)V

    return-void

    .line 10
    :cond_3
    invoke-direct {p0, v7, v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->l(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 11
    iget v0, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->g:I

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->m(I)I

    move-result v0

    sget v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->d:I

    add-int/2addr v0, v2

    .line 12
    invoke-static {p1, v12, v11, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->g(Lkg/j;III)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-static/range {p2 .. p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    if-eq v2, v0, :cond_5

    .line 14
    invoke-static {p1, v12, v11, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->g(Lkg/j;III)V

    goto :goto_1

    .line 15
    :cond_5
    invoke-direct {p0, v9, v10}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->k(J)V

    .line 16
    sget-object v4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    invoke-direct {p0, v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->o(Ljava/lang/CharSequence;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->i(Lkg/j;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;I)V

    .line 17
    invoke-direct {p0, v7, v8, v9, v10}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)V

    :goto_1
    return-void
.end method

.method private e(ILkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 4
    invoke-static {v4, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 5
    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->i:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 v5, 0x0

    .line 6
    invoke-static {p1, v3, v4, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->d(IJZ)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->f(Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;)V

    return-void
.end method

.method private f(Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    .line 4
    invoke-interface {p3, v4, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    .line 5
    invoke-static {v4, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)J

    move-result-wide v7

    move-object v2, p0

    move-object v3, p1

    .line 6
    invoke-direct/range {v2 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->c(Lkg/j;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static g(Lkg/j;III)V
    .locals 2

    int-to-long v0, p3

    invoke-static {p0, p1, p2, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->h(Lkg/j;IIJ)V

    return-void
.end method

.method private static h(Lkg/j;IIJ)V
    .locals 3

    const/16 v0, 0xff

    rsub-int/lit8 p2, p2, 0x8

    ushr-int p2, v0, p2

    int-to-long v0, p2

    cmp-long v2, p3, v0

    if-gez v2, :cond_0

    int-to-long p1, p1

    or-long/2addr p1, p3

    long-to-int p2, p1

    .line 1
    invoke-virtual {p0, p2}, Lkg/j;->u2(I)Lkg/j;

    goto :goto_1

    :cond_0
    or-int/2addr p1, p2

    .line 2
    invoke-virtual {p0, p1}, Lkg/j;->u2(I)Lkg/j;

    sub-long/2addr p3, v0

    :goto_0
    const-wide/16 p1, -0x80

    and-long/2addr p1, p3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    const-wide/16 p1, 0x7f

    and-long/2addr p1, p3

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    long-to-int p2, p1

    .line 3
    invoke-virtual {p0, p2}, Lkg/j;->u2(I)Lkg/j;

    const/4 p1, 0x7

    ushr-long/2addr p3, p1

    goto :goto_0

    :cond_1
    long-to-int p1, p3

    .line 4
    invoke-virtual {p0, p1}, Lkg/j;->u2(I)Lkg/j;

    :goto_1
    return-void
.end method

.method private i(Lkg/j;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p5, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$a;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v3, p4

    if-eq p4, v0, :cond_5

    const/4 v0, 0x2

    const/4 v3, 0x4

    if-eq p4, v0, :cond_3

    const/4 v0, 0x3

    if-ne p4, v0, :cond_2

    const/16 p4, 0x10

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    .line 2
    :goto_1
    invoke-static {p1, p4, v3, p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->g(Lkg/j;III)V

    goto :goto_4

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/Error;

    const-string p2, "should not reach here"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 p5, 0x0

    .line 4
    :goto_2
    invoke-static {p1, v1, v3, p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->g(Lkg/j;III)V

    goto :goto_4

    :cond_5
    const/16 p4, 0x40

    const/4 v0, 0x6

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 p5, 0x0

    .line 5
    :goto_3
    invoke-static {p1, p4, v0, p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->g(Lkg/j;III)V

    :goto_4
    if-nez v2, :cond_7

    .line 6
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->j(Lkg/j;Ljava/lang/CharSequence;)V

    .line 7
    :cond_7
    invoke-direct {p0, p1, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->j(Lkg/j;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private j(Lkg/j;Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->f:I

    const/4 v2, 0x7

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;

    .line 2
    invoke-virtual {v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->e(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/16 v1, 0x80

    .line 3
    invoke-static {p1, v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->g(Lkg/j;III)V

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;

    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->c(Lkg/j;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p1, v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->g(Lkg/j;III)V

    .line 6
    instance-of v0, p2, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v0, :cond_1

    .line 7
    check-cast p2, Lio/grpc/netty/shaded/io/netty/util/c;

    .line 8
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/util/c;->a()[B

    move-result-object v0

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/util/c;->b()I

    move-result v1

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lkg/j;->B2([BII)Lkg/j;

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/h;->e:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2, v0}, Lkg/j;->D2(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    :goto_0
    return-void
.end method

.method private k(J)V
    .locals 4

    .line 1
    :goto_0
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->h:J

    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->g:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->q()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->r()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private l(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->q()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->s(Ljava/lang/CharSequence;)I

    move-result v0

    .line 3
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->p(I)I

    move-result v2

    .line 4
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->a:[Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    aget-object v2, v3, v2

    :goto_0
    if-eqz v2, :cond_2

    .line 5
    iget v3, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->f:I

    if-ne v3, v0, :cond_1

    iget-object v3, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->b:Ljava/lang/CharSequence;

    invoke-static {p2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->a:Ljava/lang/CharSequence;

    invoke-static {p1, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 6
    :cond_1
    iget-object v2, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private m(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    iget v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->g:I

    sub-int/2addr p1, v0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0
.end method

.method private n(Ljava/lang/CharSequence;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->q()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->s(Ljava/lang/CharSequence;)I

    move-result v0

    .line 3
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->p(I)I

    move-result v2

    .line 4
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->a:[Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    aget-object v2, v3, v2

    :goto_0
    if-eqz v2, :cond_2

    .line 5
    iget v3, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->f:I

    if-ne v3, v0, :cond_1

    iget-object v3, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->a:Ljava/lang/CharSequence;

    invoke-static {p1, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget p1, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->g:I

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->m(I)I

    move-result p1

    return p1

    .line 7
    :cond_1
    iget-object v2, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private o(Ljava/lang/CharSequence;)I
    .locals 2

    .line 1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->c(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->n(Ljava/lang/CharSequence;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    sget p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->d:I

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method private p(I)I
    .locals 1

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->d:B

    and-int/2addr p1, v0

    return p1
.end method

.method private r()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->g:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return-object v2

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    .line 3
    iget v1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->f:I

    .line 4
    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->p(I)I

    move-result v1

    .line 5
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->a:[Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    aget-object v3, v3, v1

    move-object v4, v3

    :goto_0
    if-eqz v3, :cond_3

    .line 6
    iget-object v5, v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    if-ne v3, v0, :cond_2

    if-ne v4, v0, :cond_1

    .line 7
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->a:[Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    aput-object v5, v2, v1

    goto :goto_1

    .line 8
    :cond_1
    iput-object v5, v4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    .line 9
    :goto_1
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;)V

    .line 10
    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->g:J

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->a()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->g:J

    return-object v0

    :cond_2
    move-object v4, v3

    move-object v3, v5

    goto :goto_0

    :cond_3
    return-object v2
.end method


# virtual methods
.method public d(ILkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->f(Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->e(ILkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;)V

    :goto_0
    return-void
.end method

.method q()I
    .locals 5

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    iget v1, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->g:I

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;

    iget v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p$b;->g:I

    sub-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x1

    :goto_0
    return v0
.end method

.method public s(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    const-wide v0, 0xffffffffL

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    cmp-long v4, p1, v0

    if-gtz v4, :cond_0

    .line 1
    iput-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->i:J

    return-void

    .line 2
    :cond_0
    sget-object v4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v0

    const-string p1, "Header List Size must be >= %d and <= %d but was %d"

    .line 4
    invoke-static {v4, p1, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method public t(Lkg/j;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    const-wide v0, 0xffffffffL

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_1

    cmp-long v4, p2, v0

    if-gtz v4, :cond_1

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->h:J

    cmp-long v4, v0, p2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iput-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->h:J

    .line 3
    invoke-direct {p0, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->k(J)V

    const/16 v0, 0x20

    const/4 v1, 0x5

    .line 4
    invoke-static {p1, v0, v1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->h(Lkg/j;IIJ)V

    return-void

    .line 5
    :cond_1
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v2

    const/4 v0, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v4, v0

    const-string p2, "Header Table Size must be >= %d and <= %d but was %d"

    .line 7
    invoke-static {p1, p2, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method
