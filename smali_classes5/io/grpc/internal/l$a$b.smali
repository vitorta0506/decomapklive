.class Lio/grpc/internal/l$a$b;
.super Lio/grpc/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/l$a;->e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/MethodDescriptor;

.field final synthetic b:Lio/grpc/c;

.field final synthetic c:Lio/grpc/internal/l$a;


# direct methods
.method constructor <init>(Lio/grpc/internal/l$a;Lio/grpc/MethodDescriptor;Lio/grpc/c;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/l$a$b;->c:Lio/grpc/internal/l$a;

    iput-object p2, p0, Lio/grpc/internal/l$a$b;->a:Lio/grpc/MethodDescriptor;

    iput-object p3, p0, Lio/grpc/internal/l$a$b;->b:Lio/grpc/c;

    invoke-direct {p0}, Lio/grpc/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/l$a$b;->b:Lio/grpc/c;

    invoke-virtual {v0}, Lio/grpc/c;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/l$a$b;->c:Lio/grpc/internal/l$a;

    invoke-static {v1}, Lio/grpc/internal/l$a;->l(Lio/grpc/internal/l$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b()Lio/grpc/MethodDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/l$a$b;->a:Lio/grpc/MethodDescriptor;

    return-object v0
.end method

.method public c()Lio/grpc/SecurityLevel;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/l$a$b;->c:Lio/grpc/internal/l$a;

    .line 2
    invoke-static {v0}, Lio/grpc/internal/l$a;->k(Lio/grpc/internal/l$a;)Lio/grpc/internal/u;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/u;->f()Lio/grpc/a;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/r0;->a:Lio/grpc/a$c;

    invoke-virtual {v0, v1}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/SecurityLevel;

    sget-object v1, Lio/grpc/SecurityLevel;->NONE:Lio/grpc/SecurityLevel;

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/SecurityLevel;

    return-object v0
.end method
