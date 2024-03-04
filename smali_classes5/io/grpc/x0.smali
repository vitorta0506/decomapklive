.class abstract Lio/grpc/x0;
.super Lio/grpc/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/g$a<",
        "TRespT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/Status;Lio/grpc/s0;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/x0;->e()Lio/grpc/g$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/g$a;->a(Lio/grpc/Status;Lio/grpc/s0;)V

    return-void
.end method

.method public b(Lio/grpc/s0;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/x0;->e()Lio/grpc/g$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/g$a;->b(Lio/grpc/s0;)V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/x0;->e()Lio/grpc/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/g$a;->d()V

    return-void
.end method

.method protected abstract e()Lio/grpc/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/g$a<",
            "*>;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/x0;->e()Lio/grpc/g$a;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
