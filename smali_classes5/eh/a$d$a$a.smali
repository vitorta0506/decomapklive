.class Leh/a$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/a$d$a;->b(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DiscoveryResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DiscoveryResponse;

.field final synthetic b:Leh/a$d$a;


# direct methods
.method constructor <init>(Leh/a$d$a;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DiscoveryResponse;)V
    .locals 0

    iput-object p1, p0, Leh/a$d$a$a;->b:Leh/a$d$a;

    iput-object p2, p0, Leh/a$d$a$a;->a:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DiscoveryResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Leh/a$d$a$a;->a:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DiscoveryResponse;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DiscoveryResponse;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leh/a$f;->a(Ljava/lang/String;)Leh/a$f;

    move-result-object v0

    .line 2
    iget-object v1, p0, Leh/a$d$a$a;->b:Leh/a$d$a;

    iget-object v1, v1, Leh/a$d$a;->a:Leh/a$d;

    iget-object v1, v1, Leh/a$d;->i:Leh/a;

    invoke-static {v1}, Leh/a;->c(Leh/a;)Leh/q2;

    move-result-object v1

    sget-object v2, Leh/q2$b;->a:Leh/q2$b;

    invoke-virtual {v1, v2}, Leh/q2;->a(Leh/q2$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Leh/a$d$a$a;->b:Leh/a$d$a;

    iget-object v1, v1, Leh/a$d$a;->a:Leh/a$d;

    iget-object v1, v1, Leh/a$d;->i:Leh/a;

    invoke-static {v1}, Leh/a;->c(Leh/a;)Leh/q2;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Leh/a$d$a$a;->a:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DiscoveryResponse;

    .line 4
    invoke-static {v5}, Leh/u1;->a(Lcom/google/protobuf/r1;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Received {0} response:\n{1}"

    .line 5
    invoke-virtual {v1, v2, v4, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_0
    iget-object v1, p0, Leh/a$d$a$a;->b:Leh/a$d$a;

    iget-object v1, v1, Leh/a$d$a;->a:Leh/a$d;

    iget-object v2, p0, Leh/a$d$a$a;->a:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DiscoveryResponse;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DiscoveryResponse;->getVersionInfo()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Leh/a$d$a$a;->a:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DiscoveryResponse;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DiscoveryResponse;->getResourcesList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Leh/a$d$a$a;->a:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DiscoveryResponse;

    .line 7
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DiscoveryResponse;->getNonce()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v1, v0, v2, v3, v4}, Leh/a$c;->f(Leh/a$f;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
