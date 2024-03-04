.class Lio/grpc/internal/q1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/p$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/q1;


# direct methods
.method constructor <init>(Lio/grpc/internal/q1;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/q1$a;->a:Lio/grpc/internal/q1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/MethodDescriptor;Lio/grpc/c;Lio/grpc/s0;Lio/grpc/r;)Lio/grpc/internal/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/c;",
            "Lio/grpc/s0;",
            "Lio/grpc/r;",
            ")",
            "Lio/grpc/internal/q;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p2, p3, v0, v0}, Lio/grpc/internal/GrpcUtil;->g(Lio/grpc/c;Lio/grpc/s0;IZ)[Lio/grpc/k;

    move-result-object v0

    .line 2
    invoke-virtual {p4}, Lio/grpc/r;->c()Lio/grpc/r;

    move-result-object v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/q1$a;->a:Lio/grpc/internal/q1;

    invoke-static {v2}, Lio/grpc/internal/q1;->o(Lio/grpc/internal/q1;)Lio/grpc/internal/a0;

    move-result-object v2

    invoke-virtual {v2, p1, p3, p2, v0}, Lio/grpc/internal/a0;->e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p4, v1}, Lio/grpc/r;->k(Lio/grpc/r;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p4, v1}, Lio/grpc/r;->k(Lio/grpc/r;)V

    throw p1
.end method
