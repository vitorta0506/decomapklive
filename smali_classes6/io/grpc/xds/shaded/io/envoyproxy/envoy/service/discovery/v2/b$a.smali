.class Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/stub/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v2/b;->b(Lio/grpc/d;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v2/b$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/stub/b$a<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v2/b$d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/grpc/d;Lio/grpc/c;)Lio/grpc/stub/b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v2/b$a;->b(Lio/grpc/d;Lio/grpc/c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v2/b$d;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/grpc/d;Lio/grpc/c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v2/b$d;
    .locals 2

    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v2/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v2/b$d;-><init>(Lio/grpc/d;Lio/grpc/c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v2/b$a;)V

    return-object v0
.end method
