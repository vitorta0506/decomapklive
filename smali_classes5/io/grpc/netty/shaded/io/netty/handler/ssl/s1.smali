.class public Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;
.super Lpg/a;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$j;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;
    }
.end annotation


# static fields
.field private static final D:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final E:Ljava/util/regex/Pattern;

.field private static final F:Ljava/util/regex/Pattern;


# instance fields
.field private volatile A:J

.field private volatile B:J

.field volatile C:I

.field private volatile l:Lio/grpc/netty/shaded/io/netty/channel/m;

.field private final m:Ljavax/net/ssl/SSLEngine;

.field private final n:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

.field private final o:Ljava/util/concurrent/Executor;

.field private final p:Z

.field private final q:[Ljava/nio/ByteBuffer;

.field private final r:Z

.field private final s:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;

.field private final t:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;

.field private u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

.field private v:Lug/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/x<",
            "Lio/grpc/netty/shaded/io/netty/channel/e;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;

.field private x:I

.field private y:S

.field private volatile z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->D:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v0, "^.*(?:Socket|Datagram|Sctp|Udt)Channel.*$"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->E:Ljava/util/regex/Pattern;

    const/4 v0, 0x2

    const-string v1, "^.*(?:connection.*(?:reset|closed|abort|broken)|broken.*pipe).*$"

    .line 4
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->F:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Z)V
    .locals 1

    .line 1
    sget-object v0, Lug/t;->a:Lug/t;

    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;-><init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lpg/a;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    .line 3
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->q:[Ljava/nio/ByteBuffer;

    .line 4
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;

    invoke-direct {v1, p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Z)V

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->s:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;

    .line 5
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Z)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->t:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;

    .line 6
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/handler/ssl/t1;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v:Lug/x;

    .line 7
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/handler/ssl/t1;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->w:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;

    const-wide/16 v0, 0x2710

    .line 8
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->z:J

    const-wide/16 v0, 0xbb8

    .line 9
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->A:J

    const/16 v0, 0x4000

    .line 10
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->C:I

    const-string v0, "engine"

    .line 11
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLEngine;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->m:Ljavax/net/ssl/SSLEngine;

    const-string v0, "delegatedTaskExecutor"

    .line 12
    invoke-static {p3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->o:Ljava/util/concurrent/Executor;

    .line 13
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->c(Ljavax/net/ssl/SSLEngine;)Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    move-result-object p3

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    .line 14
    iput-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->r:Z

    .line 15
    invoke-virtual {p3, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->d(Ljavax/net/ssl/SSLEngine;)Z

    move-result p1

    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->p:Z

    .line 16
    iget-object p1, p3, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->b:Lpg/a$c;

    invoke-virtual {p0, p1}, Lpg/a;->L(Lpg/a$c;)V

    return-void
.end method

.method private A0(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object v0

    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$e;

    invoke-direct {v1, p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$e;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 3
    throw p1
.end method

.method private B0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;)V
    .locals 2

    const/16 v0, 0x80

    .line 1
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Y0(I)V

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->o:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v0(I)V

    .line 4
    throw p1
.end method

.method private C0(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->H0(Z)Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->B0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;)V

    return-void
.end method

.method private D0(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object p1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$d;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->O0(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private E0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lkg/s0;->d:Lkg/j;

    invoke-virtual {v0, v1, p2}, Lio/grpc/netty/shaded/io/netty/channel/c;->c(Lkg/j;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->N0()Ljava/lang/IllegalStateException;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method private F0(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->G0(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    :cond_0
    return-void
.end method

.method private G0(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v0(I)V

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->flush()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method private H0(Z)Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->s:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->t:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;

    :goto_0
    return-object p1
.end method

.method private I0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v:Lug/x;

    invoke-interface {v0, p2}, Lug/x;->z(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/u1;

    invoke-direct {v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u1;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->f1(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 5
    invoke-direct/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->U0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;ZZZ)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    :try_start_1
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->D:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "SSLException during trying to call SSLEngine.wrap(...) because of an previous SSLException, ignoring..."

    invoke-interface {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 7
    invoke-direct/range {v3 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->U0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;ZZZ)V

    .line 8
    :goto_0
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    return-void

    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 9
    invoke-direct/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->U0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;ZZZ)V

    .line 10
    throw v0
.end method

.method private J0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->m:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v:Lug/x;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->l:Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->m:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->g1(Lio/grpc/netty/shaded/io/netty/channel/m;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    invoke-direct {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->T0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_2

    .line 7
    :goto_0
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->G0(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    :cond_2
    return-void

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_3

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->G0(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 8
    :cond_3
    throw v1
.end method

.method private K0(Ljava/lang/Throwable;)Z
    .locals 9

    .line 1
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->w:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;

    invoke-virtual {v0}, Lug/h;->isDone()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->F:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 5
    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_7

    aget-object v4, p1, v3

    .line 6
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "io.grpc.netty.shaded.io.netty."

    .line 8
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    const-string v6, "read"

    .line 9
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    sget-object v4, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->E:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    .line 11
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 12
    const-class v6, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_5

    const-class v6, Ljava/nio/channels/DatagramChannel;

    .line 13
    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v6

    const/4 v7, 0x7

    if-lt v6, v7, :cond_6

    const-string v6, "com.sun.nio.sctp.SctpChannel"

    .line 15
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_6

    :cond_5
    :goto_1
    return v2

    :catchall_0
    move-exception v4

    .line 16
    sget-object v6, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->D:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v6}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v1

    aput-object v5, v7, v2

    const/4 v5, 0x2

    aput-object v4, v7, v5

    const-string v4, "Unexpected exception while loading class {} classname {}"

    .line 18
    invoke-interface {v6, v4, v7}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return v1
.end method

.method private static L0(Ljava/util/concurrent/Executor;)Z
    .locals 1

    instance-of v0, p0, Lug/j;

    if-eqz v0, :cond_0

    check-cast p0, Lug/j;

    invoke-interface {p0}, Lug/j;->Y()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic M(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Ljavax/net/ssl/SSLEngine;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->m:Ljavax/net/ssl/SSLEngine;

    return-object p0
.end method

.method private M0(I)Z
    .locals 1

    iget-short v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->y:S

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic N(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->I0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static N0()Ljava/lang/IllegalStateException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pendingUnencryptedWrites is null, handlerRemoved0 called?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic O(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->T0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    return-void
.end method

.method private O0(Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->w:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->l:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lug/h;->B(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->l:Lio/grpc/netty/shaded/io/netty/channel/m;

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/n1;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/n1;

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->w:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;

    invoke-virtual {v0, p1}, Lug/h;->z(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->l:Lio/grpc/netty/shaded/io/netty/channel/m;

    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/n1;

    invoke-direct {v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/n1;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/m;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic P(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->G0(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method private P0(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->l()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x100

    .line 2
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v:Lug/x;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->read()Lio/grpc/netty/shaded/io/netty/channel/m;

    :cond_1
    return-void
.end method

.method static synthetic Q(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u0(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method private Q0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/c;->p(Lio/grpc/netty/shaded/io/netty/channel/v;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic R(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v0(I)V

    return-void
.end method

.method private R0(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->o:Ljava/util/concurrent/Executor;

    sget-object v1, Lug/t;->a:Lug/t;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->L0(Ljava/util/concurrent/Executor;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->C0(Z)V

    return v2

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->m:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/16 v1, 0x80

    .line 4
    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Y0(I)V

    .line 5
    instance-of v3, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d;

    if-eqz v3, :cond_5

    .line 6
    :try_start_0
    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d;

    .line 7
    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$j;

    invoke-direct {v3, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$j;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Z)V

    .line 8
    invoke-interface {v0, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d;->a(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$j;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    if-nez v0, :cond_3

    .line 10
    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v0(I)V

    :cond_3
    return v2

    :cond_4
    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v0(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v0(I)V

    .line 11
    throw p1

    .line 12
    :cond_5
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v0(I)V

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v0(I)V

    .line 14
    throw p1
.end method

.method static synthetic S(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->B0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;)V

    return-void
.end method

.method private S0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, p3}, Lio/grpc/netty/shaded/io/netty/channel/v;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->A:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 5
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object v0

    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$i;

    invoke-direct {v1, p0, p2, p1, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$i;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lug/l;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lug/d0;

    move-result-object v0

    move-object v1, v0

    .line 6
    :cond_1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;

    invoke-direct {v0, p0, v1, p1, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lug/q;Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    invoke-interface {p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method static synthetic T(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Z
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->W0()Z

    move-result p0

    return p0
.end method

.method private T0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->U0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;ZZZ)V

    return-void
.end method

.method static synthetic U(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->e1(Lio/grpc/netty/shaded/io/netty/channel/m;Z)V

    return-void
.end method

.method private U0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;ZZZ)V
    .locals 3

    const/16 v0, 0x20

    .line 1
    :try_start_0
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Y0(I)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->m:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    .line 3
    :try_start_1
    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->m:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 4
    :try_start_2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->D:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p3}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "possible truncation attack"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "closing inbound before receiving peer\'s close_notify"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "{} SSLEngine.closeInbound() raised an exception."

    .line 8
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    :cond_1
    :goto_0
    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v:Lug/x;

    invoke-interface {p3, p2}, Lug/x;->z(Ljava/lang/Throwable;)Z

    move-result p3

    if-nez p3, :cond_2

    if-eqz p5, :cond_3

    .line 10
    :cond_2
    invoke-static {p1, p2, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->h(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :cond_3
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Q0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p3

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Q0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    .line 12
    throw p3
.end method

.method private V0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "failure when writing TLS control frames"

    invoke-direct {v0, v1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Q0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    .line 3
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v:Lug/x;

    invoke-interface {p2, v0}, Lug/x;->z(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/u1;

    invoke-direct {p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u1;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->close()Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->close()Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 6
    throw p2
.end method

.method static synthetic W(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->c1(Lio/grpc/netty/shaded/io/netty/channel/m;)I

    move-result p0

    return p0
.end method

.method private W0()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v:Lug/x;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v:Lug/x;

    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->l:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v3

    invoke-interface {v0, v3}, Lug/x;->B(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->D:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->m:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 4
    iget-object v6, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->l:Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 5
    invoke-interface {v6}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v6

    aput-object v6, v5, v2

    .line 6
    invoke-interface {v4}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    .line 7
    invoke-interface {v4}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const-string v1, "{} HANDSHAKEN: protocol:{} cipher suite:{}"

    .line 8
    invoke-interface {v3, v1, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_1
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->l:Lio/grpc/netty/shaded/io/netty/channel/m;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/u1;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/u1;

    invoke-interface {v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/m;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    :cond_2
    const/4 v1, 0x4

    .line 10
    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M0(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v0(I)V

    .line 12
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->l:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/f;->l()Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->l:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/m;->read()Lio/grpc/netty/shaded/io/netty/channel/m;

    :cond_3
    return v0
.end method

.method private X0()Z
    .locals 3

    const/16 v0, 0x200

    .line 1
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M0(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Y0(I)V

    .line 3
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->W0()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v0(I)V

    :cond_1
    return v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v0(I)V

    .line 5
    :cond_2
    throw v2
.end method

.method private Y0(I)V
    .locals 1

    iget-short v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->y:S

    or-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->y:S

    return-void
.end method

.method private Z0(Z)V
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M0(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Y0(I)V

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->m:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->J0(Z)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->s0()V

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    .line 6
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M0(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->l:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->G0(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->g1(Lio/grpc/netty/shaded/io/netty/channel/m;Z)Z

    move-result p0

    return p0
.end method

.method private static a1(Lkg/j;II)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/j;->s1()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkg/j;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic b0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)[Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->q:[Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private b1(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;I)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v3, p3

    .line 1
    invoke-direct {v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->p0(Lio/grpc/netty/shaded/io/netty/channel/m;I)Lkg/j;

    move-result-object v4

    move v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 2
    :try_start_0
    iget-object v12, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    invoke-virtual {v12, v1, v0, v6, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->e(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lkg/j;ILkg/j;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v12

    .line 3
    invoke-virtual {v12}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v13

    .line 4
    invoke-virtual {v12}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v14

    .line 5
    invoke-virtual {v12}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v15

    .line 6
    invoke-virtual {v12}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v12

    .line 7
    invoke-virtual {v0, v12}, Lkg/j;->l2(I)Lkg/j;

    sub-int/2addr v6, v12

    .line 8
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v14, v5, :cond_1

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v14, v5, :cond_6

    .line 9
    :cond_1
    invoke-virtual {v4}, Lkg/j;->j1()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    invoke-direct/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->X0()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->W0()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_3
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v14, v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v5, 0x1

    :goto_1
    or-int/2addr v7, v5

    .line 11
    :cond_6
    invoke-virtual {v4}, Lkg/j;->j1()Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x100

    .line 12
    invoke-direct {v1, v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Y0(I)V

    const/16 v5, 0x200

    .line 13
    invoke-direct {v1, v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M0(I)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_7

    .line 14
    :try_start_1
    invoke-direct {v1, v2, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->A0(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v9, 0x1

    goto/16 :goto_a

    .line 15
    :cond_7
    :try_start_2
    invoke-interface {v2, v4}, Lio/grpc/netty/shaded/io/netty/channel/m;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_2
    move-object v4, v10

    .line 16
    :cond_8
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v13, v5, :cond_9

    const/4 v8, 0x1

    goto :goto_4

    .line 17
    :cond_9
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v13, v5, :cond_c

    if-eqz v4, :cond_a

    .line 18
    invoke-interface {v4}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 19
    :cond_a
    iget-object v5, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->m:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v5

    .line 20
    iget-object v12, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    if-ge v5, v15, :cond_b

    goto :goto_3

    :cond_b
    sub-int/2addr v5, v15

    :goto_3
    invoke-virtual {v12, v1, v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->b(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;I)I

    move-result v5

    invoke-direct {v1, v2, v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->p0(Lio/grpc/netty/shaded/io/netty/channel/m;I)Lkg/j;

    move-result-object v4

    goto :goto_5

    .line 21
    :cond_c
    :goto_4
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v14, v5, :cond_d

    .line 22
    invoke-direct {v1, v11}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->R0(Z)Z

    move-result v5

    if-nez v5, :cond_e

    const/4 v5, 0x0

    goto :goto_8

    .line 23
    :cond_d
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v14, v5, :cond_e

    .line 24
    invoke-direct {v1, v2, v11}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->g1(Lio/grpc/netty/shaded/io/netty/channel/m;Z)Z

    move-result v5

    if-eqz v5, :cond_e

    if-nez v6, :cond_e

    goto :goto_7

    .line 25
    :cond_e
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v13, v5, :cond_12

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v14, v5, :cond_10

    if-nez v12, :cond_f

    if-eqz v15, :cond_12

    :cond_f
    if-nez v6, :cond_10

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v14, v5, :cond_10

    goto :goto_6

    :cond_10
    if-nez v4, :cond_11

    .line 26
    invoke-direct {v1, v2, v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->p0(Lio/grpc/netty/shaded/io/netty/channel/m;I)Lkg/j;

    move-result-object v4

    .line 27
    :cond_11
    :goto_5
    invoke-interface/range {p1 .. p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->f0()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_7

    .line 28
    :cond_12
    :goto_6
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v14, v0, :cond_13

    .line 29
    invoke-direct/range {p0 .. p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->P0(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    :cond_13
    :goto_7
    move v5, v7

    :goto_8
    const/4 v0, 0x2

    .line 30
    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M0(I)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v:Lug/x;

    invoke-interface {v7}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 31
    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v0(I)V

    const/4 v5, 0x1

    :cond_14
    if-eqz v5, :cond_15

    .line 32
    invoke-direct {v1, v2, v11}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->e1(Lio/grpc/netty/shaded/io/netty/channel/m;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_15
    if-eqz v4, :cond_16

    .line 33
    invoke-interface {v4}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :cond_16
    if-eqz v8, :cond_18

    if-eqz v9, :cond_17

    .line 34
    invoke-direct/range {p0 .. p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->D0(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    goto :goto_9

    .line 35
    :cond_17
    invoke-direct {v1, v10}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->O0(Ljava/lang/Throwable;)V

    :cond_18
    :goto_9
    sub-int v0, v3, v6

    return v0

    :catchall_1
    move-exception v0

    :goto_a
    if-eqz v4, :cond_19

    .line 36
    invoke-interface {v4}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :cond_19
    if-eqz v8, :cond_1b

    if-eqz v9, :cond_1a

    .line 37
    invoke-direct/range {p0 .. p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->D0(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    goto :goto_b

    .line 38
    :cond_1a
    invoke-direct {v1, v10}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->O0(Ljava/lang/Throwable;)V

    .line 39
    :cond_1b
    :goto_b
    throw v0
.end method

.method static synthetic c0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Q0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    return-void
.end method

.method private c1(Lio/grpc/netty/shaded/io/netty/channel/m;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    sget-object v0, Lkg/s0;->d:Lkg/j;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->b1(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;I)I

    move-result p1

    return p1
.end method

.method static synthetic d0()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->D:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-object v0
.end method

.method private d1(Lkg/k;Ljavax/net/ssl/SSLEngine;Lkg/j;Lkg/j;)Ljavax/net/ssl/SSLEngineResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p3}, Lkg/j;->Q1()I

    move-result v2

    .line 2
    invoke-virtual {p3}, Lkg/j;->P1()I

    move-result v3

    .line 3
    invoke-virtual {p3}, Lkg/j;->h1()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    iget-boolean v4, v4, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->a:Z

    if-nez v4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v3}, Lkg/k;->h(I)Lkg/j;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {p1, p3, v2, v3}, Lkg/j;->z2(Lkg/j;II)Lkg/j;

    .line 6
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->q:[Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v4

    invoke-virtual {p1, v4, v3}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 8
    :cond_1
    :goto_0
    :try_start_2
    instance-of p1, p3, Lkg/o;

    if-nez p1, :cond_2

    invoke-virtual {p3}, Lkg/j;->s1()I

    move-result p1

    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    .line 9
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->q:[Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {p3, v2, v3}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, p1, v1

    move-object v2, p1

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p3}, Lkg/j;->t1()[Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    move-object p1, v0

    .line 12
    :goto_2
    :try_start_3
    invoke-virtual {p4}, Lkg/j;->K2()I

    move-result v3

    invoke-virtual {p4}, Lkg/j;->t2()I

    move-result v4

    invoke-virtual {p4, v3, v4}, Lkg/j;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 13
    invoke-virtual {p2, v2, v3}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v4

    invoke-virtual {p3, v4}, Lkg/j;->l2(I)Lkg/j;

    .line 15
    invoke-virtual {p4}, Lkg/j;->K2()I

    move-result v4

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p4, v4}, Lkg/j;->L2(I)Lkg/j;

    .line 16
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v4, v5, :cond_3

    .line 17
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v3

    invoke-virtual {p4, v3}, Lkg/j;->n0(I)Lkg/j;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 18
    :cond_3
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->q:[Ljava/nio/ByteBuffer;

    aput-object v0, p2, v1

    if-eqz p1, :cond_4

    .line 19
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :cond_4
    return-object v3

    :catchall_0
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object p1, v0

    .line 20
    :goto_3
    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->q:[Ljava/nio/ByteBuffer;

    aput-object v0, p3, v1

    if-eqz p1, :cond_5

    .line 21
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 22
    :cond_5
    throw p2
.end method

.method static synthetic e0(Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->o0(Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method private e1(Lio/grpc/netty/shaded/io/netty/channel/m;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    .line 2
    :try_start_0
    iget v3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->C:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v1

    .line 3
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->f0()Z

    move-result v5

    if-nez v5, :cond_12

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v5

    if-lez v3, :cond_1

    .line 5
    iget-object v6, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    .line 6
    invoke-virtual {v6, v0, v3, v5}, Lio/grpc/netty/shaded/io/netty/channel/c;->q(Lkg/k;ILio/grpc/netty/shaded/io/netty/channel/y;)Lkg/j;

    move-result-object v6

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    .line 7
    invoke-virtual {v6, v5}, Lio/grpc/netty/shaded/io/netty/channel/c;->s(Lio/grpc/netty/shaded/io/netty/channel/y;)Lkg/j;

    move-result-object v6

    :goto_1
    if-nez v6, :cond_2

    goto/16 :goto_5

    :cond_2
    if-nez v4, :cond_3

    .line 8
    invoke-virtual {v6}, Lkg/j;->P1()I

    move-result v7

    invoke-virtual {v6}, Lkg/j;->s1()I

    move-result v8

    invoke-direct {p0, p1, v7, v8}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->q0(Lio/grpc/netty/shaded/io/netty/channel/m;II)Lkg/j;

    move-result-object v4

    .line 9
    :cond_3
    iget-object v7, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->m:Ljavax/net/ssl/SSLEngine;

    invoke-direct {p0, v0, v7, v6, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->d1(Lkg/k;Ljavax/net/ssl/SSLEngine;Lkg/j;Lkg/j;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v7

    .line 10
    invoke-virtual {v6}, Lkg/j;->j1()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 11
    iget-object v8, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    invoke-virtual {v8, v6, v5}, Lio/grpc/netty/shaded/io/netty/channel/c;->e(Lkg/j;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    move-object v5, v1

    goto :goto_2

    .line 12
    :cond_4
    invoke-interface {v6}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 13
    :goto_2
    invoke-virtual {v4}, Lkg/j;->j1()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_6

    if-eqz v5, :cond_5

    .line 14
    :try_start_2
    invoke-interface {p1, v4, v5}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    goto :goto_3

    .line 15
    :cond_5
    invoke-interface {p1, v4}, Lio/grpc/netty/shaded/io/netty/channel/v;->c0(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    move-object v4, v1

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_7

    .line 16
    :try_start_3
    sget-object v6, Lkg/s0;->d:Lkg/j;

    invoke-interface {p1, v6, v5}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 17
    :cond_7
    :goto_4
    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v5

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v5, v6, :cond_b

    .line 18
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v:Lug/x;

    invoke-interface {v0}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_8

    .line 19
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->w:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;

    invoke-virtual {v0}, Lug/h;->L()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_8

    .line 20
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslClosedEngineException;

    const-string v1, "SSLEngine closed already"

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslClosedEngineException;-><init>(Ljava/lang/String;)V

    .line 21
    :cond_8
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    invoke-virtual {v1, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/c;->p(Lio/grpc/netty/shaded/io/netty/channel/v;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_9

    .line 22
    invoke-interface {v4}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :cond_9
    if-eqz p2, :cond_a

    .line 23
    invoke-direct {p0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Y0(I)V

    :cond_a
    return-void

    .line 24
    :cond_b
    :try_start_4
    sget-object v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$b;->a:[I

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_11

    const/4 v6, 0x2

    if-eq v5, v6, :cond_10

    const/4 v6, 0x3

    if-eq v5, v6, :cond_10

    const/4 v6, 0x4

    if-eq v5, v6, :cond_f

    const/4 v0, 0x5

    if-ne v5, v0, :cond_e

    .line 25
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->P0(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_c

    .line 26
    invoke-interface {v4}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :cond_c
    if-eqz p2, :cond_d

    .line 27
    invoke-direct {p0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Y0(I)V

    :cond_d
    return-void

    .line 28
    :cond_e
    :try_start_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown handshake status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_f
    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/channel/c;->m()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 31
    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    sget-object v6, Lkg/s0;->d:Lkg/j;

    invoke-virtual {v5, v6}, Lio/grpc/netty/shaded/io/netty/channel/c;->a(Lkg/j;)V

    goto/16 :goto_0

    .line 32
    :cond_10
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->W0()Z

    goto/16 :goto_0

    .line 33
    :cond_11
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->R0(Z)Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v5, :cond_0

    :cond_12
    :goto_5
    if-eqz v4, :cond_13

    .line 34
    invoke-interface {v4}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :cond_13
    if-eqz p2, :cond_14

    .line 35
    invoke-direct {p0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Y0(I)V

    :cond_14
    return-void

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_6

    :catchall_1
    move-exception p1

    :goto_6
    if-eqz v1, :cond_15

    .line 36
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :cond_15
    if-eqz p2, :cond_16

    .line 37
    invoke-direct {p0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Y0(I)V

    .line 38
    :cond_16
    throw p1
.end method

.method static synthetic f0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->B:J

    return-wide v0
.end method

.method private f1(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/c;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    sget-object v1, Lkg/s0;->d:Lkg/j;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/c;->c(Lkg/j;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v:Lug/x;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Y0(I)V

    :cond_1
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->e1(Lio/grpc/netty/shaded/io/netty/channel/m;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->G0(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->G0(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 7
    throw v0
.end method

.method static synthetic g0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->w:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;

    return-object p0
.end method

.method private g1(Lio/grpc/netty/shaded/io/netty/channel/m;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->f0()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_11

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/16 v5, 0x800

    .line 3
    invoke-direct {p0, p1, v5, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->q0(Lio/grpc/netty/shaded/io/netty/channel/m;II)Lkg/j;

    move-result-object v2

    .line 4
    :cond_1
    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->m:Ljavax/net/ssl/SSLEngine;

    sget-object v6, Lkg/s0;->d:Lkg/j;

    invoke-direct {p0, v0, v5, v6, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->d1(Lkg/k;Ljavax/net/ssl/SSLEngine;Lkg/j;Lkg/j;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v6

    if-lez v6, :cond_3

    .line 6
    invoke-interface {p1, v2}, Lio/grpc/netty/shaded/io/netty/channel/v;->c0(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v6

    new-instance v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$c;

    invoke-direct {v7, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;)V

    invoke-interface {v6, v7}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    if-eqz p2, :cond_2

    const/16 v6, 0x10

    .line 7
    invoke-direct {p0, v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Y0(I)V

    :cond_2
    move-object v2, v1

    .line 8
    :cond_3
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    .line 9
    sget-object v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$b;->a:[I

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v3, :cond_e

    const/4 v8, 0x2

    if-eq v7, v8, :cond_b

    const/4 v8, 0x3

    if-eq v7, v8, :cond_7

    const/4 v3, 0x4

    if-eq v7, v3, :cond_f

    const/4 v3, 0x5

    if-ne v7, v3, :cond_6

    if-nez p2, :cond_4

    .line 10
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->c1(Lio/grpc/netty/shaded/io/netty/channel/m;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v3, :cond_f

    :cond_4
    if-eqz v2, :cond_5

    .line 11
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :cond_5
    return v4

    .line 12
    :cond_6
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown handshake status: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_7
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->W0()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/c;->m()Z

    move-result v0

    if-nez v0, :cond_8

    .line 14
    invoke-direct {p0, p1, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->e1(Lio/grpc/netty/shaded/io/netty/channel/m;Z)V

    :cond_8
    if-nez p2, :cond_9

    .line 15
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->c1(Lio/grpc/netty/shaded/io/netty/channel/m;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    if-eqz v2, :cond_a

    .line 16
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :cond_a
    return v3

    .line 17
    :cond_b
    :try_start_2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->W0()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p2, :cond_c

    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/c;->m()Z

    move-result p2

    if-nez p2, :cond_c

    .line 18
    invoke-direct {p0, p1, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->e1(Lio/grpc/netty/shaded/io/netty/channel/m;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    if-eqz v2, :cond_d

    .line 19
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :cond_d
    return v4

    .line 20
    :cond_e
    :try_start_3
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->R0(Z)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_0

    .line 21
    :cond_f
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v3

    if-nez v3, :cond_10

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v6, v3, :cond_10

    goto :goto_0

    .line 22
    :cond_10
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v3, v5, :cond_0

    :cond_11
    :goto_0
    if-eqz v2, :cond_12

    .line 23
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :cond_12
    return v4

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_13

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 24
    :cond_13
    throw p1
.end method

.method static synthetic h0(Lkg/j;Lkg/j;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->t0(Lkg/j;Lkg/j;I)Z

    move-result p0

    return p0
.end method

.method static synthetic i0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    return-object p0
.end method

.method static synthetic j0(Lkg/j;II)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->a1(Lkg/j;II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->V0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic l0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->O0(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic m0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Z)Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->H0(Z)Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->l:Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object p0
.end method

.method private static o0(Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lug/z;->b(ZLug/q;Lug/x;)Lug/q;

    return-void
.end method

.method private p0(Lio/grpc/netty/shaded/io/netty/channel/m;I)Lkg/j;
    .locals 1

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    iget-boolean v0, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->a:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, p2}, Lkg/k;->h(I)Lkg/j;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1, p2}, Lkg/k;->l(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method private q0(Lio/grpc/netty/shaded/io/netty/channel/m;II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->a(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lkg/k;II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method private s0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v:Lug/x;

    .line 2
    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->z:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->l:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object v3

    new-instance v4, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$g;

    invoke-direct {v4, p0, v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$g;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lug/x;J)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v1, v2, v5}, Lug/l;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lug/d0;

    move-result-object v1

    .line 5
    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$h;

    invoke-direct {v2, p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$h;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lug/q;)V

    invoke-interface {v0, v2}, Lug/x;->c(Lug/r;)Lug/x;

    :cond_1
    :goto_0
    return-void
.end method

.method private static t0(Lkg/j;Lkg/j;I)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lkg/j;->F()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result v2

    sub-int v2, p2, v2

    const/4 v3, 0x0

    if-lt v2, v0, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Lkg/j;->k1(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ge v1, p2, :cond_1

    :cond_0
    if-ge v1, p2, :cond_2

    .line 5
    invoke-virtual {p0, v0, v3}, Lkg/j;->m0(IZ)I

    move-result p2

    invoke-static {p2}, Lkg/n;->m(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lkg/j;->x2(Lkg/j;)Lkg/j;

    .line 7
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    const/4 p0, 0x1

    return p0

    :cond_2
    return v3
.end method

.method private u0(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpg/a;->B()V

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->F0(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 3
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->P0(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    const/16 v0, 0x100

    .line 4
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v0(I)V

    .line 5
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->k()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method private v0(I)V
    .locals 1

    iget-short v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->y:S

    not-int p1, p1

    and-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->y:S

    return-void
.end method

.method private w0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Y0(I)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->m:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 4
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->M(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_0
    return-void

    .line 6
    :cond_1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p3

    const/4 v0, 0x0

    const/16 v1, 0x40

    .line 7
    :try_start_0
    invoke-direct {p0, p1, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->E0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M0(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 9
    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Y0(I)V

    .line 10
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lug/z;->b(ZLug/q;Lug/x;)Lug/q;

    move-result-object p2

    check-cast p2, Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-direct {p0, p1, p3, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->S0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->w:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;

    new-instance p3, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$f;

    invoke-direct {p3, p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$f;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    invoke-virtual {p1, p3}, Lug/h;->c(Lug/r;)Lug/x;

    :goto_1
    return-void

    :catchall_0
    move-exception v2

    .line 12
    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M0(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 13
    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Y0(I)V

    .line 14
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lug/z;->b(ZLug/q;Lug/x;)Lug/q;

    move-result-object p2

    check-cast p2, Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-direct {p0, p1, p3, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->S0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->w:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;

    new-instance p3, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$f;

    invoke-direct {p3, p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$f;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    invoke-virtual {p1, p3}, Lug/h;->c(Lug/r;)Lug/x;

    .line 16
    :goto_2
    throw v2
.end method

.method private x0(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/ssl/NotSslRecordException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->x:I

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result v1

    if-ge v1, v0, :cond_3

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p2}, Lkg/j;->Q1()I

    move-result v1

    invoke-static {p2, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->d(Lkg/j;I)I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    if-le v1, v0, :cond_2

    .line 5
    iput v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->x:I

    return-void

    :cond_2
    move v0, v1

    :cond_3
    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->x:I

    .line 7
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->b1(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 8
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->I0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 9
    :cond_4
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/NotSslRecordException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not an SSL/TLS record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {p2}, Lkg/n;->v(Lkg/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/NotSslRecordException;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result v1

    invoke-virtual {p2, v1}, Lkg/j;->l2(I)Lkg/j;

    .line 12
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->T0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    .line 13
    throw v0
.end method

.method private y0(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->b1(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 2
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->I0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public A(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->l:Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p1

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    const/16 v1, 0x10

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/e;I)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v2

    sget-object v3, Lio/grpc/netty/shaded/io/netty/channel/r;->G:Lio/grpc/netty/shaded/io/netty/channel/r;

    invoke-interface {v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/f;->b(Lio/grpc/netty/shaded/io/netty/channel/r;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_2

    .line 6
    :cond_0
    invoke-direct {p0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Z0(Z)V

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/e;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->S()Lio/grpc/netty/shaded/io/netty/channel/s;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->I()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    .line 9
    :cond_1
    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Y0(I)V

    :cond_2
    return-void
.end method

.method public D(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Z0(Z)V

    .line 3
    :cond_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->q()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method public I(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/c;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    const-string v2, "Pending write on removal of SslHandler"

    invoke-direct {v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lio/grpc/netty/shaded/io/netty/channel/c;->p(Lio/grpc/netty/shaded/io/netty/channel/v;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    .line 4
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v:Lug/x;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "SslHandler removed before handshake completed"

    if-nez v1, :cond_1

    .line 5
    :try_start_1
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v0, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v:Lug/x;

    invoke-interface {v1, v0}, Lug/x;->z(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/u1;

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u1;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Lio/grpc/netty/shaded/io/netty/channel/m;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 8
    :cond_1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->w:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;

    invoke-virtual {p1}, Lug/h;->isDone()Z

    move-result p1

    if-nez p1, :cond_3

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v0, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 10
    :cond_2
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->O0(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :cond_3
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->m:Ljavax/net/ssl/SSLEngine;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->m:Ljavax/net/ssl/SSLEngine;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    .line 12
    throw p1
.end method

.method public V(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/channel/v;->Q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method public Z(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u0(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method public a(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->K0(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->D:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v1

    const-string v2, "{} Swallowing a harmless \'connection reset by peer / broken pipe\' error that occurred while writing close_notify in response to the peer\'s close_notify"

    .line 4
    invoke-interface {v0, v2, v1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p2

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->close()Lio/grpc/netty/shaded/io/netty/channel/i;

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of p1, p2, Lkg/j;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/UnsupportedMessageTypeException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lkg/j;

    aput-object v2, v0, v1

    invoke-direct {p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/UnsupportedMessageTypeException;-><init>(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 3
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p3, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    if-nez p1, :cond_1

    .line 6
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->N0()Ljava/lang/IllegalStateException;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    goto :goto_0

    .line 8
    :cond_1
    check-cast p2, Lkg/j;

    invoke-virtual {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/c;->c(Lkg/j;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    :goto_0
    return-void
.end method

.method public j(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->w0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;Z)V

    return-void
.end method

.method public l(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->w0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;Z)V

    return-void
.end method

.method public n(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M0(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Y0(I)V

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->u:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$m;

    invoke-virtual {v1, p1}, Lio/grpc/netty/shaded/io/netty/channel/c;->v(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 4
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->G0(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 5
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Z0(Z)V

    return-void

    :cond_0
    const/16 v0, 0x80

    .line 6
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 7
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->f1(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->T0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    .line 9
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public o(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v:Lug/x;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Y0(I)V

    .line 3
    :cond_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->read()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method public r0()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->z0()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->v:Lug/x;

    invoke-interface {v0}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v8, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v8}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    const/16 v2, 0x20

    .line 3
    invoke-direct {p0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M0(I)Z

    move-result v2

    xor-int/lit8 v5, v2, 0x1

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M0(I)Z

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v8

    invoke-direct/range {v2 .. v7}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->U0(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;ZZZ)V

    .line 4
    invoke-direct {p0, v8}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->O0(Ljava/lang/Throwable;)V

    .line 5
    :try_start_0
    invoke-super {p0, p1}, Lpg/a;->t(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_1

    :goto_1
    return-void

    .line 7
    :cond_1
    throw p1
.end method

.method protected x(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    .locals 0
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
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/16 p3, 0x80

    .line 1
    invoke-direct {p0, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M0(I)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->p:Z

    if-eqz p3, :cond_1

    .line 3
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->x0(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->y0(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;)V

    :goto_0
    return-void
.end method

.method public z0()Ljavax/net/ssl/SSLEngine;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->m:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method
