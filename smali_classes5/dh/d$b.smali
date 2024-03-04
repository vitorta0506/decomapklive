.class Ldh/d$b;
.super Ldh/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldh/d;->q(Lio/grpc/n0$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lio/grpc/n0;

.field final synthetic b:Ldh/d;


# direct methods
.method constructor <init>(Ldh/d;)V
    .locals 0

    iput-object p1, p0, Ldh/d$b;->b:Ldh/d;

    invoke-direct {p0}, Ldh/b;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldh/d$b;->a:Lio/grpc/n0;

    iget-object v1, p0, Ldh/d$b;->b:Ldh/d;

    invoke-static {v1}, Ldh/d;->h(Ldh/d;)Lio/grpc/n0;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Ldh/d$b;->b:Ldh/d;

    invoke-static {v0}, Ldh/d;->i(Ldh/d;)Z

    move-result v0

    const-string v1, "there\'s pending lb while current lb has been out of READY"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Ldh/d$b;->b:Ldh/d;

    invoke-static {v0, p1}, Ldh/d;->k(Ldh/d;Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityState;

    .line 4
    iget-object v0, p0, Ldh/d$b;->b:Ldh/d;

    invoke-static {v0, p2}, Ldh/d;->l(Ldh/d;Lio/grpc/n0$i;)Lio/grpc/n0$i;

    .line 5
    sget-object p2, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne p1, p2, :cond_3

    .line 6
    iget-object p1, p0, Ldh/d$b;->b:Ldh/d;

    invoke-static {p1}, Ldh/d;->m(Ldh/d;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Ldh/d$b;->a:Lio/grpc/n0;

    iget-object v1, p0, Ldh/d$b;->b:Ldh/d;

    invoke-static {v1}, Ldh/d;->n(Ldh/d;)Lio/grpc/n0;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Ldh/d$b;->b:Ldh/d;

    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Ldh/d;->j(Ldh/d;Z)Z

    .line 9
    iget-object v0, p0, Ldh/d$b;->b:Ldh/d;

    invoke-static {v0}, Ldh/d;->i(Ldh/d;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ldh/d$b;->b:Ldh/d;

    invoke-static {v0}, Ldh/d;->h(Ldh/d;)Lio/grpc/n0;

    move-result-object v0

    iget-object v1, p0, Ldh/d$b;->b:Ldh/d;

    invoke-static {v1}, Ldh/d;->o(Ldh/d;)Lio/grpc/n0;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 10
    iget-object p1, p0, Ldh/d$b;->b:Ldh/d;

    invoke-static {p1}, Ldh/d;->m(Ldh/d;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Ldh/d$b;->b:Ldh/d;

    invoke-static {v0}, Ldh/d;->g(Ldh/d;)Lio/grpc/n0$d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected m()Lio/grpc/n0$d;
    .locals 1

    iget-object v0, p0, Ldh/d$b;->b:Ldh/d;

    invoke-static {v0}, Ldh/d;->g(Ldh/d;)Lio/grpc/n0$d;

    move-result-object v0

    return-object v0
.end method
