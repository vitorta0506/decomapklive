.class Lgg/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/auth/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgg/a;->a(Lio/grpc/b$b;Ljava/util/concurrent/Executor;Lio/grpc/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/b$a;

.field final synthetic b:Lgg/a;


# direct methods
.method constructor <init>(Lgg/a;Lio/grpc/b$a;)V
    .locals 0

    iput-object p1, p0, Lgg/a$a;->b:Lgg/a;

    iput-object p2, p0, Lgg/a$a;->a:Lio/grpc/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lgg/a$a;->b:Lgg/a;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v1, p0, Lgg/a$a;->b:Lgg/a;

    invoke-static {v1}, Lgg/a;->b(Lgg/a;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgg/a$a;->b:Lgg/a;

    invoke-static {v1}, Lgg/a;->b(Lgg/a;)Ljava/util/Map;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 3
    :cond_0
    iget-object v1, p0, Lgg/a$a;->b:Lgg/a;

    invoke-static {p1}, Lgg/a;->f(Ljava/util/Map;)Lio/grpc/s0;

    move-result-object v2

    invoke-static {v1, v2}, Lgg/a;->e(Lgg/a;Lio/grpc/s0;)Lio/grpc/s0;

    .line 4
    iget-object v1, p0, Lgg/a$a;->b:Lgg/a;

    invoke-static {v1, p1}, Lgg/a;->c(Lgg/a;Ljava/util/Map;)Ljava/util/Map;

    .line 5
    :cond_1
    iget-object p1, p0, Lgg/a$a;->b:Lgg/a;

    invoke-static {p1}, Lgg/a;->d(Lgg/a;)Lio/grpc/s0;

    move-result-object p1

    .line 6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object v0, p0, Lgg/a$a;->a:Lio/grpc/b$a;

    invoke-virtual {v0, p1}, Lio/grpc/b$a;->a(Lio/grpc/s0;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 9
    iget-object v0, p0, Lgg/a$a;->a:Lio/grpc/b$a;

    sget-object v1, Lio/grpc/Status;->n:Lio/grpc/Status;

    const-string v2, "Failed to convert credential metadata"

    .line 10
    invoke-virtual {v1, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 11
    invoke-virtual {v1, p1}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lio/grpc/b$a;->b(Lio/grpc/Status;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lgg/a$a;->a:Lio/grpc/b$a;

    sget-object v1, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v2, "Credentials failed to obtain metadata"

    .line 3
    invoke-virtual {v1, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p1}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/b$a;->b(Lio/grpc/Status;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lgg/a$a;->a:Lio/grpc/b$a;

    sget-object v1, Lio/grpc/Status;->n:Lio/grpc/Status;

    const-string v2, "Failed computing credential metadata"

    .line 7
    invoke-virtual {v1, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 8
    invoke-virtual {v1, p1}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lio/grpc/b$a;->b(Lio/grpc/Status;)V

    :goto_0
    return-void
.end method
