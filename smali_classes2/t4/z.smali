.class final Lt4/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lt4/g;

.field final synthetic b:Lt4/a0;


# direct methods
.method constructor <init>(Lt4/a0;Lt4/g;)V
    .locals 0

    iput-object p1, p0, Lt4/z;->b:Lt4/a0;

    iput-object p2, p0, Lt4/z;->a:Lt4/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lt4/z;->b:Lt4/a0;

    invoke-static {v0}, Lt4/a0;->d(Lt4/a0;)Lt4/f;

    move-result-object v0

    iget-object v1, p0, Lt4/z;->a:Lt4/g;

    invoke-virtual {v1}, Lt4/g;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lt4/f;->a(Ljava/lang/Object;)Lt4/g;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lt4/z;->b:Lt4/a0;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lt4/a0;->a(Ljava/lang/Exception;)V

    return-void

    .line 3
    :cond_0
    sget-object v1, Lt4/i;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lt4/z;->b:Lt4/a0;

    invoke-virtual {v0, v1, v2}, Lt4/g;->g(Ljava/util/concurrent/Executor;Lt4/e;)Lt4/g;

    iget-object v2, p0, Lt4/z;->b:Lt4/a0;

    .line 4
    invoke-virtual {v0, v1, v2}, Lt4/g;->e(Ljava/util/concurrent/Executor;Lt4/d;)Lt4/g;

    iget-object v2, p0, Lt4/z;->b:Lt4/a0;

    .line 5
    invoke-virtual {v0, v1, v2}, Lt4/g;->a(Ljava/util/concurrent/Executor;Lt4/b;)Lt4/g;

    return-void

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lt4/z;->b:Lt4/a0;

    .line 7
    invoke-virtual {v1, v0}, Lt4/a0;->a(Ljava/lang/Exception;)V

    return-void

    .line 8
    :catch_1
    iget-object v0, p0, Lt4/z;->b:Lt4/a0;

    .line 9
    invoke-virtual {v0}, Lt4/a0;->b()V

    return-void

    :catch_2
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lt4/z;->b:Lt4/a0;

    .line 11
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lt4/a0;->a(Ljava/lang/Exception;)V

    return-void

    .line 12
    :cond_1
    iget-object v1, p0, Lt4/z;->b:Lt4/a0;

    .line 13
    invoke-virtual {v1, v0}, Lt4/a0;->a(Ljava/lang/Exception;)V

    return-void
.end method
