.class final Lio/grpc/internal/p$d$b;
.super Lio/grpc/internal/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/p$d;->a(Lio/grpc/internal/k2$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lqh/b;

.field final synthetic c:Lio/grpc/internal/k2$a;

.field final synthetic d:Lio/grpc/internal/p$d;


# direct methods
.method constructor <init>(Lio/grpc/internal/p$d;Lqh/b;Lio/grpc/internal/k2$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/internal/p$d$b;->d:Lio/grpc/internal/p$d;

    iput-object p2, p0, Lio/grpc/internal/p$d$b;->b:Lqh/b;

    iput-object p3, p0, Lio/grpc/internal/p$d$b;->c:Lio/grpc/internal/k2$a;

    .line 2
    iget-object p1, p1, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {p1}, Lio/grpc/internal/p;->k(Lio/grpc/internal/p;)Lio/grpc/r;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/internal/x;-><init>(Lio/grpc/r;)V

    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/internal/p$d$b;->d:Lio/grpc/internal/p$d;

    invoke-static {v0}, Lio/grpc/internal/p$d;->e(Lio/grpc/internal/p$d;)Lio/grpc/Status;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/internal/p$d$b;->c:Lio/grpc/internal/k2$a;

    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->e(Lio/grpc/internal/k2$a;)V

    return-void

    .line 3
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/p$d$b;->c:Lio/grpc/internal/k2$a;

    invoke-interface {v0}, Lio/grpc/internal/k2$a;->next()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 4
    :try_start_1
    iget-object v1, p0, Lio/grpc/internal/p$d$b;->d:Lio/grpc/internal/p$d;

    invoke-static {v1}, Lio/grpc/internal/p$d;->f(Lio/grpc/internal/p$d;)Lio/grpc/g$a;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/p$d$b;->d:Lio/grpc/internal/p$d;

    iget-object v2, v2, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {v2}, Lio/grpc/internal/p;->o(Lio/grpc/internal/p;)Lio/grpc/MethodDescriptor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/grpc/MethodDescriptor;->j(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/g$a;->c(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->f(Ljava/io/Closeable;)V

    .line 7
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 8
    iget-object v1, p0, Lio/grpc/internal/p$d$b;->c:Lio/grpc/internal/k2$a;

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->e(Lio/grpc/internal/k2$a;)V

    .line 9
    iget-object v1, p0, Lio/grpc/internal/p$d$b;->d:Lio/grpc/internal/p$d;

    sget-object v2, Lio/grpc/Status;->g:Lio/grpc/Status;

    .line 10
    invoke-virtual {v2, v0}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    const-string v2, "Failed to read message."

    invoke-virtual {v0, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 11
    invoke-static {v1, v0}, Lio/grpc/internal/p$d;->g(Lio/grpc/internal/p$d;Lio/grpc/Status;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/internal/p$d$b;->d:Lio/grpc/internal/p$d;

    iget-object v0, v0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {v0}, Lio/grpc/internal/p;->m(Lio/grpc/internal/p;)Lqh/d;

    move-result-object v0

    const-string v1, "ClientCall$Listener.messagesAvailable"

    invoke-static {v1, v0}, Lqh/c;->h(Ljava/lang/String;Lqh/d;)V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/p$d$b;->b:Lqh/b;

    invoke-static {v0}, Lqh/c;->e(Lqh/b;)V

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/grpc/internal/p$d$b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lio/grpc/internal/p$d$b;->d:Lio/grpc/internal/p$d;

    iget-object v0, v0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {v0}, Lio/grpc/internal/p;->m(Lio/grpc/internal/p;)Lqh/d;

    move-result-object v0

    invoke-static {v1, v0}, Lqh/c;->j(Ljava/lang/String;Lqh/d;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/p$d$b;->d:Lio/grpc/internal/p$d;

    iget-object v2, v2, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {v2}, Lio/grpc/internal/p;->m(Lio/grpc/internal/p;)Lqh/d;

    move-result-object v2

    invoke-static {v1, v2}, Lqh/c;->j(Ljava/lang/String;Lqh/d;)V

    throw v0
.end method
