.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->p(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)Lio/grpc/netty/shaded/io/netty/util/internal/v;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)Lio/grpc/netty/shaded/io/netty/util/internal/v;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    .line 7
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$e;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$e;

    invoke-virtual {v1, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 8
    iget-object v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->p(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)Lio/grpc/netty/shaded/io/netty/util/internal/v;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 10
    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    invoke-virtual {v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->p(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;)V

    .line 11
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)Ltg/e;

    move-result-object v1

    iget v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->e:I

    invoke-interface {v1, v0}, Ltg/e;->remove(I)Ljava/lang/Object;

    .line 12
    :cond_2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)Lio/grpc/netty/shaded/io/netty/util/internal/v;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)Ltg/e;

    move-result-object v0

    iget v1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->e:I

    invoke-interface {v0, v1, p1}, Ltg/e;->n0(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)Ltg/e;

    move-result-object v0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v1

    invoke-interface {v0, v1}, Ltg/e;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-direct {v0, v2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->e(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->v(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;ZLjava/util/List;)V

    .line 5
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-virtual {v3, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->m(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)Lio/grpc/netty/shaded/io/netty/util/internal/v;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/v;->g0(Ljava/lang/Object;)Z

    .line 7
    iput-object p1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 8
    :goto_0
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$b;->a:[I

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->u()V

    .line 10
    :goto_1
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->g(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->c()V

    return-void
.end method

.method public g(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1$d;->u()V

    return-void
.end method
