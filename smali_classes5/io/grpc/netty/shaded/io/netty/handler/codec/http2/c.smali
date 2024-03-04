.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    return-void
.end method


# virtual methods
.method public B(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 11

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    .line 2
    invoke-interface/range {v1 .. v10}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->B(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v1

    return-object v1
.end method

.method public F1(Lio/grpc/netty/shaded/io/netty/channel/m;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 6

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->F1(Lio/grpc/netty/shaded/io/netty/channel/m;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public N1(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    invoke-interface {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->N1(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public S0(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 7

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->S0(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 7

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e0;->b(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->close()V

    return-void
.end method

.method public configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0$a;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0$a;

    move-result-object v0

    return-object v0
.end method

.method public i1(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 7

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->i1(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public k0(Lio/grpc/netty/shaded/io/netty/channel/m;IILio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->k0(Lio/grpc/netty/shaded/io/netty/channel/m;IILio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public m0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->m0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public s0(Lio/grpc/netty/shaded/io/netty/channel/m;ZJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 6

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->s0(Lio/grpc/netty/shaded/io/netty/channel/m;ZJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method
