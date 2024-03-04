.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field private final f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

.field private final g:Z

.field private final h:I

.field private final i:S

.field private final j:Z

.field final synthetic k:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ZISZIZLio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 7

    move-object v6, p0

    move-object v1, p1

    .line 1
    iput-object v1, v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;->k:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;

    .line 2
    invoke-interface/range {p10 .. p10}, Lio/grpc/netty/shaded/io/netty/channel/y;->f0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v5

    move-object v0, p0

    move-object v2, p2

    move v3, p8

    move/from16 v4, p9

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;IZLio/grpc/netty/shaded/io/netty/channel/y;)V

    move-object v0, p3

    .line 3
    iput-object v0, v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    move v0, p4

    .line 4
    iput-boolean v0, v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;->g:Z

    move v0, p5

    .line 5
    iput v0, v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;->h:I

    move v0, p6

    .line 6
    iput-short v0, v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;->i:S

    move v0, p7

    .line 7
    iput-boolean v0, v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/m;I)V
    .locals 12

    .line 1
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;->k:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->m()Z

    move-result v1

    iget-boolean v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->c:Z

    invoke-static {p2, v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->e(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ZZ)Z

    move-result p2

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->b:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/y;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;->k:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-result-object v1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v3

    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    iget-boolean v5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;->g:Z

    iget v6, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;->h:I

    iget-short v7, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;->i:S

    iget-boolean v8, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;->j:Z

    iget v9, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->d:I

    iget-boolean v10, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->c:Z

    iget-object v11, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->b:Lio/grpc/netty/shaded/io/netty/channel/y;

    move-object v2, p1

    invoke-static/range {v1 .. v11}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ZISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->p(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    :cond_0
    return-void
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;->k:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;->c(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->b:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {p1, p2}, Lug/x;->z(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
