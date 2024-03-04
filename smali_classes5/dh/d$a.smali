.class Ldh/d$a;
.super Lio/grpc/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldh/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ldh/d;


# direct methods
.method constructor <init>(Ldh/d;)V
    .locals 0

    iput-object p1, p0, Ldh/d$a;->c:Ldh/d;

    invoke-direct {p0}, Lio/grpc/n0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lio/grpc/Status;)V
    .locals 3

    iget-object v0, p0, Ldh/d$a;->c:Ldh/d;

    invoke-static {v0}, Ldh/d;->g(Ldh/d;)Lio/grpc/n0$d;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v2, Ldh/d$a$a;

    invoke-direct {v2, p0, p1}, Ldh/d$a$a;-><init>(Ldh/d$a;Lio/grpc/Status;)V

    invoke-virtual {v0, v1, v2}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    return-void
.end method

.method public d(Lio/grpc/n0$g;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GracefulSwitchLoadBalancer must switch to a load balancing policy before handling ResolvedAddresses"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()V
    .locals 0

    return-void
.end method
