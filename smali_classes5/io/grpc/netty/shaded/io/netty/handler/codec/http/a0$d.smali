.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$d;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    return-void
.end method


# virtual methods
.method public i()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$d;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$d;->q()Lio/grpc/netty/shaded/io/netty/handler/codec/http/m;

    move-result-object v0

    return-object v0
.end method

.method public method()Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$d;->o()Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$d;->r(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/m;

    move-result-object p1

    return-object p1
.end method

.method public o()Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;->method()Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Lio/grpc/netty/shaded/io/netty/handler/codec/http/m;
    .locals 0

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->k()Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;

    return-object p0
.end method

.method public r(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/m;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$c;->n(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$d;->q()Lio/grpc/netty/shaded/io/netty/handler/codec/http/m;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->c(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/m;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$d;->r(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/m;

    move-result-object p1

    return-object p1
.end method
