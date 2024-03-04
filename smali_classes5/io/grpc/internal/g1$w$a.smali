.class final Lio/grpc/internal/g1$w$a;
.super Lio/grpc/internal/y0$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/g1$w;->i(Lio/grpc/n0$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/n0$j;

.field final synthetic b:Lio/grpc/internal/g1$w;


# direct methods
.method constructor <init>(Lio/grpc/internal/g1$w;Lio/grpc/n0$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/internal/g1$w$a;->b:Lio/grpc/internal/g1$w;

    iput-object p2, p0, Lio/grpc/internal/g1$w$a;->a:Lio/grpc/n0$j;

    invoke-direct {p0}, Lio/grpc/internal/y0$j;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lio/grpc/internal/y0;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/g1$w$a;->b:Lio/grpc/internal/g1$w;

    iget-object v0, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->j0:Lio/grpc/internal/w0;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lio/grpc/internal/w0;->e(Ljava/lang/Object;Z)V

    return-void
.end method

.method b(Lio/grpc/internal/y0;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/g1$w$a;->b:Lio/grpc/internal/g1$w;

    iget-object v0, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->j0:Lio/grpc/internal/w0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/grpc/internal/w0;->e(Ljava/lang/Object;Z)V

    return-void
.end method

.method c(Lio/grpc/internal/y0;Lio/grpc/q;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lio/grpc/internal/g1$w$a;->a:Lio/grpc/n0$j;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "listener is null"

    invoke-static {p1, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/grpc/internal/g1$w$a;->a:Lio/grpc/n0$j;

    invoke-interface {p1, p2}, Lio/grpc/n0$j;->a(Lio/grpc/q;)V

    .line 3
    invoke-virtual {p2}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object p1

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-eq p1, v1, :cond_1

    invoke-virtual {p2}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object p1

    sget-object p2, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne p1, p2, :cond_2

    .line 4
    :cond_1
    iget-object p1, p0, Lio/grpc/internal/g1$w$a;->b:Lio/grpc/internal/g1$w;

    iget-object p1, p1, Lio/grpc/internal/g1$w;->b:Lio/grpc/internal/g1$r;

    iget-boolean p2, p1, Lio/grpc/internal/g1$r;->c:Z

    if-nez p2, :cond_2

    iget-boolean p1, p1, Lio/grpc/internal/g1$r;->b:Z

    if-nez p1, :cond_2

    .line 5
    sget-object p1, Lio/grpc/internal/g1;->o0:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "LoadBalancer should call Helper.refreshNameResolution() to refresh name resolution if subchannel state becomes TRANSIENT_FAILURE or IDLE. This will no longer happen automatically in the future releases"

    invoke-virtual {p1, p2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lio/grpc/internal/g1$w$a;->b:Lio/grpc/internal/g1$w;

    iget-object p1, p1, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    invoke-static {p1}, Lio/grpc/internal/g1;->Z(Lio/grpc/internal/g1;)V

    .line 7
    iget-object p1, p0, Lio/grpc/internal/g1$w$a;->b:Lio/grpc/internal/g1$w;

    iget-object p1, p1, Lio/grpc/internal/g1$w;->b:Lio/grpc/internal/g1$r;

    iput-boolean v0, p1, Lio/grpc/internal/g1$r;->b:Z

    :cond_2
    return-void
.end method

.method d(Lio/grpc/internal/y0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$w$a;->b:Lio/grpc/internal/g1$w;

    iget-object v0, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->q0(Lio/grpc/internal/g1;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lio/grpc/internal/g1$w$a;->b:Lio/grpc/internal/g1$w;

    iget-object v0, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->i0(Lio/grpc/internal/g1;)Lio/grpc/c0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/c0;->k(Lio/grpc/f0;)V

    .line 3
    iget-object p1, p0, Lio/grpc/internal/g1$w$a;->b:Lio/grpc/internal/g1$w;

    iget-object p1, p1, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    invoke-static {p1}, Lio/grpc/internal/g1;->j0(Lio/grpc/internal/g1;)V

    return-void
.end method
