.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$b;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$e;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$c;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$f;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2ChannelClosedException;
    }
.end annotation


# instance fields
.field private final c:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$f;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;)V
    .locals 1

    const/16 v0, 0x64

    .line 1
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;I)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;)V

    .line 3
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->c:Ljava/util/TreeMap;

    .line 4
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->d:I

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b;->connection()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object p1

    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$a;

    invoke-direct {p2, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;)V

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->g(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;)V

    return-void
.end method

.method static synthetic d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;

    return-object p0
.end method

.method static synthetic e(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;

    return-object p1
.end method

.method static synthetic h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;)V

    return-void
.end method

.method static synthetic i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->q()V

    return-void
.end method

.method private j()Z
    .locals 2

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b;->connection()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->n()I

    move-result v0

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;

    invoke-direct {v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;)V

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$f;

    .line 5
    iget v3, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$f;->b:I

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;)I

    move-result v4

    if-le v3, v4, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    invoke-virtual {v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private o(I)Z
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b;->connection()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->v()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private q()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$f;

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$f;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public B(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 13

    move-object v9, p0

    move v0, p2

    move-object/from16 v10, p9

    .line 1
    iget-boolean v1, v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->e:Z

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2ChannelClosedException;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2ChannelClosedException;-><init>()V

    invoke-interface {v10, v0}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->o(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;

    if-eqz v1, :cond_2

    .line 5
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;

    iget-object v1, v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$d;)V

    invoke-interface {v10, v0}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    return-object v0

    .line 6
    :cond_2
    iget-object v1, v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->c:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$f;

    if-nez v1, :cond_3

    .line 7
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$f;

    move-object v2, p1

    invoke-direct {v1, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$f;-><init>(Lio/grpc/netty/shaded/io/netty/channel/m;I)V

    .line 8
    iget-object v2, v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->c:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_3
    iget-object v11, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$f;->c:Ljava/util/Queue;

    new-instance v12, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$e;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$e;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZLio/grpc/netty/shaded/io/netty/channel/y;)V

    invoke-interface {v11, v12}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object v10

    :cond_4
    :goto_0
    move-object v2, p1

    .line 10
    invoke-super/range {p0 .. p9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->B(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    return-object v0
.end method

.method public F1(Lio/grpc/netty/shaded/io/netty/channel/m;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->o(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->F1(Lio/grpc/netty/shaded/io/netty/channel/m;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->c:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$f;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$f;->a(Ljava/lang/Throwable;)V

    .line 5
    invoke-interface {p5}, Lio/grpc/netty/shaded/io/netty/channel/y;->m()Lio/grpc/netty/shaded/io/netty/channel/y;

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, p4

    const-string p2, "Stream does not exist %d"

    invoke-static {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    :goto_0
    return-object p5
.end method

.method public G1(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b;->G1(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b;->connection()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->A()I

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->d:I

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->q()V

    return-void
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 6

    .line 1
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->o(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->b(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->c:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$f;

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$f;->c:Ljava/util/Queue;

    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$b;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;Lkg/j;IZLio/grpc/netty/shaded/io/netty/channel/y;)V

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    .line 6
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, p4

    const-string p2, "Stream does not exist %d"

    invoke-static {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    invoke-interface {p6, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    :goto_0
    return-object p6
.end method

.method public close()V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->e:Z

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2ChannelClosedException;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2ChannelClosedException;-><init>()V

    .line 4
    :goto_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->c:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->c:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$f;

    .line 6
    invoke-virtual {v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$f;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->close()V

    .line 8
    throw v0
.end method

.method public i1(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 10

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->B(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    return-object v0
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method
