.class public abstract Lio/grpc/z;
.super Lio/grpc/x0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/x0<",
        "TRespT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/x0;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/grpc/Status;Lio/grpc/s0;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lio/grpc/x0;->a(Lio/grpc/Status;Lio/grpc/s0;)V

    return-void
.end method

.method public bridge synthetic b(Lio/grpc/s0;)V
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/x0;->b(Lio/grpc/s0;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/z;->e()Lio/grpc/g$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/g$a;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    invoke-super {p0}, Lio/grpc/x0;->d()V

    return-void
.end method

.method protected abstract e()Lio/grpc/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/g$a<",
            "TRespT;>;"
        }
    .end annotation
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lio/grpc/x0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
