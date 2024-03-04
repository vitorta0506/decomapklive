.class abstract Lio/grpc/internal/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/z1$u;,
        Lio/grpc/internal/z1$v;,
        Lio/grpc/internal/z1$x;,
        Lio/grpc/internal/z1$c0;,
        Lio/grpc/internal/z1$t;,
        Lio/grpc/internal/z1$s;,
        Lio/grpc/internal/z1$b0;,
        Lio/grpc/internal/z1$z;,
        Lio/grpc/internal/z1$a0;,
        Lio/grpc/internal/z1$r;,
        Lio/grpc/internal/z1$w;,
        Lio/grpc/internal/z1$y;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/internal/q;"
    }
.end annotation


# static fields
.field private static final A:Lio/grpc/Status;

.field private static B:Ljava/util/Random;

.field static final y:Lio/grpc/s0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/s0$i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final z:Lio/grpc/s0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/s0$i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "TReqT;*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private final e:Lio/grpc/s0;

.field private final f:Lio/grpc/internal/a2;

.field private final g:Lio/grpc/internal/t0;

.field private final h:Z

.field private final i:Ljava/lang/Object;

.field private final j:Lio/grpc/internal/z1$t;

.field private final k:J

.field private final l:J

.field private final m:Lio/grpc/internal/z1$c0;

.field private final n:Lio/grpc/internal/x0;

.field private volatile o:Lio/grpc/internal/z1$z;

.field private final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field private r:J

.field private s:Lio/grpc/internal/ClientStreamListener;

.field private t:Lio/grpc/internal/z1$u;

.field private u:Lio/grpc/internal/z1$u;

.field private v:J

.field private w:Lio/grpc/Status;

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/s0;->e:Lio/grpc/s0$d;

    const-string v1, "grpc-previous-rpc-attempts"

    .line 2
    invoke-static {v1, v0}, Lio/grpc/s0$i;->e(Ljava/lang/String;Lio/grpc/s0$d;)Lio/grpc/s0$i;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/z1;->y:Lio/grpc/s0$i;

    const-string v1, "grpc-retry-pushback-ms"

    .line 3
    invoke-static {v1, v0}, Lio/grpc/s0$i;->e(Ljava/lang/String;Lio/grpc/s0$d;)Lio/grpc/s0$i;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/z1;->z:Lio/grpc/s0$i;

    .line 4
    sget-object v0, Lio/grpc/Status;->g:Lio/grpc/Status;

    const-string v1, "Stream thrown away because RetriableStream committed"

    .line 5
    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/z1;->A:Lio/grpc/Status;

    .line 6
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lio/grpc/internal/z1;->B:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/internal/z1$t;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/a2;Lio/grpc/internal/t0;Lio/grpc/internal/z1$c0;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;*>;",
            "Lio/grpc/s0;",
            "Lio/grpc/internal/z1$t;",
            "JJ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lio/grpc/internal/a2;",
            "Lio/grpc/internal/t0;",
            "Lio/grpc/internal/z1$c0;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v3, Lio/grpc/d1;

    new-instance v4, Lio/grpc/internal/z1$a;

    invoke-direct {v4, p0}, Lio/grpc/internal/z1$a;-><init>(Lio/grpc/internal/z1;)V

    invoke-direct {v3, v4}, Lio/grpc/d1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v3, v0, Lio/grpc/internal/z1;->c:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lio/grpc/internal/z1;->i:Ljava/lang/Object;

    .line 4
    new-instance v3, Lio/grpc/internal/x0;

    invoke-direct {v3}, Lio/grpc/internal/x0;-><init>()V

    iput-object v3, v0, Lio/grpc/internal/z1;->n:Lio/grpc/internal/x0;

    .line 5
    new-instance v3, Lio/grpc/internal/z1$z;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lio/grpc/internal/z1$z;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/z1$b0;ZZZI)V

    iput-object v3, v0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    .line 7
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, v0, Lio/grpc/internal/z1;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, v0, Lio/grpc/internal/z1;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v3, p1

    .line 9
    iput-object v3, v0, Lio/grpc/internal/z1;->a:Lio/grpc/MethodDescriptor;

    move-object/from16 v3, p3

    .line 10
    iput-object v3, v0, Lio/grpc/internal/z1;->j:Lio/grpc/internal/z1$t;

    move-wide/from16 v3, p4

    .line 11
    iput-wide v3, v0, Lio/grpc/internal/z1;->k:J

    move-wide/from16 v3, p6

    .line 12
    iput-wide v3, v0, Lio/grpc/internal/z1;->l:J

    move-object/from16 v3, p8

    .line 13
    iput-object v3, v0, Lio/grpc/internal/z1;->b:Ljava/util/concurrent/Executor;

    move-object/from16 v3, p9

    .line 14
    iput-object v3, v0, Lio/grpc/internal/z1;->d:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v3, p2

    .line 15
    iput-object v3, v0, Lio/grpc/internal/z1;->e:Lio/grpc/s0;

    .line 16
    iput-object v1, v0, Lio/grpc/internal/z1;->f:Lio/grpc/internal/a2;

    if-eqz v1, :cond_0

    .line 17
    iget-wide v3, v1, Lio/grpc/internal/a2;->b:J

    iput-wide v3, v0, Lio/grpc/internal/z1;->v:J

    .line 18
    :cond_0
    iput-object v2, v0, Lio/grpc/internal/z1;->g:Lio/grpc/internal/t0;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v5, "Should not provide both retryPolicy and hedgingPolicy"

    .line 19
    invoke-static {v1, v5}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    .line 20
    :cond_3
    iput-boolean v3, v0, Lio/grpc/internal/z1;->h:Z

    move-object/from16 v1, p12

    .line 21
    iput-object v1, v0, Lio/grpc/internal/z1;->m:Lio/grpc/internal/z1$c0;

    return-void
.end method

.method static synthetic A(Lio/grpc/internal/z1;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/z1;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic B(Lio/grpc/internal/z1;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/internal/z1;->h:Z

    return p0
.end method

.method static synthetic C(Lio/grpc/internal/z1;)Lio/grpc/internal/ClientStreamListener;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/z1;->s:Lio/grpc/internal/ClientStreamListener;

    return-object p0
.end method

.method static synthetic D(Lio/grpc/internal/z1;)Lio/grpc/internal/a2;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/z1;->f:Lio/grpc/internal/a2;

    return-object p0
.end method

.method static synthetic E(Lio/grpc/internal/z1;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/internal/z1;->d0()V

    return-void
.end method

.method static synthetic F(Lio/grpc/internal/z1;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/internal/z1;->i0(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic G(Lio/grpc/internal/z1;Lio/grpc/internal/z1$u;)Lio/grpc/internal/z1$u;
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/z1;->t:Lio/grpc/internal/z1$u;

    return-object p1
.end method

.method static synthetic H(Lio/grpc/internal/z1;)J
    .locals 2

    iget-wide v0, p0, Lio/grpc/internal/z1;->v:J

    return-wide v0
.end method

.method static synthetic I(Lio/grpc/internal/z1;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/internal/z1;->v:J

    return-wide p1
.end method

.method static synthetic J()Ljava/util/Random;
    .locals 1

    sget-object v0, Lio/grpc/internal/z1;->B:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic K(Lio/grpc/internal/z1;)J
    .locals 2

    iget-wide v0, p0, Lio/grpc/internal/z1;->r:J

    return-wide v0
.end method

.method static synthetic L(Lio/grpc/internal/z1;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/internal/z1;->r:J

    return-wide p1
.end method

.method static synthetic M(Lio/grpc/internal/z1;)J
    .locals 2

    iget-wide v0, p0, Lio/grpc/internal/z1;->k:J

    return-wide v0
.end method

.method static synthetic N(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$t;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/z1;->j:Lio/grpc/internal/z1$t;

    return-object p0
.end method

.method static synthetic O(Lio/grpc/internal/z1;)J
    .locals 2

    iget-wide v0, p0, Lio/grpc/internal/z1;->l:J

    return-wide v0
.end method

.method static synthetic P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    return-object p0
.end method

.method static synthetic Q(Lio/grpc/internal/z1;Lio/grpc/internal/z1$b0;)Ljava/lang/Runnable;
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/internal/z1;->Y(Lio/grpc/internal/z1$b0;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic R(Lio/grpc/internal/z1;Lio/grpc/internal/z1$z;)Lio/grpc/internal/z1$z;
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    return-object p1
.end method

.method static synthetic S(Lio/grpc/internal/z1;IZ)Lio/grpc/internal/z1$b0;
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/internal/z1;->a0(IZ)Lio/grpc/internal/z1$b0;

    move-result-object p0

    return-object p0
.end method

.method static synthetic T(Lio/grpc/internal/z1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/z1;->i:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic U(Lio/grpc/internal/z1;Lio/grpc/internal/z1$z;)Z
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/internal/z1;->e0(Lio/grpc/internal/z1$z;)Z

    move-result p0

    return p0
.end method

.method static synthetic V(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$c0;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/z1;->m:Lio/grpc/internal/z1$c0;

    return-object p0
.end method

.method static synthetic W(Lio/grpc/internal/z1;Lio/grpc/internal/z1$u;)Lio/grpc/internal/z1$u;
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/z1;->u:Lio/grpc/internal/z1$u;

    return-object p1
.end method

.method static synthetic X(Lio/grpc/internal/z1;)Lio/grpc/internal/t0;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/z1;->g:Lio/grpc/internal/t0;

    return-object p0
.end method

.method private Y(Lio/grpc/internal/z1$b0;)Ljava/lang/Runnable;
    .locals 9

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z1;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    iget-object v1, v1, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v2

    .line 4
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    iget-object v5, v1, Lio/grpc/internal/z1$z;->c:Ljava/util/Collection;

    .line 5
    iget-object v1, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    invoke-virtual {v1, p1}, Lio/grpc/internal/z1$z;->c(Lio/grpc/internal/z1$b0;)Lio/grpc/internal/z1$z;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    .line 6
    iget-object v1, p0, Lio/grpc/internal/z1;->j:Lio/grpc/internal/z1$t;

    iget-wide v3, p0, Lio/grpc/internal/z1;->r:J

    neg-long v3, v3

    invoke-virtual {v1, v3, v4}, Lio/grpc/internal/z1$t;->a(J)J

    .line 7
    iget-object v1, p0, Lio/grpc/internal/z1;->t:Lio/grpc/internal/z1$u;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lio/grpc/internal/z1$u;->b()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 9
    iput-object v2, p0, Lio/grpc/internal/z1;->t:Lio/grpc/internal/z1$u;

    move-object v7, v1

    goto :goto_0

    :cond_1
    move-object v7, v2

    .line 10
    :goto_0
    iget-object v1, p0, Lio/grpc/internal/z1;->u:Lio/grpc/internal/z1$u;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1}, Lio/grpc/internal/z1$u;->b()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 12
    iput-object v2, p0, Lio/grpc/internal/z1;->u:Lio/grpc/internal/z1$u;

    move-object v8, v1

    goto :goto_1

    :cond_2
    move-object v8, v2

    .line 13
    :goto_1
    new-instance v1, Lio/grpc/internal/z1$c;

    move-object v3, v1

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lio/grpc/internal/z1$c;-><init>(Lio/grpc/internal/z1;Ljava/util/Collection;Lio/grpc/internal/z1$b0;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private Z(Lio/grpc/internal/z1$b0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/internal/z1;->Y(Lio/grpc/internal/z1$b0;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private a0(IZ)Lio/grpc/internal/z1$b0;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/internal/z1$b0;

    invoke-direct {v0, p1}, Lio/grpc/internal/z1$b0;-><init>(I)V

    .line 2
    new-instance v1, Lio/grpc/internal/z1$s;

    invoke-direct {v1, p0, v0}, Lio/grpc/internal/z1$s;-><init>(Lio/grpc/internal/z1;Lio/grpc/internal/z1$b0;)V

    .line 3
    new-instance v2, Lio/grpc/internal/z1$o;

    invoke-direct {v2, p0, v1}, Lio/grpc/internal/z1$o;-><init>(Lio/grpc/internal/z1;Lio/grpc/k;)V

    .line 4
    iget-object v1, p0, Lio/grpc/internal/z1;->e:Lio/grpc/s0;

    invoke-virtual {p0, v1, p1}, Lio/grpc/internal/z1;->k0(Lio/grpc/s0;I)Lio/grpc/s0;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v1, v2, p1, p2}, Lio/grpc/internal/z1;->f0(Lio/grpc/s0;Lio/grpc/k$a;IZ)Lio/grpc/internal/q;

    move-result-object p1

    iput-object p1, v0, Lio/grpc/internal/z1$b0;->a:Lio/grpc/internal/q;

    return-object v0
.end method

.method private b0(Lio/grpc/internal/z1$r;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z1;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    iget-boolean v1, v1, Lio/grpc/internal/z1$z;->a:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    iget-object v1, v1, Lio/grpc/internal/z1$z;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    iget-object v1, v1, Lio/grpc/internal/z1$z;->c:Ljava/util/Collection;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/z1$b0;

    .line 7
    invoke-interface {p1, v1}, Lio/grpc/internal/z1$r;->a(Lio/grpc/internal/z1$b0;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private c0(Lio/grpc/internal/z1$b0;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v4, p0, Lio/grpc/internal/z1;->i:Ljava/lang/Object;

    monitor-enter v4

    .line 2
    :try_start_0
    iget-object v5, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    if-eqz v1, :cond_1

    .line 3
    iget-object v6, v5, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    if-eqz v6, :cond_0

    if-eq v6, p1, :cond_0

    .line 4
    monitor-exit v4

    goto :goto_1

    .line 5
    :cond_0
    iget-boolean v6, v5, Lio/grpc/internal/z1$z;->g:Z

    if-eqz v6, :cond_1

    .line 6
    monitor-exit v4

    goto :goto_1

    .line 7
    :cond_1
    iget-object v6, v5, Lio/grpc/internal/z1$z;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v2, v6, :cond_5

    .line 8
    invoke-virtual {v5, p1}, Lio/grpc/internal/z1$z;->h(Lio/grpc/internal/z1$b0;)Lio/grpc/internal/z1$z;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    .line 9
    invoke-virtual {p0}, Lio/grpc/internal/z1;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    monitor-exit v4

    return-void

    .line 11
    :cond_2
    new-instance v0, Lio/grpc/internal/z1$p;

    invoke-direct {v0, p0}, Lio/grpc/internal/z1$p;-><init>(Lio/grpc/internal/z1;)V

    .line 12
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v0, :cond_3

    .line 13
    iget-object p1, p0, Lio/grpc/internal/z1;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 14
    :cond_3
    iget-object v0, p1, Lio/grpc/internal/z1$b0;->a:Lio/grpc/internal/q;

    .line 15
    iget-object v1, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    iget-object v1, v1, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lio/grpc/internal/z1;->w:Lio/grpc/Status;

    goto :goto_2

    :cond_4
    sget-object p1, Lio/grpc/internal/z1;->A:Lio/grpc/Status;

    .line 16
    :goto_2
    invoke-interface {v0, p1}, Lio/grpc/internal/q;->e(Lio/grpc/Status;)V

    return-void

    .line 17
    :cond_5
    :try_start_1
    iget-boolean v6, p1, Lio/grpc/internal/z1$b0;->b:Z

    if-eqz v6, :cond_6

    .line 18
    monitor-exit v4

    return-void

    :cond_6
    add-int/lit16 v6, v2, 0x80

    .line 19
    iget-object v7, v5, Lio/grpc/internal/z1$z;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-nez v3, :cond_7

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v5, Lio/grpc/internal/z1$z;->b:Ljava/util/List;

    invoke-interface {v5, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    .line 21
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 22
    iget-object v5, v5, Lio/grpc/internal/z1$z;->b:Ljava/util/List;

    invoke-interface {v5, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/internal/z1$r;

    .line 25
    invoke-interface {v4, p1}, Lio/grpc/internal/z1$r;->a(Lio/grpc/internal/z1$b0;)V

    .line 26
    instance-of v4, v4, Lio/grpc/internal/z1$y;

    if-eqz v4, :cond_9

    const/4 v1, 0x1

    :cond_9
    if-eqz v1, :cond_8

    .line 27
    iget-object v4, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    .line 28
    iget-object v5, v4, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    if-eqz v5, :cond_a

    if-eq v5, p1, :cond_a

    goto :goto_4

    .line 29
    :cond_a
    iget-boolean v4, v4, Lio/grpc/internal/z1$z;->g:Z

    if-eqz v4, :cond_8

    :cond_b
    :goto_4
    move v2, v6

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 30
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private d0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z1;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/z1;->u:Lio/grpc/internal/z1$u;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lio/grpc/internal/z1$u;->b()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 4
    iput-object v2, p0, Lio/grpc/internal/z1;->u:Lio/grpc/internal/z1$u;

    move-object v2, v1

    .line 5
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    invoke-virtual {v1}, Lio/grpc/internal/z1$z;->d()Lio/grpc/internal/z1$z;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 7
    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private e0(Lio/grpc/internal/z1$z;)Z
    .locals 2

    iget-object v0, p1, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    if-nez v0, :cond_0

    iget v0, p1, Lio/grpc/internal/z1$z;->e:I

    iget-object v1, p0, Lio/grpc/internal/z1;->g:Lio/grpc/internal/t0;

    iget v1, v1, Lio/grpc/internal/t0;->a:I

    if-ge v0, v1, :cond_0

    iget-boolean p1, p1, Lio/grpc/internal/z1$z;->h:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private i0(Ljava/lang/Integer;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lio/grpc/internal/z1;->d0()V

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/z1;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/z1;->u:Lio/grpc/internal/z1$u;

    if-nez v1, :cond_2

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_2
    invoke-virtual {v1}, Lio/grpc/internal/z1$u;->b()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 7
    new-instance v2, Lio/grpc/internal/z1$u;

    iget-object v3, p0, Lio/grpc/internal/z1;->i:Ljava/lang/Object;

    invoke-direct {v2, v3}, Lio/grpc/internal/z1$u;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lio/grpc/internal/z1;->u:Lio/grpc/internal/z1$u;

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 9
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 10
    :cond_3
    iget-object v0, p0, Lio/grpc/internal/z1;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lio/grpc/internal/z1$w;

    invoke-direct {v1, p0, v2}, Lio/grpc/internal/z1$w;-><init>(Lio/grpc/internal/z1;Lio/grpc/internal/z1$u;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v3, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    invoke-interface {v0, v1, v3, v4, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/grpc/internal/z1$u;->c(Ljava/util/concurrent/Future;)V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic p()Lio/grpc/Status;
    .locals 1

    sget-object v0, Lio/grpc/internal/z1;->A:Lio/grpc/Status;

    return-object v0
.end method

.method static synthetic q(Lio/grpc/internal/z1;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/internal/z1;->x:Z

    return p0
.end method

.method static synthetic r(Lio/grpc/internal/z1;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/z1;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic s(Lio/grpc/internal/z1;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/internal/z1;->x:Z

    return p1
.end method

.method static synthetic t(Lio/grpc/internal/z1;Lio/grpc/internal/z1$b0;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/internal/z1;->c0(Lio/grpc/internal/z1$b0;)V

    return-void
.end method

.method static synthetic u(Lio/grpc/internal/z1;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/z1;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic v(Lio/grpc/internal/z1;)Lio/grpc/MethodDescriptor;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/z1;->a:Lio/grpc/MethodDescriptor;

    return-object p0
.end method

.method static synthetic w(Lio/grpc/internal/z1;Lio/grpc/internal/z1$b0;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/internal/z1;->Z(Lio/grpc/internal/z1$b0;)V

    return-void
.end method

.method static synthetic x(Lio/grpc/internal/z1;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/z1;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic y(Lio/grpc/internal/z1;)Lio/grpc/internal/x0;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/z1;->n:Lio/grpc/internal/x0;

    return-object p0
.end method

.method static synthetic z(Lio/grpc/internal/z1;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/z1;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public final a(Lio/grpc/o;)V
    .locals 1

    new-instance v0, Lio/grpc/internal/z1$d;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/z1$d;-><init>(Lio/grpc/internal/z1;Lio/grpc/o;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/z1;->b0(Lio/grpc/internal/z1$r;)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    .line 2
    iget-boolean v1, v0, Lio/grpc/internal/z1$z;->a:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    iget-object v0, v0, Lio/grpc/internal/z1$b0;->a:Lio/grpc/internal/q;

    invoke-interface {v0, p1}, Lio/grpc/internal/j2;->b(I)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lio/grpc/internal/z1$m;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/z1$m;-><init>(Lio/grpc/internal/z1;I)V

    invoke-direct {p0, v0}, Lio/grpc/internal/z1;->b0(Lio/grpc/internal/z1$r;)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    new-instance v0, Lio/grpc/internal/z1$j;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/z1$j;-><init>(Lio/grpc/internal/z1;I)V

    invoke-direct {p0, v0}, Lio/grpc/internal/z1;->b0(Lio/grpc/internal/z1$r;)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    new-instance v0, Lio/grpc/internal/z1$k;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/z1$k;-><init>(Lio/grpc/internal/z1;I)V

    invoke-direct {p0, v0}, Lio/grpc/internal/z1;->b0(Lio/grpc/internal/z1$r;)V

    return-void
.end method

.method public final e(Lio/grpc/Status;)V
    .locals 4

    .line 1
    new-instance v0, Lio/grpc/internal/z1$b0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/internal/z1$b0;-><init>(I)V

    .line 2
    new-instance v1, Lio/grpc/internal/o1;

    invoke-direct {v1}, Lio/grpc/internal/o1;-><init>()V

    iput-object v1, v0, Lio/grpc/internal/z1$b0;->a:Lio/grpc/internal/q;

    .line 3
    invoke-direct {p0, v0}, Lio/grpc/internal/z1;->Y(Lio/grpc/internal/z1$b0;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5
    iget-object v0, p0, Lio/grpc/internal/z1;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/z1$q;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/z1$q;-><init>(Lio/grpc/internal/z1;Lio/grpc/Status;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lio/grpc/internal/z1;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    iget-object v2, v2, Lio/grpc/internal/z1$z;->c:Ljava/util/Collection;

    iget-object v3, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    iget-object v3, v3, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v0, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    iget-object v0, v0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    goto :goto_0

    .line 9
    :cond_1
    iput-object p1, p0, Lio/grpc/internal/z1;->w:Lio/grpc/Status;

    .line 10
    :goto_0
    iget-object v2, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    invoke-virtual {v2}, Lio/grpc/internal/z1$z;->b()Lio/grpc/internal/z1$z;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, v0, Lio/grpc/internal/z1$b0;->a:Lio/grpc/internal/q;

    invoke-interface {v0, p1}, Lio/grpc/internal/q;->e(Lio/grpc/Status;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method abstract f0(Lio/grpc/s0;Lio/grpc/k$a;IZ)Lio/grpc/internal/q;
.end method

.method public final flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    .line 2
    iget-boolean v1, v0, Lio/grpc/internal/z1$z;->a:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    iget-object v0, v0, Lio/grpc/internal/z1$b0;->a:Lio/grpc/internal/q;

    invoke-interface {v0}, Lio/grpc/internal/j2;->flush()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lio/grpc/internal/z1$g;

    invoke-direct {v0, p0}, Lio/grpc/internal/z1$g;-><init>(Lio/grpc/internal/z1;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/z1;->b0(Lio/grpc/internal/z1$r;)V

    return-void
.end method

.method public final g(Lio/grpc/v;)V
    .locals 1

    new-instance v0, Lio/grpc/internal/z1$f;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/z1$f;-><init>(Lio/grpc/internal/z1;Lio/grpc/v;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/z1;->b0(Lio/grpc/internal/z1$r;)V

    return-void
.end method

.method abstract g0()V
.end method

.method public final h(Ljava/io/InputStream;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RetriableStream.writeMessage() should not be called directly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract h0()Lio/grpc/Status;
.end method

.method public i()V
    .locals 1

    new-instance v0, Lio/grpc/internal/z1$l;

    invoke-direct {v0, p0}, Lio/grpc/internal/z1$l;-><init>(Lio/grpc/internal/z1;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/z1;->b0(Lio/grpc/internal/z1$r;)V

    return-void
.end method

.method public final isReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    iget-object v0, v0, Lio/grpc/internal/z1$z;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/z1$b0;

    .line 2
    iget-object v1, v1, Lio/grpc/internal/z1$b0;->a:Lio/grpc/internal/q;

    invoke-interface {v1}, Lio/grpc/internal/j2;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final j(Z)V
    .locals 1

    new-instance v0, Lio/grpc/internal/z1$h;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/z1$h;-><init>(Lio/grpc/internal/z1;Z)V

    invoke-direct {p0, v0}, Lio/grpc/internal/z1;->b0(Lio/grpc/internal/z1$r;)V

    return-void
.end method

.method final j0(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    .line 2
    iget-boolean v1, v0, Lio/grpc/internal/z1$z;->a:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    iget-object v0, v0, Lio/grpc/internal/z1$b0;->a:Lio/grpc/internal/q;

    iget-object v1, p0, Lio/grpc/internal/z1;->a:Lio/grpc/MethodDescriptor;

    invoke-virtual {v1, p1}, Lio/grpc/MethodDescriptor;->l(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/grpc/internal/j2;->h(Ljava/io/InputStream;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lio/grpc/internal/z1$n;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/z1$n;-><init>(Lio/grpc/internal/z1;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/z1;->b0(Lio/grpc/internal/z1$r;)V

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lio/grpc/internal/z1$b;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/z1$b;-><init>(Lio/grpc/internal/z1;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/z1;->b0(Lio/grpc/internal/z1$r;)V

    return-void
.end method

.method final k0(Lio/grpc/s0;I)Lio/grpc/s0;
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/s0;

    invoke-direct {v0}, Lio/grpc/s0;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lio/grpc/s0;->q(Lio/grpc/s0;)V

    if-lez p2, :cond_0

    .line 3
    sget-object p1, Lio/grpc/internal/z1;->y:Lio/grpc/s0$i;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lio/grpc/s0;->t(Lio/grpc/s0$i;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public l(Lio/grpc/internal/x0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z1;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "closed"

    .line 2
    iget-object v2, p0, Lio/grpc/internal/z1;->n:Lio/grpc/internal/x0;

    invoke-virtual {p1, v1, v2}, Lio/grpc/internal/x0;->b(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/x0;

    .line 3
    iget-object v1, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lio/grpc/internal/x0;

    invoke-direct {v0}, Lio/grpc/internal/x0;-><init>()V

    .line 7
    iget-object v1, v1, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    iget-object v1, v1, Lio/grpc/internal/z1$b0;->a:Lio/grpc/internal/q;

    invoke-interface {v1, v0}, Lio/grpc/internal/q;->l(Lio/grpc/internal/x0;)V

    const-string v1, "committed"

    .line 8
    invoke-virtual {p1, v1, v0}, Lio/grpc/internal/x0;->b(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/x0;

    goto :goto_1

    .line 9
    :cond_0
    new-instance v0, Lio/grpc/internal/x0;

    invoke-direct {v0}, Lio/grpc/internal/x0;-><init>()V

    .line 10
    iget-object v1, v1, Lio/grpc/internal/z1$z;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/z1$b0;

    .line 11
    new-instance v3, Lio/grpc/internal/x0;

    invoke-direct {v3}, Lio/grpc/internal/x0;-><init>()V

    .line 12
    iget-object v2, v2, Lio/grpc/internal/z1$b0;->a:Lio/grpc/internal/q;

    invoke-interface {v2, v3}, Lio/grpc/internal/q;->l(Lio/grpc/internal/x0;)V

    .line 13
    invoke-virtual {v0, v3}, Lio/grpc/internal/x0;->a(Ljava/lang/Object;)Lio/grpc/internal/x0;

    goto :goto_0

    :cond_1
    const-string v1, "open"

    .line 14
    invoke-virtual {p1, v1, v0}, Lio/grpc/internal/x0;->b(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/x0;

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final m()V
    .locals 1

    new-instance v0, Lio/grpc/internal/z1$i;

    invoke-direct {v0, p0}, Lio/grpc/internal/z1$i;-><init>(Lio/grpc/internal/z1;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/z1;->b0(Lio/grpc/internal/z1$r;)V

    return-void
.end method

.method public final n(Lio/grpc/t;)V
    .locals 1

    new-instance v0, Lio/grpc/internal/z1$e;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/z1$e;-><init>(Lio/grpc/internal/z1;Lio/grpc/t;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/z1;->b0(Lio/grpc/internal/z1$r;)V

    return-void
.end method

.method public final o(Lio/grpc/internal/ClientStreamListener;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lio/grpc/internal/z1;->s:Lio/grpc/internal/ClientStreamListener;

    .line 2
    invoke-virtual {p0}, Lio/grpc/internal/z1;->h0()Lio/grpc/Status;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lio/grpc/internal/z1;->e(Lio/grpc/Status;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lio/grpc/internal/z1;->i:Ljava/lang/Object;

    monitor-enter p1

    .line 5
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    iget-object v0, v0, Lio/grpc/internal/z1$z;->b:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/z1$y;

    invoke-direct {v1, p0}, Lio/grpc/internal/z1$y;-><init>(Lio/grpc/internal/z1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1, p1}, Lio/grpc/internal/z1;->a0(IZ)Lio/grpc/internal/z1$b0;

    move-result-object p1

    .line 8
    iget-boolean v0, p0, Lio/grpc/internal/z1;->h:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 9
    iget-object v1, p0, Lio/grpc/internal/z1;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 10
    :try_start_1
    iget-object v2, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    invoke-virtual {v2, p1}, Lio/grpc/internal/z1$z;->a(Lio/grpc/internal/z1$b0;)Lio/grpc/internal/z1$z;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    .line 11
    iget-object v2, p0, Lio/grpc/internal/z1;->o:Lio/grpc/internal/z1$z;

    invoke-direct {p0, v2}, Lio/grpc/internal/z1;->e0(Lio/grpc/internal/z1$z;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/grpc/internal/z1;->m:Lio/grpc/internal/z1$c0;

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2}, Lio/grpc/internal/z1$c0;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    :cond_1
    new-instance v0, Lio/grpc/internal/z1$u;

    iget-object v2, p0, Lio/grpc/internal/z1;->i:Ljava/lang/Object;

    invoke-direct {v0, v2}, Lio/grpc/internal/z1$u;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/internal/z1;->u:Lio/grpc/internal/z1$u;

    .line 14
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 15
    iget-object v1, p0, Lio/grpc/internal/z1;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lio/grpc/internal/z1$w;

    invoke-direct {v2, p0, v0}, Lio/grpc/internal/z1$w;-><init>(Lio/grpc/internal/z1;Lio/grpc/internal/z1$u;)V

    iget-object v3, p0, Lio/grpc/internal/z1;->g:Lio/grpc/internal/t0;

    iget-wide v3, v3, Lio/grpc/internal/t0;->b:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lio/grpc/internal/z1$u;->c(Ljava/util/concurrent/Future;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 18
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 19
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lio/grpc/internal/z1;->c0(Lio/grpc/internal/z1$b0;)V

    return-void

    :catchall_1
    move-exception v0

    .line 20
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
