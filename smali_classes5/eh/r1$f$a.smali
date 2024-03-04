.class Leh/r1$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/stub/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/r1$f;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/stub/h<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leh/r1$f;


# direct methods
.method constructor <init>(Leh/r1$f;)V
    .locals 0

    iput-object p1, p0, Leh/r1$f$a;->a:Leh/r1$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;)V
    .locals 2

    iget-object v0, p0, Leh/r1$f$a;->a:Leh/r1$f;

    iget-object v0, v0, Leh/r1$f;->i:Leh/r1;

    invoke-static {v0}, Leh/r1;->l(Leh/r1;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/r1$f$a$a;

    invoke-direct {v1, p0, p1}, Leh/r1$f$a$a;-><init>(Leh/r1$f$a;Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCompleted()V
    .locals 2

    iget-object v0, p0, Leh/r1$f$a;->a:Leh/r1$f;

    iget-object v0, v0, Leh/r1$f;->i:Leh/r1;

    invoke-static {v0}, Leh/r1;->l(Leh/r1;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/r1$f$a$c;

    invoke-direct {v1, p0}, Leh/r1$f$a$c;-><init>(Leh/r1$f$a;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Leh/r1$f$a;->a:Leh/r1$f;

    iget-object v0, v0, Leh/r1$f;->i:Leh/r1;

    invoke-static {v0}, Leh/r1;->l(Leh/r1;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/r1$f$a$b;

    invoke-direct {v1, p0, p1}, Leh/r1$f$a$b;-><init>(Leh/r1$f$a;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;

    invoke-virtual {p0, p1}, Leh/r1$f$a;->b(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/load_stats/v3/LoadStatsResponse;)V

    return-void
.end method
