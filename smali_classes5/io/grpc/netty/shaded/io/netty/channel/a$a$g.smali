.class Lio/grpc/netty/shaded/io/netty/channel/a$a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/a$a;->n(Lio/grpc/netty/shaded/io/netty/channel/y;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/channel/y;

.field final synthetic c:Lio/grpc/netty/shaded/io/netty/channel/a$a;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/a$a;ZLio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->c:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iput-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->a:Z

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->b:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->c:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->i0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->a:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->c:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->C(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/e0;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->m1()Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 4
    :cond_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->c:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->e(Lio/grpc/netty/shaded/io/netty/channel/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    :goto_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->c:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->h(Lio/grpc/netty/shaded/io/netty/channel/a;Z)Z

    .line 6
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->c:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->C(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/e0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->o1()Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 7
    :cond_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->c:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->b:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->y(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/a;->t()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v2

    const-string v3, "Unexpected exception occurred while deregistering a channel."

    invoke-interface {v2, v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->a:Z

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->c:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->C(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/e0;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->m1()Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 11
    :cond_2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->c:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->e(Lio/grpc/netty/shaded/io/netty/channel/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v1

    .line 12
    iget-boolean v2, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->a:Z

    if-eqz v2, :cond_3

    .line 13
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->c:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v2, v2, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/channel/a;->C(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/e0;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->m1()Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 14
    :cond_3
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->c:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v2, v2, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/channel/a;->e(Lio/grpc/netty/shaded/io/netty/channel/a;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->c:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v2, v2, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v2, v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->h(Lio/grpc/netty/shaded/io/netty/channel/a;Z)Z

    .line 16
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->c:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->C(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/e0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->o1()Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 17
    :cond_4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->c:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;->b:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-virtual {v0, v2}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->y(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    .line 18
    throw v1
.end method
