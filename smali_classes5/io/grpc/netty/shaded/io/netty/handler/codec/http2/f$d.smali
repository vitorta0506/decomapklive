.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final f:Lio/grpc/netty/shaded/io/netty/channel/z;

.field private g:I

.field final synthetic h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lkg/j;IZLio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 2
    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;IZLio/grpc/netty/shaded/io/netty/channel/y;)V

    .line 3
    new-instance p1, Lio/grpc/netty/shaded/io/netty/channel/z;

    invoke-interface {p6}, Lio/grpc/netty/shaded/io/netty/channel/y;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/z;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->f:Lio/grpc/netty/shaded/io/netty/channel/z;

    .line 4
    invoke-virtual {p1, p3, p6}, Lio/grpc/netty/shaded/io/netty/channel/c;->c(Lkg/j;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    .line 5
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/c;->n()I

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->g:I

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/m;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->f:Lio/grpc/netty/shaded/io/netty/channel/z;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/c;->n()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    .line 3
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->f:Lio/grpc/netty/shaded/io/netty/channel/z;

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/c;->m()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iput v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->g:I

    iput v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->d:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p2

    invoke-interface {p2, p0}, Lio/grpc/netty/shaded/io/netty/channel/y;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->f:Lio/grpc/netty/shaded/io/netty/channel/z;

    invoke-virtual {v0, v2, p2}, Lio/grpc/netty/shaded/io/netty/channel/z;->x(ILio/grpc/netty/shaded/io/netty/channel/y;)Lkg/j;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v1

    invoke-interface {v1, p0}, Lio/grpc/netty/shaded/io/netty/channel/y;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v9

    .line 9
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->f:Lio/grpc/netty/shaded/io/netty/channel/z;

    invoke-virtual {v1, v0, v9}, Lio/grpc/netty/shaded/io/netty/channel/z;->x(ILio/grpc/netty/shaded/io/netty/channel/y;)Lkg/j;

    move-result-object v6

    .line 10
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->f:Lio/grpc/netty/shaded/io/netty/channel/z;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/c;->n()I

    move-result v1

    iput v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->g:I

    sub-int/2addr p2, v0

    .line 11
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->d:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 12
    iget p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->d:I

    sub-int/2addr p2, v7

    iput p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->d:I

    .line 13
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->Y0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-result-object v3

    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v5

    iget-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->c:Z

    if-eqz p2, :cond_3

    .line 14
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->size()I

    move-result p2

    if-nez p2, :cond_3

    const/4 v2, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    move-object v4, p1

    .line 15
    invoke-interface/range {v3 .. v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e0;->b(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;)Z
    .locals 1

    .line 1
    const-class p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const p1, 0x7fffffff

    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;

    .line 2
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->size()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->f:Lio/grpc/netty/shaded/io/netty/channel/z;

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->f:Lio/grpc/netty/shaded/io/netty/channel/z;

    invoke-virtual {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/c;->j(Lio/grpc/netty/shaded/io/netty/channel/c;)V

    .line 4
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->f:Lio/grpc/netty/shaded/io/netty/channel/z;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/c;->n()I

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->g:I

    .line 5
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->d:I

    iget v0, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->d:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->d:I

    .line 6
    iget-boolean p1, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->c:Z

    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->c:Z

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->f:Lio/grpc/netty/shaded/io/netty/channel/z;

    invoke-virtual {v0, p2}, Lio/grpc/netty/shaded/io/netty/channel/z;->w(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;->c(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;)V

    return-void
.end method

.method public size()I
    .locals 2

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;->g:I

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->d:I

    add-int/2addr v0, v1

    return v0
.end method
