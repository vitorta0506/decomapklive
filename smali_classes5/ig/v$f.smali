.class final Lig/v$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field private final a:Lig/g0;

.field private final b:Lio/grpc/netty/shaded/io/netty/channel/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/channel/h<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "*>;*>;"
        }
    .end annotation
.end field

.field private final d:Lio/grpc/internal/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/p1<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/m0;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lio/grpc/netty/shaded/io/netty/channel/m0;

.field private final f:Z

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:J

.field private final k:Lio/grpc/internal/h;

.field private final l:J

.field private final m:Z

.field private final n:Lio/grpc/internal/p2$b;

.field private final o:Lig/v$c;

.field private final p:Z

.field private q:Z


# direct methods
.method constructor <init>(Lig/g0;Lio/grpc/netty/shaded/io/netty/channel/h;Ljava/util/Map;Lio/grpc/internal/p1;ZIIIJJZLio/grpc/internal/p2$b;Lig/v$c;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lig/g0;",
            "Lio/grpc/netty/shaded/io/netty/channel/h<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/e;",
            ">;",
            "Ljava/util/Map<",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "*>;*>;",
            "Lio/grpc/internal/p1<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/m0;",
            ">;ZIIIJJZ",
            "Lio/grpc/internal/p2$b;",
            "Lig/v$c;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    move-wide v1, p9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "protocolNegotiator"

    move-object v4, p1

    .line 2
    invoke-static {p1, v3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lig/g0;

    iput-object v3, v0, Lig/v$f;->a:Lig/g0;

    move-object v3, p2

    .line 3
    iput-object v3, v0, Lig/v$f;->b:Lio/grpc/netty/shaded/io/netty/channel/h;

    .line 4
    new-instance v3, Ljava/util/HashMap;

    move-object v4, p3

    invoke-direct {v3, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v3, v0, Lig/v$f;->c:Ljava/util/Map;

    move-object v3, p4

    .line 5
    iput-object v3, v0, Lig/v$f;->d:Lio/grpc/internal/p1;

    .line 6
    invoke-interface {p4}, Lio/grpc/internal/p1;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/netty/shaded/io/netty/channel/m0;

    iput-object v3, v0, Lig/v$f;->e:Lio/grpc/netty/shaded/io/netty/channel/m0;

    move v3, p5

    .line 7
    iput-boolean v3, v0, Lig/v$f;->f:Z

    move v3, p6

    .line 8
    iput v3, v0, Lig/v$f;->g:I

    move v3, p7

    .line 9
    iput v3, v0, Lig/v$f;->h:I

    move v3, p8

    .line 10
    iput v3, v0, Lig/v$f;->i:I

    .line 11
    iput-wide v1, v0, Lig/v$f;->j:J

    .line 12
    new-instance v3, Lio/grpc/internal/h;

    const-string v4, "keepalive time nanos"

    invoke-direct {v3, v4, p9, p10}, Lio/grpc/internal/h;-><init>(Ljava/lang/String;J)V

    iput-object v3, v0, Lig/v$f;->k:Lio/grpc/internal/h;

    move-wide/from16 v1, p11

    .line 13
    iput-wide v1, v0, Lig/v$f;->l:J

    move/from16 v1, p13

    .line 14
    iput-boolean v1, v0, Lig/v$f;->m:Z

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lig/v$f;->n:Lio/grpc/internal/p2$b;

    if-eqz p15, :cond_0

    move-object/from16 v1, p15

    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lig/v$c;

    invoke-direct {v1}, Lig/v$c;-><init>()V

    :goto_0
    iput-object v1, v0, Lig/v$f;->o:Lig/v$c;

    move/from16 v1, p16

    .line 17
    iput-boolean v1, v0, Lig/v$f;->p:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lig/v$f;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lig/v$f;->q:Z

    .line 3
    iget-object v0, p0, Lig/v$f;->a:Lig/g0;

    invoke-interface {v0}, Lig/g0;->close()V

    .line 4
    iget-object v0, p0, Lig/v$f;->d:Lio/grpc/internal/p1;

    iget-object v1, p0, Lig/v$f;->e:Lio/grpc/netty/shaded/io/netty/channel/m0;

    invoke-interface {v0, v1}, Lio/grpc/internal/p1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h1(Ljava/net/SocketAddress;Lio/grpc/internal/s$a;Lio/grpc/ChannelLogger;)Lio/grpc/internal/u;
    .locals 26

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lig/v$f;->q:Z

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "The transport factory is closed."

    invoke-static {v1, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v1, v0, Lig/v$f;->a:Lig/g0;

    .line 3
    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/s$a;->c()Lio/grpc/HttpConnectProxiedSocketAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lio/grpc/HttpConnectProxiedSocketAddress;->getTargetAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 5
    invoke-virtual {v2}, Lio/grpc/HttpConnectProxiedSocketAddress;->getProxyAddress()Ljava/net/SocketAddress;

    move-result-object v3

    .line 6
    invoke-virtual {v2}, Lio/grpc/HttpConnectProxiedSocketAddress;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v2}, Lio/grpc/HttpConnectProxiedSocketAddress;->getPassword()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lig/v$f;->a:Lig/g0;

    .line 8
    invoke-static {v3, v4, v2, v5}, Lig/h0;->c(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lig/g0;)Lig/g0;

    move-result-object v2

    move-object v4, v1

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    move-object v8, v1

    .line 9
    :goto_0
    iget-object v1, v0, Lig/v$f;->k:Lio/grpc/internal/h;

    invoke-virtual {v1}, Lio/grpc/internal/h;->d()Lio/grpc/internal/h$b;

    move-result-object v1

    .line 10
    new-instance v2, Lig/v$f$a;

    move-object/from16 v20, v2

    invoke-direct {v2, v0, v1}, Lig/v$f$a;-><init>(Lig/v$f;Lio/grpc/internal/h$b;)V

    .line 11
    new-instance v2, Lig/a0;

    move-object v3, v2

    iget-object v5, v0, Lig/v$f;->b:Lio/grpc/netty/shaded/io/netty/channel/h;

    iget-object v6, v0, Lig/v$f;->c:Ljava/util/Map;

    iget-object v7, v0, Lig/v$f;->e:Lio/grpc/netty/shaded/io/netty/channel/m0;

    iget-boolean v9, v0, Lig/v$f;->f:Z

    iget v10, v0, Lig/v$f;->g:I

    iget v11, v0, Lig/v$f;->h:I

    iget v12, v0, Lig/v$f;->i:I

    .line 12
    invoke-virtual {v1}, Lio/grpc/internal/h$b;->b()J

    move-result-wide v13

    move-object/from16 p1, v2

    iget-wide v1, v0, Lig/v$f;->l:J

    move-wide v15, v1

    iget-boolean v1, v0, Lig/v$f;->m:Z

    move/from16 v17, v1

    .line 13
    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/s$a;->a()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/s$a;->d()Ljava/lang/String;

    move-result-object v19

    iget-object v1, v0, Lig/v$f;->n:Lio/grpc/internal/p2$b;

    .line 14
    invoke-virtual {v1}, Lio/grpc/internal/p2$b;->a()Lio/grpc/internal/p2;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/s$a;->b()Lio/grpc/a;

    move-result-object v22

    iget-object v1, v0, Lig/v$f;->o:Lig/v$c;

    move-object/from16 v23, v1

    iget-boolean v1, v0, Lig/v$f;->p:Z

    move/from16 v25, v1

    move-object/from16 v24, p3

    invoke-direct/range {v3 .. v25}, Lig/a0;-><init>(Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/h;Ljava/util/Map;Lio/grpc/netty/shaded/io/netty/channel/m0;Lig/g0;ZIIIJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lio/grpc/internal/p2;Lio/grpc/a;Lig/v$c;Lio/grpc/ChannelLogger;Z)V

    return-object p1
.end method

.method public o0()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lig/v$f;->e:Lio/grpc/netty/shaded/io/netty/channel/m0;

    return-object v0
.end method
