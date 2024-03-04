.class final Lio/grpc/internal/g1$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/k1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "n"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/g1;


# direct methods
.method private constructor <init>(Lio/grpc/internal/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/internal/g1$n;->a:Lio/grpc/internal/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/g1;Lio/grpc/internal/g1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/internal/g1$n;-><init>(Lio/grpc/internal/g1;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/Status;)V
    .locals 1

    iget-object p1, p0, Lio/grpc/internal/g1$n;->a:Lio/grpc/internal/g1;

    invoke-static {p1}, Lio/grpc/internal/g1;->t(Lio/grpc/internal/g1;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const-string v0, "Channel must have been shut down"

    invoke-static {p1, v0}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/g1$n;->a:Lio/grpc/internal/g1;

    iget-object v1, v0, Lio/grpc/internal/g1;->j0:Lio/grpc/internal/w0;

    invoke-static {v0}, Lio/grpc/internal/g1;->u(Lio/grpc/internal/g1;)Lio/grpc/internal/a0;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lio/grpc/internal/w0;->e(Ljava/lang/Object;Z)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$n;->a:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->t(Lio/grpc/internal/g1;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "Channel must have been shut down"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/g1$n;->a:Lio/grpc/internal/g1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/grpc/internal/g1;->b0(Lio/grpc/internal/g1;Z)Z

    .line 3
    iget-object v0, p0, Lio/grpc/internal/g1$n;->a:Lio/grpc/internal/g1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/internal/g1;->E0(Lio/grpc/internal/g1;Z)V

    .line 4
    iget-object v0, p0, Lio/grpc/internal/g1$n;->a:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->K(Lio/grpc/internal/g1;)V

    .line 5
    iget-object v0, p0, Lio/grpc/internal/g1$n;->a:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->j0(Lio/grpc/internal/g1;)V

    return-void
.end method
