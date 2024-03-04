.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$d;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;
    }
.end annotation


# static fields
.field private static final g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

.field private static final h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

.field private static final i:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

.field private static final j:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

.field private static final k:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

.field private static final l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

.field private static final m:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

.field private static final n:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r;

.field private final b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;

.field private c:J

.field private d:J

.field private e:J

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    const-string v3, "HPACK - decompression failure"

    const-string v4, "decodeULE128(..)"

    .line 2
    invoke-static {v1, v3, v2, v0, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v3

    sput-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    const-string v3, "HPACK - long overflow"

    .line 3
    invoke-static {v1, v3, v2, v0, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v3

    sput-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    const-string v3, "HPACK - int overflow"

    const-string v4, "decodeULE128ToInt(..)"

    .line 4
    invoke-static {v1, v3, v2, v0, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v3

    sput-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    const-string v3, "HPACK - illegal index value"

    const-string v4, "decode(..)"

    .line 5
    invoke-static {v1, v3, v2, v0, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v5

    sput-object v5, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    const-string v5, "indexHeader(..)"

    .line 6
    invoke-static {v1, v3, v2, v0, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v5

    sput-object v5, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->k:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    const-string v5, "readName(..)"

    .line 7
    invoke-static {v1, v3, v2, v0, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v3

    sput-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    const-string v3, "HPACK - invalid max dynamic table size"

    const-string v5, "setDynamicTableSize(..)"

    .line 8
    invoke-static {v1, v3, v2, v0, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v3

    sput-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->m:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    const-string v3, "HPACK - max dynamic table size change required"

    .line 9
    invoke-static {v1, v3, v2, v0, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->n:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;-><init>(JI)V

    return-void
.end method

.method constructor <init>(JI)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r;-><init>()V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r;

    const-string v0, "maxHeaderListSize"

    .line 4
    invoke-static {p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->m(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->c:J

    int-to-long p1, p3

    .line 5
    iput-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->e:J

    iput-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->d:J

    const/4 p3, 0x0

    .line 6
    iput-boolean p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->f:Z

    .line 7
    new-instance p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;

    invoke-direct {p3, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;-><init>(J)V

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;

    return-void
.end method

.method static synthetic a(ILjava/lang/CharSequence;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->p(ILjava/lang/CharSequence;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;

    move-result-object p0

    return-object p0
.end method

.method private c(Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$d;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    const/4 v8, 0x1

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lkg/j;->j1()Z

    move-result v16

    if-eqz v16, :cond_12

    const/16 v5, 0x80

    const/16 v6, 0x7f

    packed-switch v12, :pswitch_data_0

    .line 3
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "should not reach here state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lkg/j;->P1()I

    move-result v5

    if-lt v5, v15, :cond_0

    .line 5
    invoke-direct {v0, v1, v15, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->l(Lkg/j;IZ)Ljava/lang/CharSequence;

    move-result-object v5

    .line 6
    invoke-direct {v0, v2, v11, v5, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$d;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;)V

    goto/16 :goto_7

    .line 7
    :cond_0
    invoke-static/range {p1 .. p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->j(Lkg/j;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 8
    :pswitch_1
    invoke-static {v1, v13}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->d(Lkg/j;I)I

    move-result v15

    :goto_1
    const/16 v12, 0x9

    goto :goto_0

    .line 9
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lkg/j;->x1()B

    move-result v4

    and-int/lit16 v12, v4, 0x80

    if-ne v12, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    and-int/lit8 v13, v4, 0x7f

    if-eqz v13, :cond_3

    if-eq v13, v6, :cond_2

    move v4, v5

    move v15, v13

    goto :goto_1

    :cond_2
    const/16 v12, 0x8

    goto :goto_5

    .line 10
    :cond_3
    sget-object v4, Lio/grpc/netty/shaded/io/netty/util/c;->f:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-direct {v0, v2, v11, v4, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$d;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;)V

    move v4, v5

    goto :goto_7

    .line 11
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lkg/j;->P1()I

    move-result v5

    if-lt v5, v14, :cond_4

    .line 12
    invoke-direct {v0, v1, v14, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->l(Lkg/j;IZ)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_6

    .line 13
    :cond_4
    invoke-static/range {p1 .. p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->j(Lkg/j;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 14
    :pswitch_4
    invoke-static {v1, v13}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->d(Lkg/j;I)I

    move-result v14

    :goto_3
    const/4 v12, 0x6

    goto :goto_0

    .line 15
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lkg/j;->x1()B

    move-result v4

    and-int/lit16 v12, v4, 0x80

    if-ne v12, v5, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    and-int/lit8 v13, v4, 0x7f

    if-ne v13, v6, :cond_6

    const/4 v12, 0x5

    :goto_5
    move v4, v5

    goto/16 :goto_0

    :cond_6
    move v4, v5

    move v14, v13

    goto :goto_3

    .line 16
    :pswitch_6
    invoke-static {v1, v13}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->d(Lkg/j;I)I

    move-result v5

    invoke-direct {v0, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->k(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 17
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v14

    :goto_6
    const/4 v12, 0x7

    goto/16 :goto_0

    .line 18
    :pswitch_7
    invoke-static {v1, v13}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->d(Lkg/j;I)I

    move-result v5

    invoke-direct {v0, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->f(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v5

    .line 19
    iget-object v6, v5, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->a:Ljava/lang/CharSequence;

    iget-object v5, v5, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->b:Ljava/lang/CharSequence;

    invoke-interface {v2, v6, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_7

    :pswitch_8
    int-to-long v5, v13

    .line 20
    invoke-static {v1, v5, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->e(Lkg/j;J)J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->m(J)V

    :goto_7
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 21
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lkg/j;->x1()B

    move-result v5

    .line 22
    iget-boolean v13, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->f:Z

    const/16 v7, 0x20

    if-eqz v13, :cond_8

    and-int/lit16 v13, v5, 0xe0

    if-ne v13, v7, :cond_7

    goto :goto_8

    .line 23
    :cond_7
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->n:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    throw v1

    :cond_8
    :goto_8
    if-gez v5, :cond_b

    and-int/lit8 v13, v5, 0x7f

    if-eqz v13, :cond_a

    if-eq v13, v6, :cond_9

    .line 24
    invoke-direct {v0, v13}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->f(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v5

    .line 25
    iget-object v6, v5, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->a:Ljava/lang/CharSequence;

    iget-object v5, v5, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->b:Ljava/lang/CharSequence;

    invoke-interface {v2, v6, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    const/4 v12, 0x2

    goto/16 :goto_0

    .line 26
    :cond_a
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    throw v1

    :cond_b
    and-int/lit8 v6, v5, 0x40

    const/16 v12, 0x40

    if-ne v6, v12, :cond_e

    .line 27
    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    and-int/lit8 v13, v5, 0x3f

    if-eqz v13, :cond_d

    const/16 v5, 0x3f

    if-eq v13, v5, :cond_c

    .line 28
    invoke-direct {v0, v13}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->k(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 29
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v14

    goto :goto_6

    :cond_c
    const/4 v12, 0x3

    goto/16 :goto_0

    :cond_d
    const/4 v12, 0x4

    goto/16 :goto_0

    :cond_e
    and-int/lit8 v6, v5, 0x20

    if-ne v6, v7, :cond_10

    and-int/lit8 v13, v5, 0x1f

    const/16 v5, 0x1f

    if-ne v13, v5, :cond_f

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_f
    int-to-long v5, v13

    .line 30
    invoke-direct {v0, v5, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->m(J)V

    goto :goto_7

    :cond_10
    and-int/lit8 v3, v5, 0x10

    const/16 v6, 0x10

    if-ne v3, v6, :cond_11

    .line 31
    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    goto :goto_9

    :cond_11
    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    :goto_9
    and-int/lit8 v13, v5, 0xf

    if-eqz v13, :cond_d

    const/16 v5, 0xf

    if-eq v13, v5, :cond_c

    .line 32
    invoke-direct {v0, v13}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->k(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 33
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v14

    goto/16 :goto_6

    :cond_12
    if-nez v12, :cond_13

    return-void

    .line 34
    :cond_13
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "Incomplete header block fragment."

    invoke-static {v1, v3, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static d(Lkg/j;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkg/j;->Q1()I

    move-result v0

    int-to-long v1, p1

    .line 2
    invoke-static {p0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->e(Lkg/j;J)J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long p1, v1, v3

    if-gtz p1, :cond_0

    long-to-int p0, v1

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lkg/j;->R1(I)Lkg/j;

    .line 4
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    throw p0
.end method

.method static e(Lkg/j;J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkg/j;->K2()I

    move-result v1

    .line 2
    invoke-virtual {p0}, Lkg/j;->Q1()I

    move-result v4

    :goto_1
    if-ge v4, v1, :cond_4

    .line 3
    invoke-virtual {p0, v4}, Lkg/j;->u0(I)B

    move-result v5

    const/16 v6, 0x38

    if-ne v2, v6, :cond_2

    and-int/lit16 v6, v5, 0x80

    if-nez v6, :cond_1

    const/16 v6, 0x7f

    if-ne v5, v6, :cond_2

    if-eqz v0, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    throw p0

    :cond_2
    :goto_2
    and-int/lit16 v6, v5, 0x80

    const-wide/16 v7, 0x7f

    if-nez v6, :cond_3

    add-int/2addr v4, v3

    .line 5
    invoke-virtual {p0, v4}, Lkg/j;->R1(I)Lkg/j;

    int-to-long v0, v5

    and-long/2addr v0, v7

    shl-long/2addr v0, v2

    add-long/2addr p1, v0

    return-wide p1

    :cond_3
    int-to-long v5, v5

    and-long/2addr v5, v7

    shl-long/2addr v5, v2

    add-long/2addr p1, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x7

    goto :goto_1

    .line 6
    :cond_4
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    throw p0
.end method

.method private f(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    sget v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->d:I

    if-gt p1, v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->b(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int v1, p1, v0

    .line 3
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;->e()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;->d(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->k:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    throw p1
.end method

.method private i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$d;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$a;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p1, p1, p4

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1

    const/4 p4, 0x2

    if-eq p1, p4, :cond_1

    const/4 p4, 0x3

    if-ne p1, p4, :cond_0

    .line 3
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;

    new-instance p4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    invoke-direct {p4, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string p2, "should not reach here"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static j(Lkg/j;)Ljava/lang/IllegalArgumentException;
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode only works with an entire header block! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private k(I)Ljava/lang/CharSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    sget v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->d:I

    if-gt p1, v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->b(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->a:Ljava/lang/CharSequence;

    return-object p1

    :cond_0
    sub-int v1, p1, v0

    .line 4
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;->e()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;->d(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->a:Ljava/lang/CharSequence;

    return-object p1

    .line 7
    :cond_1
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->l:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    throw p1
.end method

.method private l(Lkg/j;IZ)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r;

    invoke-virtual {p3, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r;->b(Lkg/j;I)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-array p2, p2, [B

    .line 3
    invoke-virtual {p1, p2}, Lkg/j;->C1([B)Lkg/j;

    .line 4
    new-instance p1, Lio/grpc/netty/shaded/io/netty/util/c;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/c;-><init>([BZ)V

    return-object p1
.end method

.method private m(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->d:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 2
    iput-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->e:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->f:Z

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;

    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;->g(J)V

    return-void

    .line 5
    :cond_0
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->m:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    throw p1
.end method

.method private static p(ILjava/lang/CharSequence;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->hasPseudoHeaderFormat(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_4

    .line 3
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->getPseudoHeader(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->isRequestOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;

    :goto_0
    if-eqz p2, :cond_2

    if-ne p1, p2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Mix of request and response pseudo-headers."

    invoke-static {p0, p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    return-object p1

    .line 6
    :cond_3
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Invalid HTTP/2 pseudo-header \'%s\' encountered."

    invoke-static {p0, p2, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    throw p0

    .line 7
    :cond_4
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Pseudo-header field \'%s\' found after regular header."

    invoke-static {p0, p2, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    throw p0

    .line 8
    :cond_5
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;

    return-object p0
.end method


# virtual methods
.method public b(ILkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;

    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->c:J

    move-object v0, v6

    move v1, p1

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;-><init>(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;JZ)V

    .line 2
    invoke-direct {p0, p2, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->c(Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$d;)V

    .line 3
    invoke-virtual {v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->b()V

    return-void
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->c:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public n(J)V
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
    iput-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->c:J

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

.method public o(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    const-wide v0, 0xffffffffL

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-ltz v5, :cond_1

    cmp-long v5, p1, v0

    if-gtz v5, :cond_1

    .line 1
    iput-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->d:J

    .line 2
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->e:J

    cmp-long v3, p1, v0

    if-gez v3, :cond_0

    .line 3
    iput-boolean v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->f:Z

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;

    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o;->g(J)V

    :cond_0
    return-void

    .line 5
    :cond_1
    sget-object v5, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v0

    const-string p1, "Header Table Size must be >= %d and <= %d but was %d"

    .line 7
    invoke-static {v5, p1, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method
