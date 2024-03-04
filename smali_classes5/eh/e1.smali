.class public final Leh/e1;
.super Leh/b1;
.source "SourceFile"


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leh/b1;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;)V

    .line 2
    iput-boolean p2, p0, Leh/e1;->b:Z

    return-void
.end method

.method public static a(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext;)Leh/e1;
    .locals 2

    .line 1
    new-instance v0, Leh/e1;

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext;->getCommonTlsContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext;->hasRequireClientCertificate()Z

    move-result p0

    invoke-direct {v0, v1, p0}, Leh/e1;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Leh/e1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-super {p0, p1}, Leh/b1;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 3
    :cond_2
    check-cast p1, Leh/e1;

    .line 4
    iget-boolean v2, p0, Leh/e1;->b:Z

    iget-boolean p1, p1, Leh/e1;->b:Z

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Leh/b1;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Leh/e1;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownstreamTlsContext{commonTlsContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/b1;->a:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requireClientCertificate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Leh/e1;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
