.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lpg/e;
    .locals 1

    sget-object v0, Lpg/e;->e:Lpg/e;

    return-object v0
.end method

.method public content()Lkg/j;
    .locals 1

    sget-object v0, Lkg/s0;->d:Lkg/j;

    return-object v0
.end method

.method public e(Lpg/e;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "read only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j()Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;
    .locals 0

    return-object p0
.end method

.method public k(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;
    .locals 0

    return-object p0
.end method

.method public refCnt()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public release()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0$a;->j()Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptyLastHttpContent"

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0$a;->k(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    move-result-object p1

    return-object p1
.end method

.method public x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/k;

    return-object v0
.end method
