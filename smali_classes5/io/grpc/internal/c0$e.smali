.class final Lio/grpc/internal/c0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field private final a:Lio/grpc/t0$e;

.field final synthetic b:Lio/grpc/internal/c0;


# direct methods
.method constructor <init>(Lio/grpc/internal/c0;Lio/grpc/t0$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/internal/c0$e;->b:Lio/grpc/internal/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "savedListener"

    .line 2
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/t0$e;

    iput-object p1, p0, Lio/grpc/internal/c0$e;->a:Lio/grpc/t0$e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Lio/grpc/internal/c0;->g()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lio/grpc/internal/c0;->g()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting DNS resolution of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/grpc/internal/c0$e;->b:Lio/grpc/internal/c0;

    invoke-static {v3}, Lio/grpc/internal/c0;->h(Lio/grpc/internal/c0;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    :try_start_0
    iget-object v4, p0, Lio/grpc/internal/c0$e;->b:Lio/grpc/internal/c0;

    invoke-static {v4}, Lio/grpc/internal/c0;->i(Lio/grpc/internal/c0;)Lio/grpc/x;

    move-result-object v4

    .line 4
    invoke-static {}, Lio/grpc/t0$g;->d()Lio/grpc/t0$g$a;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 5
    invoke-static {}, Lio/grpc/internal/c0;->g()Ljava/util/logging/Logger;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lio/grpc/internal/c0;->g()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using proxy address "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v5, v1}, Lio/grpc/t0$g$a;->b(Ljava/util/List;)Lio/grpc/t0$g$a;

    goto :goto_1

    .line 8
    :cond_2
    iget-object v1, p0, Lio/grpc/internal/c0$e;->b:Lio/grpc/internal/c0;

    invoke-virtual {v1, v3}, Lio/grpc/internal/c0;->o(Z)Lio/grpc/internal/c0$c;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lio/grpc/internal/c0$c;->c(Lio/grpc/internal/c0$c;)Lio/grpc/Status;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, p0, Lio/grpc/internal/c0$e;->a:Lio/grpc/t0$e;

    invoke-static {v0}, Lio/grpc/internal/c0$c;->c(Lio/grpc/internal/c0$c;)Lio/grpc/Status;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/grpc/t0$e;->a(Lio/grpc/Status;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {v0}, Lio/grpc/internal/c0$c;->c(Lio/grpc/internal/c0$c;)Lio/grpc/Status;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 12
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/c0$e;->b:Lio/grpc/internal/c0;

    invoke-static {v0}, Lio/grpc/internal/c0;->f(Lio/grpc/internal/c0;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/c0$e$a;

    invoke-direct {v1, p0, v2}, Lio/grpc/internal/c0$e$a;-><init>(Lio/grpc/internal/c0$e;Z)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 13
    :cond_4
    :try_start_1
    invoke-static {v0}, Lio/grpc/internal/c0$c;->a(Lio/grpc/internal/c0$c;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 14
    invoke-static {v0}, Lio/grpc/internal/c0$c;->a(Lio/grpc/internal/c0$c;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v5, v1}, Lio/grpc/t0$g$a;->b(Ljava/util/List;)Lio/grpc/t0$g$a;

    .line 15
    :cond_5
    invoke-static {v0}, Lio/grpc/internal/c0$c;->e(Lio/grpc/internal/c0$c;)Lio/grpc/t0$c;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 16
    invoke-static {v0}, Lio/grpc/internal/c0$c;->e(Lio/grpc/internal/c0$c;)Lio/grpc/t0$c;

    move-result-object v1

    invoke-virtual {v5, v1}, Lio/grpc/t0$g$a;->d(Lio/grpc/t0$c;)Lio/grpc/t0$g$a;

    .line 17
    :cond_6
    iget-object v1, v0, Lio/grpc/internal/c0$c;->d:Lio/grpc/a;

    if-eqz v1, :cond_7

    .line 18
    invoke-virtual {v5, v1}, Lio/grpc/t0$g$a;->c(Lio/grpc/a;)Lio/grpc/t0$g$a;

    .line 19
    :cond_7
    :goto_1
    iget-object v1, p0, Lio/grpc/internal/c0$e;->a:Lio/grpc/t0$e;

    invoke-virtual {v5}, Lio/grpc/t0$g$a;->a()Lio/grpc/t0$g;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/grpc/t0$e;->c(Lio/grpc/t0$g;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_8

    .line 20
    invoke-static {v0}, Lio/grpc/internal/c0$c;->c(Lio/grpc/internal/c0$c;)Lio/grpc/Status;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    .line 21
    :goto_2
    iget-object v0, p0, Lio/grpc/internal/c0$e;->b:Lio/grpc/internal/c0;

    invoke-static {v0}, Lio/grpc/internal/c0;->f(Lio/grpc/internal/c0;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/c0$e$a;

    invoke-direct {v1, p0, v2}, Lio/grpc/internal/c0$e$a;-><init>(Lio/grpc/internal/c0$e;Z)V

    :goto_3
    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_0
    move-exception v1

    .line 22
    :try_start_2
    iget-object v4, p0, Lio/grpc/internal/c0$e;->a:Lio/grpc/t0$e;

    sget-object v5, Lio/grpc/Status;->u:Lio/grpc/Status;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to resolve host "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lio/grpc/internal/c0$e;->b:Lio/grpc/internal/c0;

    .line 23
    invoke-static {v7}, Lio/grpc/internal/c0;->h(Lio/grpc/internal/c0;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v5

    invoke-virtual {v5, v1}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    .line 24
    invoke-virtual {v4, v1}, Lio/grpc/t0$e;->a(Lio/grpc/Status;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_9

    .line 25
    invoke-static {v0}, Lio/grpc/internal/c0$c;->c(Lio/grpc/internal/c0$c;)Lio/grpc/Status;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    .line 26
    :goto_4
    iget-object v0, p0, Lio/grpc/internal/c0$e;->b:Lio/grpc/internal/c0;

    invoke-static {v0}, Lio/grpc/internal/c0;->f(Lio/grpc/internal/c0;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/c0$e$a;

    invoke-direct {v1, p0, v2}, Lio/grpc/internal/c0$e$a;-><init>(Lio/grpc/internal/c0$e;Z)V

    goto :goto_3

    :goto_5
    return-void

    :goto_6
    if-eqz v0, :cond_a

    .line 27
    invoke-static {v0}, Lio/grpc/internal/c0$c;->c(Lio/grpc/internal/c0$c;)Lio/grpc/Status;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    .line 28
    :goto_7
    iget-object v0, p0, Lio/grpc/internal/c0$e;->b:Lio/grpc/internal/c0;

    invoke-static {v0}, Lio/grpc/internal/c0;->f(Lio/grpc/internal/c0;)Lio/grpc/d1;

    move-result-object v0

    new-instance v3, Lio/grpc/internal/c0$e$a;

    invoke-direct {v3, p0, v2}, Lio/grpc/internal/c0$e$a;-><init>(Lio/grpc/internal/c0$e;Z)V

    invoke-virtual {v0, v3}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    .line 29
    throw v1
.end method
