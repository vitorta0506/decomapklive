.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;
.super Lpg/a;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;
.implements Lio/grpc/netty/shaded/io/netty/channel/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$i;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;
    }
.end annotation


# static fields
.field private static final s:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final t:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

.field private static final u:Lkg/j;


# instance fields
.field private final l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;

.field private final m:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

.field private final n:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

.field private final o:Z

.field private p:Lio/grpc/netty/shaded/io/netty/channel/j;

.field private q:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;

.field private r:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->s:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;->C4:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    .line 3
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;->b()Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lio/grpc/netty/shaded/io/netty/util/c;

    .line 4
    invoke-static {v1, v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->x(ZLio/grpc/netty/shaded/io/netty/util/c;[Lio/grpc/netty/shaded/io/netty/util/c;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->t:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 5
    fill-array-data v0, :array_0

    .line 6
    invoke-static {v0}, Lkg/s0;->k([B)Lkg/j;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lkg/s0;->i(Lkg/j;)Lkg/j;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lkg/j;->B()Lkg/j;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->u:Lkg/j;

    return-void

    :array_0
    .array-data 1
        0x48t
        0x54t
        0x54t
        0x50t
        0x2ft
        0x31t
        0x2et
    .end array-data
.end method

.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;Z)V

    return-void
.end method

.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lpg/a;-><init>()V

    const-string v0, "initialSettings"

    .line 3
    invoke-static {p3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->n:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    const-string p3, "decoder"

    .line 4
    invoke-static {p1, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;

    const-string p3, "encoder"

    .line 5
    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->m:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    .line 6
    iput-boolean p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->o:Z

    .line 7
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->connection()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object p2

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;->connection()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object p1

    if-ne p2, p1, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Encoder and Decoder do not share the same connection object"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic M(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->m:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    return-object p0
.end method

.method static synthetic N(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->u0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method

.method static synthetic O(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->t0(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method

.method static synthetic P(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;)Lkg/j;
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->d0(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;)Lkg/j;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Q(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;

    return-object p0
.end method

.method static synthetic R(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;

    return-object p1
.end method

.method static synthetic S()Lkg/j;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->u:Lkg/j;

    return-object v0
.end method

.method static synthetic T(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->n:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    return-object p0
.end method

.method static synthetic U(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;

    return-object p0
.end method

.method static synthetic W(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->c0(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method

.method static synthetic a0(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->e0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method

.method private c0(Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->p:Lio/grpc/netty/shaded/io/netty/channel/j;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->n0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->p:Lio/grpc/netty/shaded/io/netty/channel/j;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->p:Lio/grpc/netty/shaded/io/netty/channel/j;

    .line 4
    :try_start_0
    invoke-interface {v0, p1}, Lug/r;->e(Lug/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Close listener threw an unexpected exception"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private static d0(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;)Lkg/j;
    .locals 0

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->b()Lkg/j;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private e0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 2

    .line 1
    invoke-interface {p2}, Lug/q;->p0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-interface {p2}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->p0(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;)V

    :cond_0
    return-void
.end method

.method private h0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->o0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/j;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->n0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->p:Lio/grpc/netty/shaded/io/netty/channel/j;

    if-nez p2, :cond_1

    .line 5
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->p:Lio/grpc/netty/shaded/io/netty/channel/j;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 6
    new-instance p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$a;

    invoke-direct {p3, p0, p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/channel/j;Lio/grpc/netty/shaded/io/netty/channel/j;)V

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->p:Lio/grpc/netty/shaded/io/netty/channel/j;

    :cond_2
    :goto_0
    return-void
.end method

.method private k0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 9

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->error()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->NO_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    :goto_0
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v0

    move-wide v5, v0

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->shutdownHint()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    move-result-object v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    if-ne v0, v1, :cond_1

    const v0, 0x7fffffff

    const v4, 0x7fffffff

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->v()I

    move-result v0

    move v4, v0

    .line 4
    :goto_1
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->i(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)Lkg/j;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->b(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method private o0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/j;
    .locals 7

    .line 1
    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->r:J

    const-wide/16 v0, 0x0

    cmp-long v2, v3, v0

    if-gez v2, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;

    invoke-direct {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;-><init>(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    :cond_0
    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;-><init>(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;JLjava/util/concurrent/TimeUnit;)V

    :goto_0
    return-object v0
.end method

.method private s0()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static t0(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 9

    .line 1
    :try_start_0
    invoke-interface {p5}, Lug/q;->p0()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->NO_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v7

    cmp-long v0, p2, v7

    if-eqz v0, :cond_3

    .line 3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->s:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "{} Sent GOAWAY: lastStreamId \'{}\', errorCode \'{}\', debugData \'{}\'. Forcing shutdown of the connection."

    new-array v6, v6, [Ljava/lang/Object;

    .line 4
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v3

    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    invoke-virtual {p4, p1}, Lkg/j;->p2(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v2

    invoke-interface {p5}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object p1

    aput-object p1, v6, v1

    .line 5
    invoke-interface {v0, v7, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/v;->close()Lio/grpc/netty/shaded/io/netty/channel/i;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->s:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "{} Sending GOAWAY failed: lastStreamId \'{}\', errorCode \'{}\', debugData \'{}\'. Forcing shutdown of the connection."

    new-array v6, v6, [Ljava/lang/Object;

    .line 8
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v3

    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    invoke-virtual {p4, p1}, Lkg/j;->p2(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v2

    invoke-interface {p5}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object p1

    aput-object p1, v6, v1

    .line 9
    invoke-interface {v0, v7, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_2
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/v;->close()Lio/grpc/netty/shaded/io/netty/channel/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_3
    :goto_0
    invoke-interface {p4}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p4}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 12
    throw p0
.end method

.method private u0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 1

    .line 1
    invoke-interface {p3}, Lug/q;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/channel/i;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 3
    invoke-interface {p3}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->p0(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;)V

    :goto_0
    return-void
.end method

.method private v0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;JLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 6

    .line 1
    invoke-interface {p5}, Lio/grpc/netty/shaded/io/netty/channel/y;->f0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v5

    .line 2
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->g()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 3
    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/channel/y;->m()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->c()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 5
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object p5

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->IDLE:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    if-eq p5, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object p5

    invoke-interface {p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object p5

    invoke-interface {p5, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->q(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->i()Z

    move-result p5

    if-nez p5, :cond_1

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->k()Z

    move-result p5

    if-nez p5, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->j0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-result-object v0

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v2

    move-object v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->F1(Lio/grpc/netty/shaded/io/netty/channel/m;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p3

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/channel/y;->m()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p3

    .line 9
    :goto_1
    invoke-interface {p3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->u0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/channel/i;)V

    goto :goto_2

    .line 11
    :cond_3
    new-instance p4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$d;

    invoke-direct {p4, p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V

    invoke-interface {p3, p4}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_2
    return-object p3
.end method

.method private w0(Lio/grpc/netty/shaded/io/netty/channel/m;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->j0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->F1(Lio/grpc/netty/shaded/io/netty/channel/m;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->e0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/i;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$c;

    invoke-direct {p3, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/channel/m;)V

    invoke-interface {p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_0
    return-object p2
.end method


# virtual methods
.method public A(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->m:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;)V

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->m:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;->d(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;->d(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 5
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/channel/m;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;

    return-void
.end method

.method public C(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->n(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->m:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/p;->C(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/p;->C(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 5
    throw v0
.end method

.method public D(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/channel/m;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;->a(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 4
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/p;->D(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method protected I(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;->d(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;

    :cond_0
    return-void
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->b0(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->n(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->n(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 3
    throw v0
.end method

.method public a(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->c(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->c(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/p;->a(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 15

    .line 1
    invoke-interface/range {p6 .. p6}, Lio/grpc/netty/shaded/io/netty/channel/y;->f0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v7

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    move/from16 v11, p2

    move-wide/from16 v12, p3

    move-object/from16 v14, p5

    .line 3
    :try_start_0
    invoke-interface {v0, v11, v12, v13, v14}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->h(IJLkg/j;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-interface/range {p5 .. p5}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 5
    invoke-interface {v7}, Lio/grpc/netty/shaded/io/netty/channel/y;->I()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v7

    .line 6
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lkg/j;->T1()Lkg/j;

    .line 7
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->j0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-result-object v1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->S0(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object v6, v0

    .line 9
    invoke-static/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->t0(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;Lio/grpc/netty/shaded/io/netty/channel/i;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$e;

    move-object v8, v1

    move-object v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-wide/from16 v12, p3

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$e;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;)V

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 11
    invoke-interface/range {p5 .. p5}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 12
    invoke-interface {v7, v0}, Lug/x;->z(Ljava/lang/Throwable;)Z

    return-object v7
.end method

.method final b0(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpg/a;->B()V

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->read()Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 4
    :cond_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->k()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method public c(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->c(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->isStreamError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->r0(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;)V

    goto :goto_1

    .line 4
    :cond_0
    instance-of v1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$CompositeStreamException;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$CompositeStreamException;

    .line 6
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$CompositeStreamException;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;

    .line 7
    invoke-virtual {p0, p1, p2, p3, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->r0(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->p0(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;)V

    .line 9
    :cond_2
    :goto_1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->flush()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method public d(Lio/grpc/netty/shaded/io/netty/channel/m;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->c(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2
    invoke-interface {p5}, Lio/grpc/netty/shaded/io/netty/channel/y;->f0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v4 .. v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->w0(Lio/grpc/netty/shaded/io/netty/channel/m;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    move-object v6, p5

    .line 3
    invoke-direct/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->v0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;JLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public e(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method public f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->m:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->connection()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    return-object v0
.end method

.method public g(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$f;->a:[I

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/channel/i;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->n()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    :goto_0
    return-void
.end method

.method public g0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;

    return-object v0
.end method

.method public i0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->m:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    return-object v0
.end method

.method public j(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->M(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method protected j0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->i0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->Y0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-result-object v0

    return-object v0
.end method

.method public k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->close()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 2
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->c0(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$b;

    invoke-direct {p1, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;)V

    invoke-interface {p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_0
    return-void
.end method

.method public l(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->o:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void

    .line 3
    :cond_0
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/y;->f0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p2

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->s0()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lkg/s0;->d:Lkg/j;

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->c0(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->k0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    .line 6
    :goto_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->flush()Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 7
    invoke-direct {p0, p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->h0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void

    .line 8
    :cond_3
    :goto_1
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method public l0(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    iput-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->r:J

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gracefulShutdownTimeoutMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " (expected: -1 for indefinite or >= 0)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$f;->a:[I

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/channel/i;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    :goto_0
    return-void
.end method

.method protected m0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 7

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->i0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    move-result-object v0

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v2

    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->t:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->i1(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method public n(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->m:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;->g()V

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->flush()Lio/grpc/netty/shaded/io/netty/channel/m;
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Error flushing"

    invoke-static {v2, v1, v4, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->c(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->c(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected n0()Z
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->n()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->read()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method protected p0(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;)V
    .locals 1

    if-nez p4, :cond_0

    .line 1
    new-instance p4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, p2, v0, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    :cond_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p2

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p3

    invoke-direct {p0, p1, p4, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->k0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p3

    .line 4
    invoke-virtual {p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->shutdownHint()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    move-result-object p4

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;->GRACEFUL_SHUTDOWN:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    if-ne p4, v0, :cond_1

    .line 5
    invoke-direct {p0, p1, p3, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->h0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->o0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/j;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_0
    return-void
.end method

.method public q0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->s0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;->X0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->z(IZ)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    return-void

    .line 5
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "HTTP upgrade must occur before HTTP/2 preface is received"

    invoke-static {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 6
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "HTTP upgrade must occur after preface was sent"

    invoke-static {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 7
    :cond_2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Client-side HTTP upgrade requested for a server"

    invoke-static {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method protected r0(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;)V
    .locals 9

    .line 1
    invoke-virtual {p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;->streamId()I

    move-result v2

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object p3

    invoke-interface {p3, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->c(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object p3

    .line 3
    instance-of v0, p4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$HeaderListSizeException;

    if-eqz v0, :cond_1

    move-object v0, p4

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$HeaderListSizeException;

    .line 4
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$HeaderListSizeException;->duringDecode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    .line 6
    :try_start_0
    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->m:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->connection()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object p3

    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object p3

    const/4 v0, 0x1

    invoke-interface {p3, v2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->z(IZ)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object p3
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    invoke-virtual {p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->error()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v3

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->w0(Lio/grpc/netty/shaded/io/netty/channel/m;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 8
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    :try_start_1
    invoke-virtual {p0, p1, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->m0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 10
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Error DecodeSizeError"

    invoke-static {v1, v0, v4, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->c(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;)V

    :cond_1
    :goto_1
    move-object v5, p3

    if-nez v5, :cond_3

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object p2

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object p2

    invoke-interface {p2, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->p(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 12
    :cond_2
    invoke-virtual {p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->error()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v3

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->w0(Lio/grpc/netty/shaded/io/netty/channel/m;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->error()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v6

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->v0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;JLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :cond_4
    :goto_2
    return-void
.end method

.method public t(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lpg/a;->t(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;->b(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;

    :cond_0
    return-void
.end method

.method protected x(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    .locals 1
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
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;->c(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V

    return-void
.end method
