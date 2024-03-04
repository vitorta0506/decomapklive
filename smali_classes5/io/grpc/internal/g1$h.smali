.class Lio/grpc/internal/g1$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/g1;-><init>(Lio/grpc/internal/h1;Lio/grpc/internal/s;Lio/grpc/internal/k$a;Lio/grpc/internal/p1;Lcom/google/common/base/w;Ljava/util/List;Lio/grpc/internal/m2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/g1;


# direct methods
.method constructor <init>(Lio/grpc/internal/g1;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/g1$h;->a:Lio/grpc/internal/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/g1$h;->a:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->E(Lio/grpc/internal/g1;)Lio/grpc/internal/g1$o;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/g1$o;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
