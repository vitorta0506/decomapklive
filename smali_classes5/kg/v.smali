.class abstract Lkg/v;
.super Lkg/q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkg/v$b;,
        Lkg/v$c;,
        Lkg/v$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkg/q0;"
    }
.end annotation


# static fields
.field static final G:Z


# instance fields
.field private final A:Lio/grpc/netty/shaded/io/netty/util/internal/m;

.field private final B:Lio/grpc/netty/shaded/io/netty/util/internal/m;

.field private C:J

.field private D:J

.field private final E:Lio/grpc/netty/shaded/io/netty/util/internal/m;

.field final F:Ljava/util/concurrent/atomic/AtomicInteger;

.field final n:Lkg/d0;

.field final o:I

.field final p:I

.field private final q:[Lkg/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkg/a0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final r:Lkg/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/x<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final s:Lkg/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/x<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final t:Lkg/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/x<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final u:Lkg/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/x<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final v:Lkg/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/x<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final w:Lkg/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/x<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkg/y;",
            ">;"
        }
    .end annotation
.end field

.field private y:J

.field private final z:Lio/grpc/netty/shaded/io/netty/util/internal/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    sput-boolean v0, Lkg/v;->G:Z

    return-void
.end method

.method protected constructor <init>(Lkg/d0;IIII)V
    .locals 14

    move-object v6, p0

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v7, p4

    move/from16 v2, p5

    .line 1
    invoke-direct {p0, v0, v1, v7, v2}, Lkg/q0;-><init>(IIII)V

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->r0()Lio/grpc/netty/shaded/io/netty/util/internal/m;

    move-result-object v0

    iput-object v0, v6, Lkg/v;->z:Lio/grpc/netty/shaded/io/netty/util/internal/m;

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->r0()Lio/grpc/netty/shaded/io/netty/util/internal/m;

    move-result-object v0

    iput-object v0, v6, Lkg/v;->A:Lio/grpc/netty/shaded/io/netty/util/internal/m;

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->r0()Lio/grpc/netty/shaded/io/netty/util/internal/m;

    move-result-object v0

    iput-object v0, v6, Lkg/v;->B:Lio/grpc/netty/shaded/io/netty/util/internal/m;

    .line 5
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->r0()Lio/grpc/netty/shaded/io/netty/util/internal/m;

    move-result-object v0

    iput-object v0, v6, Lkg/v;->E:Lio/grpc/netty/shaded/io/netty/util/internal/m;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v6, Lkg/v;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v0, p1

    .line 7
    iput-object v0, v6, Lkg/v;->n:Lkg/d0;

    .line 8
    iput v2, v6, Lkg/v;->p:I

    .line 9
    iget v0, v6, Lkg/q0;->f:I

    iput v0, v6, Lkg/v;->o:I

    .line 10
    invoke-direct {p0, v0}, Lkg/v;->C(I)[Lkg/a0;

    move-result-object v0

    iput-object v0, v6, Lkg/v;->q:[Lkg/a0;

    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, v6, Lkg/v;->q:[Lkg/a0;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 12
    invoke-direct {p0}, Lkg/v;->D()Lkg/a0;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_0
    new-instance v8, Lkg/x;

    const/4 v2, 0x0

    const/16 v3, 0x64

    const v4, 0x7fffffff

    move-object v0, v8

    move-object v1, p0

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lkg/x;-><init>(Lkg/v;Lkg/x;III)V

    iput-object v8, v6, Lkg/v;->w:Lkg/x;

    .line 14
    new-instance v9, Lkg/x;

    const/16 v3, 0x4b

    const/16 v4, 0x64

    move-object v0, v9

    move-object v2, v8

    invoke-direct/range {v0 .. v5}, Lkg/x;-><init>(Lkg/v;Lkg/x;III)V

    iput-object v9, v6, Lkg/v;->v:Lkg/x;

    .line 15
    new-instance v10, Lkg/x;

    const/16 v3, 0x32

    move-object v0, v10

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Lkg/x;-><init>(Lkg/v;Lkg/x;III)V

    iput-object v10, v6, Lkg/v;->r:Lkg/x;

    .line 16
    new-instance v11, Lkg/x;

    const/16 v3, 0x19

    const/16 v4, 0x4b

    move-object v0, v11

    move-object v2, v10

    invoke-direct/range {v0 .. v5}, Lkg/x;-><init>(Lkg/v;Lkg/x;III)V

    iput-object v11, v6, Lkg/v;->s:Lkg/x;

    .line 17
    new-instance v12, Lkg/x;

    const/4 v3, 0x1

    const/16 v4, 0x32

    move-object v0, v12

    move-object v2, v11

    invoke-direct/range {v0 .. v5}, Lkg/x;-><init>(Lkg/v;Lkg/x;III)V

    iput-object v12, v6, Lkg/v;->t:Lkg/x;

    .line 18
    new-instance v13, Lkg/x;

    const/high16 v3, -0x80000000

    const/16 v4, 0x19

    move-object v0, v13

    move-object v2, v12

    invoke-direct/range {v0 .. v5}, Lkg/x;-><init>(Lkg/v;Lkg/x;III)V

    iput-object v13, v6, Lkg/v;->u:Lkg/x;

    .line 19
    invoke-virtual {v8, v9}, Lkg/x;->z(Lkg/x;)V

    .line 20
    invoke-virtual {v9, v10}, Lkg/x;->z(Lkg/x;)V

    .line 21
    invoke-virtual {v10, v11}, Lkg/x;->z(Lkg/x;)V

    .line 22
    invoke-virtual {v11, v12}, Lkg/x;->z(Lkg/x;)V

    const/4 v0, 0x0

    .line 23
    invoke-virtual {v12, v0}, Lkg/x;->z(Lkg/x;)V

    .line 24
    invoke-virtual {v13, v13}, Lkg/x;->z(Lkg/x;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v6, Lkg/v;->x:Ljava/util/List;

    return-void
.end method

.method private C(I)[Lkg/a0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lkg/a0<",
            "TT;>;"
        }
    .end annotation

    new-array p1, p1, [Lkg/a0;

    return-object p1
.end method

.method private D()Lkg/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkg/a0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkg/a0;

    invoke-direct {v0}, Lkg/a0;-><init>()V

    .line 2
    iput-object v0, v0, Lkg/a0;->f:Lkg/a0;

    .line 3
    iput-object v0, v0, Lkg/a0;->g:Lkg/a0;

    return-object v0
.end method

.method private static H(J)Lkg/v$d;
    .locals 0

    invoke-static {p0, p1}, Lkg/w;->r(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lkg/v$d;->a:Lkg/v$d;

    goto :goto_0

    :cond_0
    sget-object p0, Lkg/v$d;->b:Lkg/v$d;

    :goto_0
    return-object p0
.end method

.method private I(Lkg/b0;Lkg/c0;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/b0;",
            "Lkg/c0<",
            "TT;>;II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0, p2, p3, p4}, Lkg/b0;->c(Lkg/v;Lkg/c0;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0, p2, p3, p4, p1}, Lkg/v;->p(Lkg/c0;IILkg/b0;)V

    .line 4
    iget-wide p1, p0, Lkg/v;->y:J

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    iput-wide p1, p0, Lkg/v;->y:J

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private J(Lkg/b0;Lkg/c0;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/b0;",
            "Lkg/c0<",
            "TT;>;II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0, p2, p3, p4}, Lkg/b0;->d(Lkg/v;Lkg/c0;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lkg/v;->q:[Lkg/a0;

    aget-object v0, v0, p4

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lkg/a0;->g:Lkg/a0;

    if-ne v1, v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 5
    invoke-virtual {v1}, Lkg/a0;->b()J

    move-result-wide v6

    .line 6
    iget-object v3, v1, Lkg/a0;->a:Lkg/w;

    const/4 v5, 0x0

    move-object v4, p2

    move v8, p3

    move-object v9, p1

    invoke-virtual/range {v3 .. v9}, Lkg/w;->n(Lkg/c0;Ljava/nio/ByteBuffer;JILkg/b0;)V

    .line 7
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_3

    .line 8
    monitor-enter p0

    .line 9
    :try_start_1
    invoke-direct {p0, p2, p3, p4, p1}, Lkg/v;->p(Lkg/c0;IILkg/b0;)V

    .line 10
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 11
    :cond_3
    :goto_1
    invoke-direct {p0}, Lkg/v;->x()V

    return-void

    :catchall_1
    move-exception p1

    .line 12
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private n(Lkg/b0;Lkg/c0;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/b0;",
            "Lkg/c0<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lkg/q0;->h(I)I

    move-result v0

    .line 2
    iget v1, p0, Lkg/q0;->h:I

    if-gt v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lkg/v;->J(Lkg/b0;Lkg/c0;II)V

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Lkg/q0;->e:I

    if-ge v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lkg/v;->I(Lkg/b0;Lkg/c0;II)V

    goto :goto_0

    .line 6
    :cond_1
    iget p1, p0, Lkg/v;->p:I

    if-lez p1, :cond_2

    .line 7
    invoke-virtual {p0, p3}, Lkg/q0;->c(I)I

    move-result p3

    .line 8
    :cond_2
    invoke-direct {p0, p2, p3}, Lkg/v;->o(Lkg/c0;I)V

    :goto_0
    return-void
.end method

.method private o(Lkg/c0;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/c0<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lkg/v;->E(I)Lkg/w;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkg/v;->B:Lio/grpc/netty/shaded/io/netty/util/internal/m;

    invoke-virtual {v0}, Lkg/w;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/m;->add(J)V

    .line 3
    invoke-virtual {p1, v0, p2}, Lkg/c0;->K3(Lkg/w;I)V

    .line 4
    iget-object p1, p0, Lkg/v;->A:Lio/grpc/netty/shaded/io/netty/util/internal/m;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/m;->increment()V

    return-void
.end method

.method private p(Lkg/c0;IILkg/b0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/c0<",
            "TT;>;II",
            "Lkg/b0;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkg/v;->r:Lkg/x;

    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/x;->f(Lkg/c0;IILkg/b0;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lkg/v;->s:Lkg/x;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/x;->f(Lkg/c0;IILkg/b0;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lkg/v;->t:Lkg/x;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/x;->f(Lkg/c0;IILkg/b0;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lkg/v;->u:Lkg/x;

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/x;->f(Lkg/c0;IILkg/b0;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lkg/v;->v:Lkg/x;

    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/x;->f(Lkg/c0;IILkg/b0;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lkg/q0;->a:I

    iget v1, p0, Lkg/q0;->g:I

    iget v2, p0, Lkg/q0;->b:I

    iget v3, p0, Lkg/q0;->c:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lkg/v;->B(IIII)Lkg/w;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/w;->b(Lkg/c0;IILkg/b0;)Z

    .line 8
    iget-object p1, p0, Lkg/v;->u:Lkg/x;

    invoke-virtual {p1, v0}, Lkg/x;->c(Lkg/w;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static q(Ljava/lang/StringBuilder;[Lkg/a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "[",
            "Lkg/a0<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 2
    aget-object v1, p1, v0

    .line 3
    iget-object v2, v1, Lkg/a0;->g:Lkg/a0;

    if-ne v2, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v2, v1, Lkg/a0;->g:Lkg/a0;

    .line 8
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v2, v2, Lkg/a0;->g:Lkg/a0;

    if-ne v2, v1, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private varargs s([Lkg/x;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkg/x<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    invoke-virtual {v2, p0}, Lkg/x;->m(Lkg/v;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static t([Lkg/a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkg/a0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2
    invoke-virtual {v2}, Lkg/a0;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private x()V
    .locals 1

    iget-object v0, p0, Lkg/v;->z:Lio/grpc/netty/shaded/io/netty/util/internal/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/m;->increment()V

    return-void
.end method


# virtual methods
.method protected abstract A(I)Lkg/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkg/c0<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract B(IIII)Lkg/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lkg/w<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract E(I)Lkg/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkg/w<",
            "TT;>;"
        }
    .end annotation
.end method

.method public F()J
    .locals 6

    .line 1
    iget-object v0, p0, Lkg/v;->B:Lio/grpc/netty/shaded/io/netty/util/internal/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/m;->value()J

    move-result-wide v0

    .line 2
    monitor-enter p0

    const/4 v2, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v3, p0, Lkg/v;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    iget-object v3, p0, Lkg/v;->x:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkg/y;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkg/z;

    .line 5
    invoke-interface {v4}, Lkg/z;->a()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    .line 7
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method G(Lkg/c0;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/c0<",
            "TT;>;IZ)V"
        }
    .end annotation

    .line 1
    iget v0, p1, Lkg/c0;->s:I

    if-ne v0, p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, p1, Lkg/c0;->o:Lkg/w;

    .line 3
    iget-object v3, p1, Lkg/c0;->v:Ljava/nio/ByteBuffer;

    .line 4
    iget-wide v4, p1, Lkg/c0;->p:J

    .line 5
    iget-object v1, p1, Lkg/c0;->q:Ljava/lang/Object;

    .line 6
    iget v6, p1, Lkg/c0;->r:I

    .line 7
    iget v7, p1, Lkg/c0;->t:I

    .line 8
    iget-object v8, p0, Lkg/v;->n:Lkg/d0;

    invoke-virtual {v8}, Lkg/d0;->Q()Lkg/b0;

    move-result-object v8

    invoke-direct {p0, v8, p1, p2}, Lkg/v;->n(Lkg/b0;Lkg/c0;I)V

    if-le p2, v0, :cond_1

    move p2, v0

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1, p2}, Lkg/a;->z3(I)V

    .line 10
    :goto_0
    invoke-virtual {p0, v1, v6, p1, p2}, Lkg/v;->z(Ljava/lang/Object;ILkg/c0;I)V

    if-eqz p3, :cond_2

    .line 11
    iget-object p1, p1, Lkg/c0;->u:Lkg/b0;

    move-object v1, p0

    move v6, v7

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lkg/v;->v(Lkg/w;Ljava/nio/ByteBuffer;JILkg/b0;)V

    :cond_2
    return-void
.end method

.method protected final finalize()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x6

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v7, p0, Lkg/v;->q:[Lkg/a0;

    invoke-static {v7}, Lkg/v;->t([Lkg/a0;)V

    new-array v6, v6, [Lkg/x;

    .line 3
    iget-object v7, p0, Lkg/v;->u:Lkg/x;

    aput-object v7, v6, v5

    iget-object v5, p0, Lkg/v;->t:Lkg/x;

    aput-object v5, v6, v4

    iget-object v4, p0, Lkg/v;->s:Lkg/x;

    aput-object v4, v6, v3

    iget-object v3, p0, Lkg/v;->r:Lkg/x;

    aput-object v3, v6, v2

    iget-object v2, p0, Lkg/v;->v:Lkg/x;

    aput-object v2, v6, v1

    iget-object v1, p0, Lkg/v;->w:Lkg/x;

    aput-object v1, v6, v0

    invoke-direct {p0, v6}, Lkg/v;->s([Lkg/x;)V

    return-void

    :catchall_0
    move-exception v7

    .line 4
    iget-object v8, p0, Lkg/v;->q:[Lkg/a0;

    invoke-static {v8}, Lkg/v;->t([Lkg/a0;)V

    new-array v6, v6, [Lkg/x;

    .line 5
    iget-object v8, p0, Lkg/v;->u:Lkg/x;

    aput-object v8, v6, v5

    iget-object v5, p0, Lkg/v;->t:Lkg/x;

    aput-object v5, v6, v4

    iget-object v4, p0, Lkg/v;->s:Lkg/x;

    aput-object v4, v6, v3

    iget-object v3, p0, Lkg/v;->r:Lkg/x;

    aput-object v3, v6, v2

    iget-object v2, p0, Lkg/v;->v:Lkg/x;

    aput-object v2, v6, v1

    iget-object v1, p0, Lkg/v;->w:Lkg/x;

    aput-object v1, v6, v0

    invoke-direct {p0, v6}, Lkg/v;->s([Lkg/x;)V

    .line 6
    throw v7
.end method

.method m(Lkg/b0;II)Lkg/c0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/b0;",
            "II)",
            "Lkg/c0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lkg/v;->A(I)Lkg/c0;

    move-result-object p3

    .line 2
    invoke-direct {p0, p1, p3, p2}, Lkg/v;->n(Lkg/b0;Lkg/c0;I)V

    return-object p3
.end method

.method protected abstract r(Lkg/w;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chunk(s) at 0~25%:"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkg/v;->u:Lkg/x;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Chunk(s) at 0~50%:"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkg/v;->t:Lkg/x;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Chunk(s) at 25~75%:"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkg/v;->s:Lkg/x;

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Chunk(s) at 50~100%:"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkg/v;->r:Lkg/x;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Chunk(s) at 75~100%:"

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkg/v;->v:Lkg/x;

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Chunk(s) at 100%:"

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkg/v;->w:Lkg/x;

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "small subpages:"

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v2, p0, Lkg/v;->q:[Lkg/a0;

    invoke-static {v0, v2}, Lkg/v;->q(Ljava/lang/StringBuilder;[Lkg/a0;)V

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method u(I)Lkg/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkg/a0<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lkg/v;->q:[Lkg/a0;

    aget-object p1, v0, p1

    return-object p1
.end method

.method v(Lkg/w;Ljava/nio/ByteBuffer;JILkg/b0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JI",
            "Lkg/b0;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lkg/w;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lkg/w;->a()I

    move-result p2

    .line 3
    invoke-virtual {p0, p1}, Lkg/v;->r(Lkg/w;)V

    .line 4
    iget-object p1, p0, Lkg/v;->B:Lio/grpc/netty/shaded/io/netty/util/internal/m;

    neg-int p2, p2

    int-to-long p2, p2

    invoke-interface {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/m;->add(J)V

    .line 5
    iget-object p1, p0, Lkg/v;->E:Lio/grpc/netty/shaded/io/netty/util/internal/m;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/m;->increment()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p3, p4}, Lkg/v;->H(J)Lkg/v$d;

    move-result-object v8

    if-eqz p6, :cond_1

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, v8

    .line 7
    invoke-virtual/range {v0 .. v7}, Lkg/b0;->a(Lkg/v;Lkg/w;Ljava/nio/ByteBuffer;JILkg/v$d;)Z

    move-result p6

    if-eqz p6, :cond_1

    return-void

    :cond_1
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move v4, p5

    move-object v5, v8

    move-object v6, p2

    .line 8
    invoke-virtual/range {v0 .. v7}, Lkg/v;->w(Lkg/w;JILkg/v$d;Ljava/nio/ByteBuffer;Z)V

    :goto_0
    return-void
.end method

.method w(Lkg/w;JILkg/v$d;Ljava/nio/ByteBuffer;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "TT;>;JI",
            "Lkg/v$d;",
            "Ljava/nio/ByteBuffer;",
            "Z)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    if-nez p7, :cond_2

    .line 2
    :try_start_0
    sget-object p7, Lkg/v$a;->a:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p5, p7, p5

    const-wide/16 v1, 0x1

    if-eq p5, v0, :cond_1

    const/4 p7, 0x2

    if-ne p5, p7, :cond_0

    .line 3
    iget-wide v3, p0, Lkg/v;->C:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lkg/v;->C:J

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 5
    :cond_1
    iget-wide v3, p0, Lkg/v;->D:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lkg/v;->D:J

    .line 6
    :cond_2
    :goto_0
    iget-object v1, p1, Lkg/w;->n:Lkg/x;

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lkg/x;->n(Lkg/w;JILjava/nio/ByteBuffer;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 7
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p0, p1}, Lkg/v;->r(Lkg/w;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method abstract y()Z
.end method

.method protected abstract z(Ljava/lang/Object;ILkg/c0;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lkg/c0<",
            "TT;>;I)V"
        }
    .end annotation
.end method
