.class Lio/grpc/internal/GrpcUtil$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/GrpcUtil;->l(Lio/grpc/n0$e;Z)Lio/grpc/internal/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/k$a;

.field final synthetic b:Lio/grpc/internal/r;


# direct methods
.method constructor <init>(Lio/grpc/k$a;Lio/grpc/internal/r;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/GrpcUtil$f;->a:Lio/grpc/k$a;

    iput-object p2, p0, Lio/grpc/internal/GrpcUtil$f;->b:Lio/grpc/internal/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lio/grpc/g0;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/GrpcUtil$f;->b:Lio/grpc/internal/r;

    invoke-interface {v0}, Lio/grpc/l0;->c()Lio/grpc/g0;

    move-result-object v0

    return-object v0
.end method

.method public e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/s0;",
            "Lio/grpc/c;",
            "[",
            "Lio/grpc/k;",
            ")",
            "Lio/grpc/internal/q;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/grpc/k$b;->a()Lio/grpc/k$b$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lio/grpc/k$b$a;->b(Lio/grpc/c;)Lio/grpc/k$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/k$b$a;->a()Lio/grpc/k$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/grpc/internal/GrpcUtil$f;->a:Lio/grpc/k$a;

    .line 3
    invoke-virtual {v1, v0, p2}, Lio/grpc/k$a;->a(Lio/grpc/k$b;Lio/grpc/s0;)Lio/grpc/k;

    move-result-object v0

    .line 4
    array-length v1, p4

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v1, p4, v1

    invoke-static {}, Lio/grpc/internal/GrpcUtil;->a()Lio/grpc/k;

    move-result-object v3

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "lb tracer already assigned"

    invoke-static {v1, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 5
    array-length v1, p4

    sub-int/2addr v1, v2

    aput-object v0, p4, v1

    .line 6
    iget-object v0, p0, Lio/grpc/internal/GrpcUtil$f;->b:Lio/grpc/internal/r;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/internal/r;->e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;

    move-result-object p1

    return-object p1
.end method
