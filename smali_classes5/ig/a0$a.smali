.class Lig/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/a0;->d(Lio/grpc/internal/r$a;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/r$a;

.field final synthetic b:Lig/a0;


# direct methods
.method constructor <init>(Lig/a0;Lio/grpc/internal/r$a;)V
    .locals 0

    iput-object p1, p0, Lig/a0$a;->b:Lig/a0;

    iput-object p2, p0, Lig/a0$a;->a:Lio/grpc/internal/r$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lig/a0$a;->a:Lio/grpc/internal/r$a;

    iget-object v1, p0, Lig/a0$a;->b:Lig/a0;

    invoke-static {v1}, Lig/a0;->a(Lig/a0;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/Status;->c()Lio/grpc/StatusException;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/internal/r$a;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method
