.class final Leh/a1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# virtual methods
.method a()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address;
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address$c;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$c;

    move-result-object v1

    iget-object v2, p0, Leh/a1$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$c;->i0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$c;

    move-result-object v1

    iget v2, p0, Leh/a1$b;->b:I

    .line 3
    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$c;->l0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$c;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address$c;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address$c;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address$c;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address;

    move-result-object v0

    return-object v0
.end method

.method b()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address$c;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketAddress;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketAddress$c;

    move-result-object v1

    iget-object v2, p0, Leh/a1$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketAddress$c;->i0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketAddress$c;

    move-result-object v1

    iget v2, p0, Leh/a1$b;->b:I

    .line 3
    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketAddress$c;->l0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketAddress$c;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address$c;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketAddress$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address$c;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address$c;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Leh/a1$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Leh/a1$b;

    .line 3
    iget v2, p0, Leh/a1$b;->b:I

    iget v3, p1, Leh/a1$b;->b:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Leh/a1$b;->a:Ljava/lang/String;

    iget-object p1, p1, Leh/a1$b;->a:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Leh/a1$b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Leh/a1$b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/a1$b;->a:Ljava/lang/String;

    const-string v2, "address"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget v1, p0, Leh/a1$b;->b:I

    const-string v2, "port"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->b(Ljava/lang/String;I)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
