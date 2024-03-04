.class final Lio/grpc/internal/g1$t$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/g1$t;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/g1$t;


# direct methods
.method constructor <init>(Lio/grpc/internal/g1$t;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/g1$t$c;->a:Lio/grpc/internal/g1$t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$t$c;->a:Lio/grpc/internal/g1$t;

    invoke-static {v0}, Lio/grpc/internal/g1$t;->j(Lio/grpc/internal/g1$t;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lio/grpc/internal/g1;->L()Lio/grpc/d0;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/internal/g1$t$c;->a:Lio/grpc/internal/g1$t;

    invoke-static {v0}, Lio/grpc/internal/g1$t;->j(Lio/grpc/internal/g1$t;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/g1$t$c;->a:Lio/grpc/internal/g1$t;

    iget-object v0, v0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->S(Lio/grpc/internal/g1;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/internal/g1$t$c;->a:Lio/grpc/internal/g1$t;

    iget-object v0, v0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->S(Lio/grpc/internal/g1;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/g1$t$g;

    const-string v3, "Channel is forcefully shutdown"

    .line 5
    invoke-virtual {v1, v3, v2}, Lio/grpc/internal/z;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/g1$t$c;->a:Lio/grpc/internal/g1$t;

    iget-object v0, v0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->D(Lio/grpc/internal/g1;)Lio/grpc/internal/g1$x;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/g1;->q0:Lio/grpc/Status;

    invoke-virtual {v0, v1}, Lio/grpc/internal/g1$x;->c(Lio/grpc/Status;)V

    return-void
.end method
