.class public final Lbh/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lio/grpc/n0$c;Lio/grpc/n0$d;)Lio/grpc/n0;
    .locals 3

    .line 1
    new-instance v0, Lbh/a;

    new-instance v1, Lio/grpc/internal/e0$a;

    invoke-direct {v1}, Lio/grpc/internal/e0$a;-><init>()V

    sget-object v2, Lio/grpc/internal/GrpcUtil;->v:Lcom/google/common/base/w;

    invoke-direct {v0, p0, v1, v2}, Lbh/a;-><init>(Lio/grpc/n0$c;Lio/grpc/internal/k$a;Lcom/google/common/base/w;)V

    .line 2
    invoke-virtual {v0, p1}, Lbh/a;->a(Lio/grpc/n0$d;)Lio/grpc/n0;

    move-result-object p0

    return-object p0
.end method
