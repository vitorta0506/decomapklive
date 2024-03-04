.class abstract Lcom/google/android/gms/internal/recaptcha/ic;
.super Lcom/google/android/gms/internal/recaptcha/md;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/md<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lcom/google/android/gms/internal/recaptcha/jc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/jc;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/ic;->d:Lcom/google/android/gms/internal/recaptcha/jc;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/md;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/ic;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method final f(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ic;->d:Lcom/google/android/gms/internal/recaptcha/jc;

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/recaptcha/jc;->k0(Lcom/google/android/gms/internal/recaptcha/jc;Lcom/google/android/gms/internal/recaptcha/ic;)Lcom/google/android/gms/internal/recaptcha/ic;

    .line 2
    instance-of v0, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ic;->d:Lcom/google/android/gms/internal/recaptcha/jc;

    .line 3
    check-cast p1, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/cb;->J(Ljava/lang/Throwable;)Z

    return-void

    .line 4
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/ic;->d:Lcom/google/android/gms/internal/recaptcha/jc;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/recaptcha/cb;->cancel(Z)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ic;->d:Lcom/google/android/gms/internal/recaptcha/jc;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/cb;->J(Ljava/lang/Throwable;)Z

    return-void
.end method

.method final g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ic;->d:Lcom/google/android/gms/internal/recaptcha/jc;

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/recaptcha/jc;->k0(Lcom/google/android/gms/internal/recaptcha/jc;Lcom/google/android/gms/internal/recaptcha/ic;)Lcom/google/android/gms/internal/recaptcha/ic;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ic;->j(Ljava/lang/Object;)V

    return-void
.end method

.method final h()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ic;->d:Lcom/google/android/gms/internal/recaptcha/jc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/cb;->isDone()Z

    move-result v0

    return v0
.end method

.method abstract j(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method final k()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ic;->c:Ljava/util/concurrent/Executor;

    .line 1
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/ic;->d:Lcom/google/android/gms/internal/recaptcha/jc;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/recaptcha/cb;->J(Ljava/lang/Throwable;)Z

    return-void
.end method
