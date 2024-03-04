.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$e;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic k()Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$e;->retain()Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$e;->q(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    move-result-object p1

    return-object p1
.end method

.method public o()Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;->t()Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    move-result-object v0

    return-object v0
.end method

.method public p(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;
    .locals 7

    .line 1
    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->j()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$e;->o()Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    move-result-object v2

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->B()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v4

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->B()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v5

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->a()Lpg/e;

    move-result-object p1

    invoke-virtual {v6, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/g;->e(Lpg/e;)V

    return-object v6
.end method

.method public q(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->n(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;

    return-object p0
.end method

.method public retain()Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;
    .locals 0

    .line 2
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->k()Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$e;->retain()Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    move-result-object v0

    return-object v0
.end method

.method public t()Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$e;->o()Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->d(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$e;->q(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    move-result-object p1

    return-object p1
.end method

.method public u()Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->content()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->V1()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$e;->p(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;

    move-result-object v0

    return-object v0
.end method
