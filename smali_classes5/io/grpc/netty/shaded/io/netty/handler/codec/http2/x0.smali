.class public final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;
.super Ltg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltg/a<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/Long;

.field private static final l:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->k:Ljava/lang/Long;

    const-wide/16 v0, 0x1

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->l:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xd

    .line 1
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ltg/a;-><init>(I)V

    return-void
.end method

.method private static L(ILjava/lang/Long;)V
    .locals 6

    const-string v0, "value"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide v0, 0xffffffffL

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p0, v4, v2

    if-ltz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-gtz p0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting MAX_HEADER_LIST_SIZE is invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->f(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting MAX_FRAME_SIZE is invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_2

    goto/16 :goto_0

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting INITIAL_WINDOW_SIZE is invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p0, v4, v2

    if-ltz p0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-gtz p0, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting MAX_CONCURRENT_STREAMS is invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting ENABLE_PUSH is invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :pswitch_5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p0, v4, v2

    if-ltz p0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-gtz p0, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting HEADER_TABLE_SIZE is invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public A(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;
    .locals 2

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->K(CLjava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public B()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->x(C)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public C(J)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->K(CLjava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public D()Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ltg/a;->u0(C)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public E(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;
    .locals 2

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->K(CLjava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public F()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->x(C)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public G(J)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p0, p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->K(CLjava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public H()Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ltg/a;->u0(C)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public I(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;
    .locals 1

    if-eqz p1, :cond_0

    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->l:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->k:Ljava/lang/Long;

    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->K(CLjava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public J()Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Ltg/a;->u0(C)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->l:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public K(CLjava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->L(ILjava/lang/Long;)V

    .line 2
    invoke-super {p0, p1, p2}, Ltg/a;->q(CLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method protected n(C)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Ltg/a;->n(C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "MAX_HEADER_LIST_SIZE"

    return-object p1

    :pswitch_1
    const-string p1, "MAX_FRAME_SIZE"

    return-object p1

    :pswitch_2
    const-string p1, "INITIAL_WINDOW_SIZE"

    return-object p1

    :pswitch_3
    const-string p1, "MAX_CONCURRENT_STREAMS"

    return-object p1

    :pswitch_4
    const-string p1, "ENABLE_PUSH"

    return-object p1

    :pswitch_5
    const-string p1, "HEADER_TABLE_SIZE"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic q(CLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->K(CLjava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public x(C)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ltg/a;->u0(C)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public y(J)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->K(CLjava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public z()Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltg/a;->u0(C)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method
