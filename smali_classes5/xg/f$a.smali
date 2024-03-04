.class Lxg/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lxg/f;


# direct methods
.method constructor <init>(Lxg/f;)V
    .locals 0

    iput-object p1, p0, Lxg/f$a;->a:Lxg/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lio/grpc/Status;)V
    .locals 4

    const-string v0, "OkHttpClientStream$Sink.cancel"

    .line 1
    invoke-static {v0}, Lqh/c;->g(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lxg/f$a;->a:Lxg/f;

    invoke-static {v0}, Lxg/f;->J(Lxg/f;)Lxg/f$b;

    move-result-object v0

    invoke-static {v0}, Lxg/f$b;->Y(Lxg/f$b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lxg/f$a;->a:Lxg/f;

    invoke-static {v1}, Lxg/f;->J(Lxg/f;)Lxg/f$b;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lxg/f$b;->b0(Lxg/f$b;Lio/grpc/Status;ZLio/grpc/s0;)V

    .line 4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "OkHttpClientStream$Sink.cancel"

    .line 5
    invoke-static {p1}, Lqh/c;->i(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 6
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

    const-string v0, "OkHttpClientStream$Sink.cancel"

    .line 7
    invoke-static {v0}, Lqh/c;->i(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Lio/grpc/internal/q2;ZZI)V
    .locals 2

    const-string v0, "OkHttpClientStream$Sink.writeFrame"

    .line 1
    invoke-static {v0}, Lqh/c;->g(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lxg/f;->K()Lokio/Buffer;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Lxg/m;

    invoke-virtual {p1}, Lxg/m;->c()Lokio/Buffer;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v1, v0

    if-lez v1, :cond_1

    .line 5
    iget-object v0, p0, Lxg/f$a;->a:Lxg/f;

    invoke-static {v0, v1}, Lxg/f;->L(Lxg/f;I)V

    .line 6
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lxg/f$a;->a:Lxg/f;

    invoke-static {v0}, Lxg/f;->J(Lxg/f;)Lxg/f$b;

    move-result-object v0

    invoke-static {v0}, Lxg/f$b;->Y(Lxg/f$b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v1, p0, Lxg/f$a;->a:Lxg/f;

    invoke-static {v1}, Lxg/f;->J(Lxg/f;)Lxg/f$b;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lxg/f$b;->a0(Lxg/f$b;Lokio/Buffer;ZZ)V

    .line 8
    iget-object p1, p0, Lxg/f$a;->a:Lxg/f;

    invoke-static {p1}, Lxg/f;->M(Lxg/f;)Lio/grpc/internal/p2;

    move-result-object p1

    invoke-virtual {p1, p4}, Lio/grpc/internal/p2;->e(I)V

    .line 9
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "OkHttpClientStream$Sink.writeFrame"

    .line 10
    invoke-static {p1}, Lqh/c;->i(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
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

    const-string p2, "OkHttpClientStream$Sink.writeFrame"

    .line 12
    invoke-static {p2}, Lqh/c;->i(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Lio/grpc/s0;[B)V
    .locals 3

    const-string v0, "OkHttpClientStream$Sink.writeHeaders"

    .line 1
    invoke-static {v0}, Lqh/c;->g(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lxg/f$a;->a:Lxg/f;

    invoke-static {v1}, Lxg/f;->A(Lxg/f;)Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/MethodDescriptor;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 3
    iget-object v1, p0, Lxg/f$a;->a:Lxg/f;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lxg/f;->D(Lxg/f;Z)Z

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/common/io/BaseEncoding;->b()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/io/BaseEncoding;->g([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_0
    :try_start_0
    iget-object p2, p0, Lxg/f$a;->a:Lxg/f;

    invoke-static {p2}, Lxg/f;->J(Lxg/f;)Lxg/f$b;

    move-result-object p2

    invoke-static {p2}, Lxg/f$b;->Y(Lxg/f$b;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v1, p0, Lxg/f$a;->a:Lxg/f;

    invoke-static {v1}, Lxg/f;->J(Lxg/f;)Lxg/f$b;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lxg/f$b;->Z(Lxg/f$b;Lio/grpc/s0;Ljava/lang/String;)V

    .line 7
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "OkHttpClientStream$Sink.writeHeaders"

    .line 8
    invoke-static {p1}, Lqh/c;->i(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    const-string p2, "OkHttpClientStream$Sink.writeHeaders"

    .line 10
    invoke-static {p2}, Lqh/c;->i(Ljava/lang/String;)V

    throw p1
.end method
