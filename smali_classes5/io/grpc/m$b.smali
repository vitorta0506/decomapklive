.class final Lio/grpc/m$b;
.super Lio/grpc/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/grpc/b$b;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lio/grpc/b$a;

.field private final d:Lio/grpc/r;

.field final synthetic e:Lio/grpc/m;


# direct methods
.method public constructor <init>(Lio/grpc/m;Lio/grpc/b$b;Ljava/util/concurrent/Executor;Lio/grpc/b$a;Lio/grpc/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/m$b;->e:Lio/grpc/m;

    invoke-direct {p0}, Lio/grpc/b$a;-><init>()V

    .line 2
    iput-object p2, p0, Lio/grpc/m$b;->a:Lio/grpc/b$b;

    .line 3
    iput-object p3, p0, Lio/grpc/m$b;->b:Ljava/util/concurrent/Executor;

    const-string p1, "delegate"

    .line 4
    invoke-static {p4, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/b$a;

    iput-object p1, p0, Lio/grpc/m$b;->c:Lio/grpc/b$a;

    const-string p1, "context"

    .line 5
    invoke-static {p5, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/r;

    iput-object p1, p0, Lio/grpc/m$b;->d:Lio/grpc/r;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/s0;)V
    .locals 6

    const-string v0, "headers"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/grpc/m$b;->d:Lio/grpc/r;

    invoke-virtual {v0}, Lio/grpc/r;->c()Lio/grpc/r;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/grpc/m$b;->e:Lio/grpc/m;

    invoke-static {v1}, Lio/grpc/m;->b(Lio/grpc/m;)Lio/grpc/b;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/m$b;->a:Lio/grpc/b$b;

    iget-object v3, p0, Lio/grpc/m$b;->b:Ljava/util/concurrent/Executor;

    new-instance v4, Lio/grpc/m$a;

    iget-object v5, p0, Lio/grpc/m$b;->c:Lio/grpc/b$a;

    invoke-direct {v4, v5, p1}, Lio/grpc/m$a;-><init>(Lio/grpc/b$a;Lio/grpc/s0;)V

    invoke-virtual {v1, v2, v3, v4}, Lio/grpc/b;->a(Lio/grpc/b$b;Ljava/util/concurrent/Executor;Lio/grpc/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lio/grpc/m$b;->d:Lio/grpc/r;

    invoke-virtual {p1, v0}, Lio/grpc/r;->k(Lio/grpc/r;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lio/grpc/m$b;->d:Lio/grpc/r;

    invoke-virtual {v1, v0}, Lio/grpc/r;->k(Lio/grpc/r;)V

    throw p1
.end method

.method public b(Lio/grpc/Status;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/m$b;->c:Lio/grpc/b$a;

    invoke-virtual {v0, p1}, Lio/grpc/b$a;->b(Lio/grpc/Status;)V

    return-void
.end method
