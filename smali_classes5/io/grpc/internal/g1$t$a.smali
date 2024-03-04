.class Lio/grpc/internal/g1$t$a;
.super Lio/grpc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/g1$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/g1$t;


# direct methods
.method constructor <init>(Lio/grpc/internal/g1$t;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/g1$t$a;->a:Lio/grpc/internal/g1$t;

    invoke-direct {p0}, Lio/grpc/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/g1$t$a;->a:Lio/grpc/internal/g1$t;

    invoke-static {v0}, Lio/grpc/internal/g1$t;->k(Lio/grpc/internal/g1$t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TRequestT;TResponseT;>;",
            "Lio/grpc/c;",
            ")",
            "Lio/grpc/g<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Lio/grpc/internal/p;

    iget-object v0, p0, Lio/grpc/internal/g1$t$a;->a:Lio/grpc/internal/g1$t;

    iget-object v0, v0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    .line 2
    invoke-static {v0, p2}, Lio/grpc/internal/g1;->B(Lio/grpc/internal/g1;Lio/grpc/c;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v0, p0, Lio/grpc/internal/g1$t$a;->a:Lio/grpc/internal/g1$t;

    iget-object v0, v0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    .line 3
    invoke-static {v0}, Lio/grpc/internal/g1;->Q(Lio/grpc/internal/g1;)Lio/grpc/internal/p$e;

    move-result-object v4

    .line 4
    iget-object v0, p0, Lio/grpc/internal/g1$t$a;->a:Lio/grpc/internal/g1$t;

    iget-object v0, v0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->R(Lio/grpc/internal/g1;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/g1$t$a;->a:Lio/grpc/internal/g1$t;

    iget-object v0, v0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->C(Lio/grpc/internal/g1;)Lio/grpc/internal/s;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/s;->o0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    :goto_0
    move-object v5, v0

    iget-object v0, p0, Lio/grpc/internal/g1$t$a;->a:Lio/grpc/internal/g1$t;

    iget-object v0, v0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    .line 5
    invoke-static {v0}, Lio/grpc/internal/g1;->F(Lio/grpc/internal/g1;)Lio/grpc/internal/m;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lio/grpc/internal/p;-><init>(Lio/grpc/MethodDescriptor;Ljava/util/concurrent/Executor;Lio/grpc/c;Lio/grpc/internal/p$e;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/m;Lio/grpc/d0;)V

    iget-object p1, p0, Lio/grpc/internal/g1$t$a;->a:Lio/grpc/internal/g1$t;

    iget-object p1, p1, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    .line 6
    invoke-static {p1}, Lio/grpc/internal/g1;->O(Lio/grpc/internal/g1;)Z

    move-result p1

    invoke-virtual {v8, p1}, Lio/grpc/internal/p;->B(Z)Lio/grpc/internal/p;

    move-result-object p1

    iget-object p2, p0, Lio/grpc/internal/g1$t$a;->a:Lio/grpc/internal/g1$t;

    iget-object p2, p2, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    .line 7
    invoke-static {p2}, Lio/grpc/internal/g1;->N(Lio/grpc/internal/g1;)Lio/grpc/v;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/grpc/internal/p;->A(Lio/grpc/v;)Lio/grpc/internal/p;

    move-result-object p1

    iget-object p2, p0, Lio/grpc/internal/g1$t$a;->a:Lio/grpc/internal/g1$t;

    iget-object p2, p2, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    .line 8
    invoke-static {p2}, Lio/grpc/internal/g1;->M(Lio/grpc/internal/g1;)Lio/grpc/p;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/grpc/internal/p;->z(Lio/grpc/p;)Lio/grpc/internal/p;

    move-result-object p1

    return-object p1
.end method
