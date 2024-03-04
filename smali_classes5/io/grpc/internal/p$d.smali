.class Lio/grpc/internal/p$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/ClientStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final a:Lio/grpc/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/g$a<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field private b:Lio/grpc/Status;

.field final synthetic c:Lio/grpc/internal/p;


# direct methods
.method public constructor <init>(Lio/grpc/internal/p;Lio/grpc/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g$a<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "observer"

    .line 2
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/g$a;

    iput-object p1, p0, Lio/grpc/internal/p$d;->a:Lio/grpc/g$a;

    return-void
.end method

.method static synthetic e(Lio/grpc/internal/p$d;)Lio/grpc/Status;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/p$d;->b:Lio/grpc/Status;

    return-object p0
.end method

.method static synthetic f(Lio/grpc/internal/p$d;)Lio/grpc/g$a;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/p$d;->a:Lio/grpc/g$a;

    return-object p0
.end method

.method static synthetic g(Lio/grpc/internal/p$d;Lio/grpc/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/internal/p$d;->i(Lio/grpc/Status;)V

    return-void
.end method

.method private h(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/s0;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {p2}, Lio/grpc/internal/p;->g(Lio/grpc/internal/p;)Lio/grpc/t;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Lio/grpc/Status;->n()Lio/grpc/Status$Code;

    move-result-object v0

    sget-object v1, Lio/grpc/Status$Code;->CANCELLED:Lio/grpc/Status$Code;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lio/grpc/t;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lio/grpc/internal/x0;

    invoke-direct {p1}, Lio/grpc/internal/x0;-><init>()V

    .line 5
    iget-object p2, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {p2}, Lio/grpc/internal/p;->f(Lio/grpc/internal/p;)Lio/grpc/internal/q;

    move-result-object p2

    invoke-interface {p2, p1}, Lio/grpc/internal/q;->l(Lio/grpc/internal/x0;)V

    .line 6
    sget-object p2, Lio/grpc/Status;->j:Lio/grpc/Status;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ClientCall was cancelled at or after deadline. "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/grpc/Status;->f(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 7
    new-instance p3, Lio/grpc/s0;

    invoke-direct {p3}, Lio/grpc/s0;-><init>()V

    .line 8
    :cond_0
    invoke-static {}, Lqh/c;->f()Lqh/b;

    move-result-object p2

    .line 9
    iget-object v0, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {v0}, Lio/grpc/internal/p;->n(Lio/grpc/internal/p;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/p$d$c;

    invoke-direct {v1, p0, p2, p1, p3}, Lio/grpc/internal/p$d$c;-><init>(Lio/grpc/internal/p$d;Lqh/b;Lio/grpc/Status;Lio/grpc/s0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private i(Lio/grpc/Status;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/grpc/internal/p$d;->b:Lio/grpc/Status;

    .line 2
    iget-object v0, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {v0}, Lio/grpc/internal/p;->f(Lio/grpc/internal/p;)Lio/grpc/internal/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/q;->e(Lio/grpc/Status;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/internal/k2$a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {v0}, Lio/grpc/internal/p;->m(Lio/grpc/internal/p;)Lqh/d;

    move-result-object v0

    const-string v1, "ClientStreamListener.messagesAvailable"

    invoke-static {v1, v0}, Lqh/c;->h(Ljava/lang/String;Lqh/d;)V

    .line 2
    invoke-static {}, Lqh/c;->f()Lqh/b;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {v2}, Lio/grpc/internal/p;->n(Lio/grpc/internal/p;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lio/grpc/internal/p$d$b;

    invoke-direct {v3, p0, v0, p1}, Lio/grpc/internal/p$d$b;-><init>(Lio/grpc/internal/p$d;Lqh/b;Lio/grpc/internal/k2$a;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {p1}, Lio/grpc/internal/p;->m(Lio/grpc/internal/p;)Lqh/d;

    move-result-object p1

    invoke-static {v1, p1}, Lqh/c;->j(Ljava/lang/String;Lqh/d;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {v0}, Lio/grpc/internal/p;->m(Lio/grpc/internal/p;)Lqh/d;

    move-result-object v0

    invoke-static {v1, v0}, Lqh/c;->j(Ljava/lang/String;Lqh/d;)V

    throw p1
.end method

.method public b(Lio/grpc/s0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {v0}, Lio/grpc/internal/p;->m(Lio/grpc/internal/p;)Lqh/d;

    move-result-object v0

    const-string v1, "ClientStreamListener.headersRead"

    invoke-static {v1, v0}, Lqh/c;->h(Ljava/lang/String;Lqh/d;)V

    .line 2
    invoke-static {}, Lqh/c;->f()Lqh/b;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {v2}, Lio/grpc/internal/p;->n(Lio/grpc/internal/p;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lio/grpc/internal/p$d$a;

    invoke-direct {v3, p0, v0, p1}, Lio/grpc/internal/p$d$a;-><init>(Lio/grpc/internal/p$d;Lqh/b;Lio/grpc/s0;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {p1}, Lio/grpc/internal/p;->m(Lio/grpc/internal/p;)Lqh/d;

    move-result-object p1

    invoke-static {v1, p1}, Lqh/c;->j(Ljava/lang/String;Lqh/d;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {v0}, Lio/grpc/internal/p;->m(Lio/grpc/internal/p;)Lqh/d;

    move-result-object v0

    invoke-static {v1, v0}, Lqh/c;->j(Ljava/lang/String;Lqh/d;)V

    throw p1
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {v0}, Lio/grpc/internal/p;->o(Lio/grpc/internal/p;)Lio/grpc/MethodDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->f()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$MethodType;->clientSendsOneMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {v0}, Lio/grpc/internal/p;->m(Lio/grpc/internal/p;)Lqh/d;

    move-result-object v0

    const-string v1, "ClientStreamListener.onReady"

    invoke-static {v1, v0}, Lqh/c;->h(Ljava/lang/String;Lqh/d;)V

    .line 3
    invoke-static {}, Lqh/c;->f()Lqh/b;

    move-result-object v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {v2}, Lio/grpc/internal/p;->n(Lio/grpc/internal/p;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lio/grpc/internal/p$d$d;

    invoke-direct {v3, p0, v0}, Lio/grpc/internal/p$d$d;-><init>(Lio/grpc/internal/p$d;Lqh/b;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {v0}, Lio/grpc/internal/p;->m(Lio/grpc/internal/p;)Lqh/d;

    move-result-object v0

    invoke-static {v1, v0}, Lqh/c;->j(Ljava/lang/String;Lqh/d;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {v2}, Lio/grpc/internal/p;->m(Lio/grpc/internal/p;)Lqh/d;

    move-result-object v2

    invoke-static {v1, v2}, Lqh/c;->j(Ljava/lang/String;Lqh/d;)V

    throw v0
.end method

.method public d(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/s0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {v0}, Lio/grpc/internal/p;->m(Lio/grpc/internal/p;)Lqh/d;

    move-result-object v0

    const-string v1, "ClientStreamListener.closed"

    invoke-static {v1, v0}, Lqh/c;->h(Ljava/lang/String;Lqh/d;)V

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/internal/p$d;->h(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/s0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {p1}, Lio/grpc/internal/p;->m(Lio/grpc/internal/p;)Lqh/d;

    move-result-object p1

    invoke-static {v1, p1}, Lqh/c;->j(Ljava/lang/String;Lqh/d;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lio/grpc/internal/p$d;->c:Lio/grpc/internal/p;

    invoke-static {p2}, Lio/grpc/internal/p;->m(Lio/grpc/internal/p;)Lqh/d;

    move-result-object p2

    invoke-static {v1, p2}, Lqh/c;->j(Ljava/lang/String;Lqh/d;)V

    throw p1
.end method
