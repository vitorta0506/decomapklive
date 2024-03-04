.class final Lio/grpc/internal/q1$b;
.super Lio/grpc/n0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/q1;->r(Lio/grpc/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final a:Lio/grpc/n0$e;

.field final synthetic b:Lio/grpc/q;

.field final synthetic c:Lio/grpc/internal/q1;


# direct methods
.method constructor <init>(Lio/grpc/internal/q1;Lio/grpc/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/internal/q1$b;->c:Lio/grpc/internal/q1;

    iput-object p2, p0, Lio/grpc/internal/q1$b;->b:Lio/grpc/q;

    invoke-direct {p0}, Lio/grpc/n0$i;-><init>()V

    .line 2
    invoke-virtual {p2}, Lio/grpc/q;->d()Lio/grpc/Status;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/n0$e;->f(Lio/grpc/Status;)Lio/grpc/n0$e;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/q1$b;->a:Lio/grpc/n0$e;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/n0$f;)Lio/grpc/n0$e;
    .locals 0

    iget-object p1, p0, Lio/grpc/internal/q1$b;->a:Lio/grpc/n0$e;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lio/grpc/internal/q1$b;

    invoke-static {v0}, Lcom/google/common/base/j;->b(Ljava/lang/Class;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/q1$b;->a:Lio/grpc/n0$e;

    const-string v2, "errorResult"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
