.class Leh/a$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/stub/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/a$d;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/stub/h<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DiscoveryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leh/a$d;


# direct methods
.method constructor <init>(Leh/a$d;)V
    .locals 0

    iput-object p1, p0, Leh/a$d$a;->a:Leh/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DiscoveryResponse;)V
    .locals 2

    iget-object v0, p0, Leh/a$d$a;->a:Leh/a$d;

    iget-object v0, v0, Leh/a$d;->i:Leh/a;

    invoke-static {v0}, Leh/a;->k(Leh/a;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/a$d$a$a;

    invoke-direct {v1, p0, p1}, Leh/a$d$a$a;-><init>(Leh/a$d$a;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DiscoveryResponse;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCompleted()V
    .locals 2

    iget-object v0, p0, Leh/a$d$a;->a:Leh/a$d;

    iget-object v0, v0, Leh/a$d;->i:Leh/a;

    invoke-static {v0}, Leh/a;->k(Leh/a;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/a$d$a$c;

    invoke-direct {v1, p0}, Leh/a$d$a$c;-><init>(Leh/a$d$a;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Leh/a$d$a;->a:Leh/a$d;

    iget-object v0, v0, Leh/a$d;->i:Leh/a;

    invoke-static {v0}, Leh/a;->k(Leh/a;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/a$d$a$b;

    invoke-direct {v1, p0, p1}, Leh/a$d$a$b;-><init>(Leh/a$d$a;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DiscoveryResponse;

    invoke-virtual {p0, p1}, Leh/a$d$a;->b(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DiscoveryResponse;)V

    return-void
.end method
