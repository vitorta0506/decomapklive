.class final Lt4/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lt4/g;

.field final synthetic b:Lt4/o;


# direct methods
.method constructor <init>(Lt4/o;Lt4/g;)V
    .locals 0

    iput-object p1, p0, Lt4/n;->b:Lt4/o;

    iput-object p2, p0, Lt4/n;->a:Lt4/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt4/n;->a:Lt4/g;

    invoke-virtual {v0}, Lt4/g;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt4/n;->b:Lt4/o;

    invoke-static {v0}, Lt4/o;->b(Lt4/o;)Lt4/g0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lt4/g0;->s()Z

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lt4/n;->b:Lt4/o;

    invoke-static {v0}, Lt4/o;->a(Lt4/o;)Lt4/a;

    move-result-object v0

    iget-object v1, p0, Lt4/n;->a:Lt4/g;

    .line 3
    invoke-interface {v0, v1}, Lt4/a;->a(Lt4/g;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lt4/n;->b:Lt4/o;

    invoke-static {v1}, Lt4/o;->b(Lt4/o;)Lt4/g0;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Lt4/g0;->r(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lt4/n;->b:Lt4/o;

    invoke-static {v1}, Lt4/o;->b(Lt4/o;)Lt4/g0;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lt4/g0;->q(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lt4/n;->b:Lt4/o;

    invoke-static {v1}, Lt4/o;->b(Lt4/o;)Lt4/g0;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lt4/g0;->q(Ljava/lang/Exception;)V

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lt4/n;->b:Lt4/o;

    invoke-static {v1}, Lt4/o;->b(Lt4/o;)Lt4/g0;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Lt4/g0;->q(Ljava/lang/Exception;)V

    return-void
.end method
