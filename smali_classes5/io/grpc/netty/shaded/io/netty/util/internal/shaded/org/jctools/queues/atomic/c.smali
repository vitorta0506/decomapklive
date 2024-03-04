.class abstract Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;
.super Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/d;
.source "SourceFile"

# interfaces
.implements Lvg/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/d<",
        "TE;>;",
        "Lvg/l<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/Object;

.field private static final l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->k:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/d;-><init>()V

    const/4 v0, 0x2

    const-string v1, "initialCapacity"

    .line 2
    invoke-static {p1, v0, v1}, Lwg/b;->a(IILjava/lang/String;)I

    .line 3
    invoke-static {p1}, Lwg/a;->c(I)I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    shl-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    add-int/lit8 p1, p1, 0x1

    .line 4
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/d;->i:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/d;->h:J

    .line 7
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 8
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->d:J

    .line 9
    invoke-virtual {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/d;->z(J)V

    return-void
.end method

.method static synthetic B()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic F()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->l:Ljava/lang/Object;

    return-object v0
.end method

.method private J(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;J)TE;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->d:J

    invoke-static {p2, p3, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->f(JJ)I

    move-result p2

    .line 2
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->e(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "new buffer must have at least one element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private K(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;J)TE;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->d:J

    invoke-static {p2, p3, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->f(JJ)I

    move-result v0

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->e(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->g(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    const-wide/16 v2, 0x2

    add-long/2addr p2, v2

    .line 4
    invoke-virtual {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->u(J)V

    return-object v1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "new buffer must have at least one element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static L(J)I
    .locals 2

    const-wide/16 v0, 0x2

    add-long/2addr p0, v0

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->f(JJ)I

    move-result p0

    return p0
.end method

.method private M(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;J)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->L(J)I

    move-result p2

    .line 2
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->e(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->d(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    shl-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->d:J

    .line 5
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->l:Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->g(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    return-object p3
.end method

.method private N(JJJ)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->f()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->H(J)J

    move-result-wide p1

    add-long/2addr p1, v0

    const/4 v2, 0x1

    cmp-long v3, p1, p3

    if-lez v3, :cond_1

    .line 3
    invoke-virtual {p0, p5, p6, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/d;->x(JJ)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    invoke-virtual {p0, p3, p4, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->G(JJ)J

    move-result-wide p1

    const-wide/16 p5, 0x0

    cmp-long v0, p1, p5

    if-gtz v0, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const-wide/16 p1, 0x1

    add-long/2addr p1, p3

    .line 5
    invoke-virtual {p0, p3, p4, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/i;->g(JJ)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    return v2
.end method

.method private O(JLjava/util/concurrent/atomic/AtomicReferenceArray;JLjava/lang/Object;Lvg/l$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;JTE;",
            "Lvg/l$a<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->I(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result v0

    .line 2
    :try_start_0
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/d;->i:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v0, v0, -0x2

    shl-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    .line 4
    iput-wide v2, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/d;->h:J

    .line 5
    invoke-static {p4, p5, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->f(JJ)I

    move-result v0

    .line 6
    invoke-static {p4, p5, v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->f(JJ)I

    move-result v4

    if-nez p6, :cond_0

    .line 7
    invoke-interface {p7}, Lvg/l$a;->get()Ljava/lang/Object;

    move-result-object p6

    :cond_0
    invoke-static {v1, v4, p6}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->g(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 8
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->L(J)I

    move-result p1

    invoke-static {p3, p1, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->g(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->f()J

    move-result-wide p1

    .line 10
    invoke-virtual {p0, p4, p5, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->G(JJ)J

    move-result-wide p1

    const-string p6, "availableInQueue"

    .line 11
    invoke-static {p1, p2, p6}, Lwg/b;->c(JLjava/lang/String;)J

    .line 12
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, p4

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/d;->z(J)V

    const-wide/16 p1, 0x2

    add-long/2addr p4, p1

    .line 13
    invoke-virtual {p0, p4, p5}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/i;->m(J)V

    .line 14
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->k:Ljava/lang/Object;

    invoke-static {p3, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->g(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p0, p4, p5}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/i;->m(J)V

    .line 16
    throw p1
.end method


# virtual methods
.method protected abstract G(JJ)J
.end method

.method protected abstract H(J)J
.end method

.method protected abstract I(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;)I"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .locals 5

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->f()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/i;->d()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v6, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->f()J

    move-result-wide v2

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/i;->d()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceArray;JJ)V

    return-object v6
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    move-object v8, p0

    .line 1
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/d;->y()J

    move-result-wide v5

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/i;->d()J

    move-result-wide v9

    const-wide/16 v0, 0x1

    and-long v2, v9, v0

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-wide v11, v8, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/d;->h:J

    .line 5
    iget-object v7, v8, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/d;->i:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v13, 0x1

    cmp-long v0, v5, v9

    if-gtz v0, :cond_4

    move-object v0, p0

    move-wide v1, v11

    move-wide v3, v9

    .line 6
    invoke-direct/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->N(JJJ)I

    move-result v0

    if-eq v0, v13, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    move-object v0, p0

    move-wide v1, v11

    move-object v3, v7

    move-wide v4, v9

    move-object/from16 v6, p1

    move-object v7, v14

    .line 7
    invoke-direct/range {v0 .. v7}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->O(JLjava/util/concurrent/atomic/AtomicReferenceArray;JLjava/lang/Object;Lvg/l$a;)V

    return v13

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_1
    const-wide/16 v0, 0x2

    add-long/2addr v0, v9

    .line 8
    invoke-virtual {p0, v9, v10, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/i;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    invoke-static {v9, v10, v11, v12}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->f(JJ)I

    move-result v0

    move-object/from16 v1, p1

    .line 10
    invoke-static {v7, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->g(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    return v13

    :cond_5
    move-object/from16 v1, p1

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->n()J

    move-result-wide v1

    .line 3
    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->d:J

    .line 4
    invoke-static {v1, v2, v3, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->f(JJ)I

    move-result v5

    .line 5
    invoke-static {v0, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->e(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 6
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/i;->d()J

    move-result-wide v7

    cmp-long v9, v1, v7

    if-eqz v9, :cond_1

    .line 7
    :cond_0
    invoke-static {v0, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->e(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 8
    :cond_1
    sget-object v5, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->k:Ljava/lang/Object;

    if-ne v6, v5, :cond_2

    .line 9
    invoke-direct {p0, v0, v3, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->M(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->J(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v6
.end method

.method public poll()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->n()J

    move-result-wide v1

    .line 3
    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->d:J

    .line 4
    invoke-static {v1, v2, v3, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->f(JJ)I

    move-result v5

    .line 5
    invoke-static {v0, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->e(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    .line 6
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/i;->d()J

    move-result-wide v8

    cmp-long v6, v1, v8

    if-eqz v6, :cond_1

    .line 7
    :cond_0
    invoke-static {v0, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->e(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_1
    return-object v7

    .line 8
    :cond_2
    :goto_0
    sget-object v8, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->k:Ljava/lang/Object;

    if-ne v6, v8, :cond_3

    .line 9
    invoke-direct {p0, v0, v3, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->M(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    .line 10
    invoke-direct {p0, v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->K(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 11
    :cond_3
    invoke-static {v0, v5, v7}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->g(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    .line 12
    invoke-virtual {p0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->u(J)V

    return-object v6
.end method

.method public size()I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->f()J

    move-result-wide v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/i;->d()J

    move-result-wide v2

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->f()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    sub-long/2addr v2, v4

    const/4 v0, 0x1

    shr-long v0, v2, v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    long-to-int v1, v0

    return v1

    :cond_1
    move-wide v0, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
