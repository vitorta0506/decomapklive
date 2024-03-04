.class final Lxg/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Z

.field private final c:Z

.field private final d:Lio/grpc/internal/p2$b;

.field private final e:Ljavax/net/SocketFactory;

.field private final f:Ljavax/net/ssl/SSLSocketFactory;

.field private final g:Ljavax/net/ssl/HostnameVerifier;

.field private final h:Lio/grpc/okhttp/internal/a;

.field private final i:I

.field private final j:Z

.field private final k:J

.field private final l:Lio/grpc/internal/h;

.field private final m:J

.field private final n:I

.field private final o:Z

.field private final p:I

.field private final q:Ljava/util/concurrent/ScheduledExecutorService;

.field private final r:Z

.field private s:Z


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lio/grpc/okhttp/internal/a;IZJJIZILio/grpc/internal/p2$b;Z)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p9

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 3
    :goto_0
    iput-boolean v6, v0, Lxg/d$f;->c:Z

    if-eqz v6, :cond_1

    .line 4
    sget-object v6, Lio/grpc/internal/GrpcUtil;->u:Lio/grpc/internal/f2$d;

    invoke-static {v6}, Lio/grpc/internal/f2;->d(Lio/grpc/internal/f2$d;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_1

    :cond_1
    move-object v6, p2

    :goto_1
    iput-object v6, v0, Lxg/d$f;->q:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v6, p3

    .line 5
    iput-object v6, v0, Lxg/d$f;->e:Ljavax/net/SocketFactory;

    move-object v6, p4

    .line 6
    iput-object v6, v0, Lxg/d$f;->f:Ljavax/net/ssl/SSLSocketFactory;

    move-object v6, p5

    .line 7
    iput-object v6, v0, Lxg/d$f;->g:Ljavax/net/ssl/HostnameVerifier;

    move-object v6, p6

    .line 8
    iput-object v6, v0, Lxg/d$f;->h:Lio/grpc/okhttp/internal/a;

    move v6, p7

    .line 9
    iput v6, v0, Lxg/d$f;->i:I

    move/from16 v6, p8

    .line 10
    iput-boolean v6, v0, Lxg/d$f;->j:Z

    .line 11
    iput-wide v2, v0, Lxg/d$f;->k:J

    .line 12
    new-instance v6, Lio/grpc/internal/h;

    const-string v7, "keepalive time nanos"

    invoke-direct {v6, v7, v2, v3}, Lio/grpc/internal/h;-><init>(Ljava/lang/String;J)V

    iput-object v6, v0, Lxg/d$f;->l:Lio/grpc/internal/h;

    move-wide/from16 v2, p11

    .line 13
    iput-wide v2, v0, Lxg/d$f;->m:J

    move/from16 v2, p13

    .line 14
    iput v2, v0, Lxg/d$f;->n:I

    move/from16 v2, p14

    .line 15
    iput-boolean v2, v0, Lxg/d$f;->o:Z

    move/from16 v2, p15

    .line 16
    iput v2, v0, Lxg/d$f;->p:I

    move/from16 v2, p17

    .line 17
    iput-boolean v2, v0, Lxg/d$f;->r:Z

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 18
    :goto_2
    iput-boolean v4, v0, Lxg/d$f;->b:Z

    const-string v2, "transportTracerFactory"

    move-object/from16 v3, p16

    .line 19
    invoke-static {v3, v2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/p2$b;

    iput-object v2, v0, Lxg/d$f;->d:Lio/grpc/internal/p2$b;

    if-eqz v4, :cond_3

    .line 20
    invoke-static {}, Lxg/d;->y()Lio/grpc/internal/f2$d;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/internal/f2;->d(Lio/grpc/internal/f2$d;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iput-object v1, v0, Lxg/d$f;->a:Ljava/util/concurrent/Executor;

    goto :goto_3

    .line 21
    :cond_3
    iput-object v1, v0, Lxg/d$f;->a:Ljava/util/concurrent/Executor;

    :goto_3
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lio/grpc/okhttp/internal/a;IZJJIZILio/grpc/internal/p2$b;ZLxg/d$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p17}, Lxg/d$f;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lio/grpc/okhttp/internal/a;IZJJIZILio/grpc/internal/p2$b;Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lxg/d$f;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lxg/d$f;->s:Z

    .line 3
    iget-boolean v0, p0, Lxg/d$f;->c:Z

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lio/grpc/internal/GrpcUtil;->u:Lio/grpc/internal/f2$d;

    iget-object v1, p0, Lxg/d$f;->q:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1}, Lio/grpc/internal/f2;->f(Lio/grpc/internal/f2$d;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-boolean v0, p0, Lxg/d$f;->b:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lxg/d;->y()Lio/grpc/internal/f2$d;

    move-result-object v0

    iget-object v1, p0, Lxg/d$f;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lio/grpc/internal/f2;->f(Lio/grpc/internal/f2$d;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public h1(Ljava/net/SocketAddress;Lio/grpc/internal/s$a;Lio/grpc/ChannelLogger;)Lio/grpc/internal/u;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lxg/d$f;->s:Z

    if-nez v1, :cond_1

    .line 2
    iget-object v1, v0, Lxg/d$f;->l:Lio/grpc/internal/h;

    invoke-virtual {v1}, Lio/grpc/internal/h;->d()Lio/grpc/internal/h$b;

    move-result-object v1

    .line 3
    new-instance v2, Lxg/d$f$a;

    move-object v15, v2

    invoke-direct {v2, v0, v1}, Lxg/d$f$a;-><init>(Lxg/d$f;Lio/grpc/internal/h$b;)V

    .line 4
    move-object/from16 v3, p1

    check-cast v3, Ljava/net/InetSocketAddress;

    .line 5
    new-instance v19, Lxg/g;

    move-object/from16 v2, v19

    .line 6
    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/s$a;->a()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/s$a;->d()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/s$a;->b()Lio/grpc/a;

    move-result-object v6

    iget-object v7, v0, Lxg/d$f;->a:Ljava/util/concurrent/Executor;

    iget-object v8, v0, Lxg/d$f;->e:Ljavax/net/SocketFactory;

    iget-object v9, v0, Lxg/d$f;->f:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v10, v0, Lxg/d$f;->g:Ljavax/net/ssl/HostnameVerifier;

    iget-object v11, v0, Lxg/d$f;->h:Lio/grpc/okhttp/internal/a;

    iget v12, v0, Lxg/d$f;->i:I

    iget v13, v0, Lxg/d$f;->n:I

    .line 9
    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/s$a;->c()Lio/grpc/HttpConnectProxiedSocketAddress;

    move-result-object v14

    move-object/from16 p3, v1

    iget v1, v0, Lxg/d$f;->p:I

    move/from16 v16, v1

    iget-object v1, v0, Lxg/d$f;->d:Lio/grpc/internal/p2$b;

    .line 10
    invoke-virtual {v1}, Lio/grpc/internal/p2$b;->a()Lio/grpc/internal/p2;

    move-result-object v17

    iget-boolean v1, v0, Lxg/d$f;->r:Z

    move/from16 v18, v1

    invoke-direct/range {v2 .. v18}, Lxg/g;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/a;Ljava/util/concurrent/Executor;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lio/grpc/okhttp/internal/a;IILio/grpc/HttpConnectProxiedSocketAddress;Ljava/lang/Runnable;ILio/grpc/internal/p2;Z)V

    .line 11
    iget-boolean v1, v0, Lxg/d$f;->j:Z

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    .line 12
    invoke-virtual/range {p3 .. p3}, Lio/grpc/internal/h$b;->b()J

    move-result-wide v6

    iget-wide v8, v0, Lxg/d$f;->m:J

    iget-boolean v10, v0, Lxg/d$f;->o:Z

    move-object/from16 v4, v19

    .line 13
    invoke-virtual/range {v4 .. v10}, Lxg/g;->U(ZJJZ)V

    :cond_0
    return-object v19

    .line 14
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The transport factory is closed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public o0()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lxg/d$f;->q:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
