.class public final Lig/v;
.super Lio/grpc/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lig/v$f;,
        Lig/v$b;,
        Lig/v$c;,
        Lig/v$d;,
        Lig/v$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/b<",
        "Lig/v;",
        ">;"
    }
.end annotation


# static fields
.field private static final q:Z

.field private static final r:J

.field private static final s:Lio/grpc/netty/shaded/io/netty/channel/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/channel/h<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final t:Lio/grpc/internal/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/p1<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/m0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lio/grpc/internal/h1;

.field private c:Lio/grpc/internal/p2$b;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lio/grpc/netty/shaded/io/netty/channel/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/channel/h<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lio/grpc/internal/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/p1<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/m0;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:I

.field private i:I

.field private j:J

.field private k:J

.field private l:Z

.field private m:Lig/g0$a;

.field private final n:Z

.field private o:Lig/v$c;

.field private final p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lig/v;->r:J

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/w0;

    sget-object v1, Lig/m0;->q:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/w0;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lig/v;->s:Lio/grpc/netty/shaded/io/netty/channel/h;

    .line 3
    sget-object v0, Lig/m0;->o:Lio/grpc/internal/f2$d;

    .line 4
    invoke-static {v0}, Lio/grpc/internal/g2;->c(Lio/grpc/internal/f2$d;)Lio/grpc/internal/g2;

    move-result-object v0

    sput-object v0, Lig/v;->t:Lio/grpc/internal/p1;

    const-string v0, "GRPC_EXPERIMENTAL_AUTOFLOWCONTROL"

    .line 5
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "true"

    .line 6
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lig/v;->q:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lio/grpc/internal/b;-><init>()V

    .line 2
    invoke-static {}, Lio/grpc/internal/p2;->a()Lio/grpc/internal/p2$b;

    move-result-object v0

    iput-object v0, p0, Lig/v;->c:Lio/grpc/internal/p2$b;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lig/v;->d:Ljava/util/Map;

    .line 4
    sget-object v0, Lig/v;->s:Lio/grpc/netty/shaded/io/netty/channel/h;

    iput-object v0, p0, Lig/v;->e:Lio/grpc/netty/shaded/io/netty/channel/h;

    .line 5
    sget-object v0, Lig/v;->t:Lio/grpc/internal/p1;

    iput-object v0, p0, Lig/v;->f:Lio/grpc/internal/p1;

    .line 6
    sget-boolean v0, Lig/v;->q:Z

    iput-boolean v0, p0, Lig/v;->g:Z

    const/high16 v0, 0x100000

    .line 7
    iput v0, p0, Lig/v;->h:I

    const/16 v0, 0x2000

    .line 8
    iput v0, p0, Lig/v;->i:I

    const-wide v0, 0x7fffffffffffffffL

    .line 9
    iput-wide v0, p0, Lig/v;->j:J

    .line 10
    sget-wide v0, Lio/grpc/internal/GrpcUtil;->m:J

    iput-wide v0, p0, Lig/v;->k:J

    .line 11
    new-instance v0, Lig/v$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lig/v$b;-><init>(Lig/v;Lig/v$a;)V

    iput-object v0, p0, Lig/v;->m:Lig/g0$a;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lig/v;->p:Z

    .line 13
    new-instance v2, Lio/grpc/internal/h1;

    new-instance v3, Lig/v$e;

    invoke-direct {v3, p0, v1}, Lig/v$e;-><init>(Lig/v;Lig/v$a;)V

    new-instance v4, Lig/v$d;

    invoke-direct {v4, p0, v1}, Lig/v$d;-><init>(Lig/v;Lig/v$a;)V

    invoke-direct {v2, p1, v3, v4}, Lio/grpc/internal/h1;-><init>(Ljava/lang/String;Lio/grpc/internal/h1$c;Lio/grpc/internal/h1$b;)V

    iput-object v2, p0, Lig/v;->b:Lio/grpc/internal/h1;

    .line 14
    iput-boolean v0, p0, Lig/v;->n:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lio/grpc/e;Lio/grpc/b;Lig/g0$a;)V
    .locals 8

    .line 15
    invoke-direct {p0}, Lio/grpc/internal/b;-><init>()V

    .line 16
    invoke-static {}, Lio/grpc/internal/p2;->a()Lio/grpc/internal/p2$b;

    move-result-object v0

    iput-object v0, p0, Lig/v;->c:Lio/grpc/internal/p2$b;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lig/v;->d:Ljava/util/Map;

    .line 18
    sget-object v0, Lig/v;->s:Lio/grpc/netty/shaded/io/netty/channel/h;

    iput-object v0, p0, Lig/v;->e:Lio/grpc/netty/shaded/io/netty/channel/h;

    .line 19
    sget-object v0, Lig/v;->t:Lio/grpc/internal/p1;

    iput-object v0, p0, Lig/v;->f:Lio/grpc/internal/p1;

    .line 20
    sget-boolean v0, Lig/v;->q:Z

    iput-boolean v0, p0, Lig/v;->g:Z

    const/high16 v0, 0x100000

    .line 21
    iput v0, p0, Lig/v;->h:I

    const/16 v0, 0x2000

    .line 22
    iput v0, p0, Lig/v;->i:I

    const-wide v0, 0x7fffffffffffffffL

    .line 23
    iput-wide v0, p0, Lig/v;->j:J

    .line 24
    sget-wide v0, Lio/grpc/internal/GrpcUtil;->m:J

    iput-wide v0, p0, Lig/v;->k:J

    .line 25
    new-instance v0, Lig/v$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lig/v$b;-><init>(Lig/v;Lig/v$a;)V

    iput-object v0, p0, Lig/v;->m:Lig/g0$a;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lig/v;->p:Z

    .line 27
    new-instance v0, Lio/grpc/internal/h1;

    new-instance v6, Lig/v$e;

    invoke-direct {v6, p0, v1}, Lig/v$e;-><init>(Lig/v;Lig/v$a;)V

    new-instance v7, Lig/v$d;

    invoke-direct {v7, p0, v1}, Lig/v$d;-><init>(Lig/v;Lig/v$a;)V

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lio/grpc/internal/h1;-><init>(Ljava/lang/String;Lio/grpc/e;Lio/grpc/b;Lio/grpc/internal/h1$c;Lio/grpc/internal/h1$b;)V

    iput-object v0, p0, Lig/v;->b:Lio/grpc/internal/h1;

    const-string p1, "negotiator"

    .line 28
    invoke-static {p4, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lig/g0$a;

    iput-object p1, p0, Lig/v;->m:Lig/g0$a;

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lig/v;->n:Z

    return-void
.end method

.method static E(Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;Lio/grpc/internal/p1;)Lig/g0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;",
            "Lio/grpc/internal/p1<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lig/g0;"
        }
    .end annotation

    .line 1
    sget-object v0, Lig/v$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1, p2}, Lig/h0;->j(Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;Lio/grpc/internal/p1;)Lig/g0;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported negotiationType: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    invoke-static {}, Lig/h0;->h()Lig/g0;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    invoke-static {}, Lig/h0;->f()Lig/g0;

    move-result-object p0

    return-object p0
.end method

.method public static H(Ljava/lang/String;I)Lig/v;
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/internal/GrpcUtil;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lig/v;->I(Ljava/lang/String;)Lig/v;

    move-result-object p0

    return-object p0
.end method

.method public static I(Ljava/lang/String;)Lig/v;
    .locals 1

    new-instance v0, Lig/v;

    invoke-direct {v0, p0}, Lig/v;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic y(Lig/v;)Lig/g0$a;
    .locals 0

    iget-object p0, p0, Lig/v;->m:Lig/g0$a;

    return-object p0
.end method

.method static synthetic z(Lig/v;)Lio/grpc/internal/h1;
    .locals 0

    iget-object p0, p0, Lig/v;->b:Lio/grpc/internal/h1;

    return-object p0
.end method


# virtual methods
.method A()V
    .locals 6

    .line 1
    iget-object v0, p0, Lig/v;->e:Lio/grpc/netty/shaded/io/netty/channel/h;

    sget-object v1, Lig/v;->s:Lio/grpc/netty/shaded/io/netty/channel/h;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    iget-object v4, p0, Lig/v;->f:Lio/grpc/internal/p1;

    sget-object v5, Lig/v;->t:Lio/grpc/internal/p1;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lig/v;->f:Lio/grpc/internal/p1;

    sget-object v1, Lig/v;->t:Lio/grpc/internal/p1;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v4, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_2
    const-string v0, "Both EventLoopGroup and ChannelType should be provided or neither should be"

    .line 3
    invoke-static {v2, v0}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    return-void
.end method

.method B()Lio/grpc/internal/s;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lig/v;->A()V

    .line 2
    iget-object v1, v0, Lig/v;->m:Lig/g0$a;

    invoke-interface {v1}, Lig/g0$a;->b()Lig/g0;

    move-result-object v3

    .line 3
    new-instance v1, Lig/v$f;

    move-object v2, v1

    iget-object v4, v0, Lig/v;->e:Lio/grpc/netty/shaded/io/netty/channel/h;

    iget-object v5, v0, Lig/v;->d:Ljava/util/Map;

    iget-object v6, v0, Lig/v;->f:Lio/grpc/internal/p1;

    iget-boolean v7, v0, Lig/v;->g:Z

    iget v8, v0, Lig/v;->h:I

    iget v9, v0, Lio/grpc/internal/b;->a:I

    iget v10, v0, Lig/v;->i:I

    iget-wide v11, v0, Lig/v;->j:J

    iget-wide v13, v0, Lig/v;->k:J

    iget-boolean v15, v0, Lig/v;->l:Z

    move-object/from16 v19, v1

    iget-object v1, v0, Lig/v;->c:Lio/grpc/internal/p2$b;

    move-object/from16 v16, v1

    iget-object v1, v0, Lig/v;->o:Lig/v$c;

    move-object/from16 v17, v1

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Lig/v$f;-><init>(Lig/g0;Lio/grpc/netty/shaded/io/netty/channel/h;Ljava/util/Map;Lio/grpc/internal/p1;ZIIIJJZLio/grpc/internal/p2$b;Lig/v$c;Z)V

    return-object v19
.end method

.method public C(Lio/grpc/netty/shaded/io/netty/channel/h;)Lig/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/h<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/e;",
            ">;)",
            "Lig/v;"
        }
    .end annotation

    const-string v0, "channelFactory"

    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/h;

    iput-object p1, p0, Lig/v;->e:Lio/grpc/netty/shaded/io/netty/channel/h;

    return-object p0
.end method

.method public D(Ljava/lang/Class;)Lig/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/e;",
            ">;)",
            "Lig/v;"
        }
    .end annotation

    const-string v0, "channelType"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/w0;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/w0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lig/v;->C(Lio/grpc/netty/shaded/io/netty/channel/h;)Lig/v;

    move-result-object p1

    return-object p1
.end method

.method public F(Lio/grpc/netty/shaded/io/netty/channel/m0;)Lig/v;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lio/grpc/internal/h0;

    invoke-direct {v0, p1}, Lio/grpc/internal/h0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lig/v;->G(Lio/grpc/internal/p1;)Lig/v;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Lig/v;->t:Lio/grpc/internal/p1;

    invoke-virtual {p0, p1}, Lig/v;->G(Lio/grpc/internal/p1;)Lig/v;

    move-result-object p1

    return-object p1
.end method

.method G(Lio/grpc/internal/p1;)Lig/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/p1<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/m0;",
            ">;)",
            "Lig/v;"
        }
    .end annotation

    const-string v0, "eventLoopGroupPool"

    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/p1;

    iput-object p1, p0, Lig/v;->f:Lio/grpc/internal/p1;

    return-object p0
.end method

.method public J(JLjava/util/concurrent/TimeUnit;)Lig/v;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "keepalive time must be positive"

    .line 1
    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lig/v;->j:J

    .line 3
    invoke-static {p1, p2}, Lio/grpc/internal/c1;->l(J)J

    move-result-wide p1

    iput-wide p1, p0, Lig/v;->j:J

    .line 4
    sget-wide v0, Lig/v;->r:J

    cmp-long p3, p1, v0

    if-ltz p3, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    .line 5
    iput-wide p1, p0, Lig/v;->j:J

    :cond_1
    return-object p0
.end method

.method public K(JLjava/util/concurrent/TimeUnit;)Lig/v;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "keepalive timeout must be positive"

    .line 1
    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lig/v;->k:J

    .line 3
    invoke-static {p1, p2}, Lio/grpc/internal/c1;->m(J)J

    move-result-wide p1

    iput-wide p1, p0, Lig/v;->k:J

    return-object p0
.end method

.method public L(Z)Lig/v;
    .locals 0

    iput-boolean p1, p0, Lig/v;->l:Z

    return-object p0
.end method

.method public M(I)Lig/v;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "negative max"

    .line 1
    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    iput p1, p0, Lio/grpc/internal/b;->a:I

    return-object p0
.end method

.method public N(I)Lig/v;
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxInboundMetadataSize must be > 0"

    .line 1
    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    iput p1, p0, Lig/v;->i:I

    return-object p0
.end method

.method public O(Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;)Lig/v;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lig/v;->n:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change security when using ChannelCredentials"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lig/v;->m:Lig/g0$a;

    instance-of v1, v0, Lig/v$b;

    if-nez v1, :cond_0

    return-object p0

    .line 3
    :cond_0
    check-cast v0, Lig/v$b;

    invoke-static {v0, p1}, Lig/v$b;->c(Lig/v$b;Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;)Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;

    return-object p0
.end method

.method public P()Lig/v;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;->PLAINTEXT:Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;

    invoke-virtual {p0, v0}, Lig/v;->O(Lio/grpc/netty/shaded/io/grpc/netty/NegotiationType;)Lig/v;

    return-object p0
.end method

.method public bridge synthetic i(JLjava/util/concurrent/TimeUnit;)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lig/v;->J(JLjava/util/concurrent/TimeUnit;)Lig/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(JLjava/util/concurrent/TimeUnit;)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lig/v;->K(JLjava/util/concurrent/TimeUnit;)Lig/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Z)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1}, Lig/v;->L(Z)Lig/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l(I)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1}, Lig/v;->M(I)Lig/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m(I)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1}, Lig/v;->N(I)Lig/v;

    move-result-object p1

    return-object p1
.end method

.method protected q()Lio/grpc/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/r0<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lig/v;->b:Lio/grpc/internal/h1;

    return-object v0
.end method
