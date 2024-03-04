.class Lio/grpc/internal/l2$b;
.super Lio/grpc/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/l2;->i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/g<",
        "TRequestT;TResponseT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Executor;

.field final synthetic b:Lio/grpc/internal/l2;


# direct methods
.method constructor <init>(Lio/grpc/internal/l2;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/l2$b;->b:Lio/grpc/internal/l2;

    iput-object p2, p0, Lio/grpc/internal/l2$b;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Lio/grpc/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestT;)V"
        }
    .end annotation

    return-void
.end method

.method public e(Lio/grpc/g$a;Lio/grpc/s0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g$a<",
            "TResponseT;>;",
            "Lio/grpc/s0;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lio/grpc/internal/l2$b;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lio/grpc/internal/l2$b$a;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/l2$b$a;-><init>(Lio/grpc/internal/l2$b;Lio/grpc/g$a;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
