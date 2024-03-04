.class abstract Lio/grpc/internal/n0;
.super Lio/grpc/q0;
.source "SourceFile"


# instance fields
.field private final a:Lio/grpc/q0;


# direct methods
.method constructor <init>(Lio/grpc/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/q0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/internal/n0;->a:Lio/grpc/q0;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/n0;->a:Lio/grpc/q0;

    invoke-virtual {v0}, Lio/grpc/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;
    .locals 1
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

    iget-object v0, p0, Lio/grpc/internal/n0;->a:Lio/grpc/q0;

    invoke-virtual {v0, p1, p2}, Lio/grpc/d;->i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object p1

    return-object p1
.end method

.method public j(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/n0;->a:Lio/grpc/q0;

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/q0;->j(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/n0;->a:Lio/grpc/q0;

    invoke-virtual {v0}, Lio/grpc/q0;->k()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/n0;->a:Lio/grpc/q0;

    invoke-virtual {v0}, Lio/grpc/q0;->l()Z

    move-result v0

    return v0
.end method

.method public m()Lio/grpc/q0;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/n0;->a:Lio/grpc/q0;

    invoke-virtual {v0}, Lio/grpc/q0;->m()Lio/grpc/q0;

    move-result-object v0

    return-object v0
.end method

.method public n()Lio/grpc/q0;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/n0;->a:Lio/grpc/q0;

    invoke-virtual {v0}, Lio/grpc/q0;->n()Lio/grpc/q0;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/n0;->a:Lio/grpc/q0;

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
