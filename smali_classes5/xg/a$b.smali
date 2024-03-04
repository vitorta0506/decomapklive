.class Lxg/a$b;
.super Lxg/a$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxg/a;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final b:Lqh/b;

.field final synthetic c:Lxg/a;


# direct methods
.method constructor <init>(Lxg/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lxg/a$b;->c:Lxg/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxg/a$d;-><init>(Lxg/a;Lxg/a$a;)V

    .line 2
    invoke-static {}, Lqh/c;->f()Lqh/b;

    move-result-object p1

    iput-object p1, p0, Lxg/a$b;->b:Lqh/b;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "WriteRunnable.runFlush"

    .line 1
    invoke-static {v0}, Lqh/c;->g(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lxg/a$b;->b:Lqh/b;

    invoke-static {v0}, Lqh/c;->e(Lqh/b;)V

    .line 3
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lxg/a$b;->c:Lxg/a;

    invoke-static {v1}, Lxg/a;->a(Lxg/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v2, p0, Lxg/a$b;->c:Lxg/a;

    invoke-static {v2}, Lxg/a;->b(Lxg/a;)Lokio/Buffer;

    move-result-object v2

    iget-object v3, p0, Lxg/a$b;->c:Lxg/a;

    invoke-static {v3}, Lxg/a;->b(Lxg/a;)Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 6
    iget-object v2, p0, Lxg/a$b;->c:Lxg/a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lxg/a;->e(Lxg/a;Z)Z

    .line 7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    iget-object v1, p0, Lxg/a$b;->c:Lxg/a;

    invoke-static {v1}, Lxg/a;->d(Lxg/a;)Lokio/Sink;

    move-result-object v1

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 9
    iget-object v0, p0, Lxg/a$b;->c:Lxg/a;

    invoke-static {v0}, Lxg/a;->d(Lxg/a;)Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "WriteRunnable.runFlush"

    .line 10
    invoke-static {v0}, Lqh/c;->i(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    const-string v1, "WriteRunnable.runFlush"

    .line 12
    invoke-static {v1}, Lqh/c;->i(Ljava/lang/String;)V

    throw v0
.end method
