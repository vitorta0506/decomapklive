.class Lio/grpc/internal/l2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/p$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/l2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/l2;


# direct methods
.method constructor <init>(Lio/grpc/internal/l2;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/l2$a;->a:Lio/grpc/internal/l2;

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

    .line 1
    iget-object v0, p0, Lio/grpc/internal/l2$a;->a:Lio/grpc/internal/l2;

    invoke-static {v0}, Lio/grpc/internal/l2;->j(Lio/grpc/internal/l2;)Lio/grpc/internal/y0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/y0;->P()Lio/grpc/internal/r;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/grpc/internal/l2;->k()Lio/grpc/internal/g0;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-static {p2, p3, v1, v1}, Lio/grpc/internal/GrpcUtil;->g(Lio/grpc/c;Lio/grpc/s0;IZ)[Lio/grpc/k;

    move-result-object v1

    .line 4
    invoke-virtual {p4}, Lio/grpc/r;->c()Lio/grpc/r;

    move-result-object v2

    .line 5
    :try_start_0
    invoke-interface {v0, p1, p3, p2, v1}, Lio/grpc/internal/r;->e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p4, v2}, Lio/grpc/r;->k(Lio/grpc/r;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p4, v2}, Lio/grpc/r;->k(Lio/grpc/r;)V

    throw p1
.end method
