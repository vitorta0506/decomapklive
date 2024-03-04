.class public final Lcom/google/android/gms/internal/recaptcha/q6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/Closeable;


# instance fields
.field private a:Lcom/google/android/gms/internal/recaptcha/u6;

.field private b:Lcom/google/android/gms/internal/recaptcha/u6;

.field private final c:Z

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/u6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/q6;->a:Lcom/google/android/gms/internal/recaptcha/u6;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/q6;->b:Lcom/google/android/gms/internal/recaptcha/u6;

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/h2;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/recaptcha/q6;->c:Z

    return-void
.end method

.method private final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/q6;->d:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/q6;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/q6;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/h2;->b()Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/q6;->a:Lcom/google/android/gms/internal/recaptcha/u6;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/recaptcha/nd;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "T::",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TV;>;>(TT;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/q6;->d:Z

    if-nez v0, :cond_1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/q6;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/q6;->e:Z

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/recaptcha/nd;->F(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Signal is already attached to future"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Span was already closed. Did you attach it to a future after calling Tracer.endSpan()?"

    .line 7
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/q6;->b:Lcom/google/android/gms/internal/recaptcha/u6;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/recaptcha/q6;->b:Lcom/google/android/gms/internal/recaptcha/u6;

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/recaptcha/q6;->e:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/recaptcha/q6;->d:Z

    if-nez v1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/q6;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/d7;->f(Lcom/google/android/gms/internal/recaptcha/u6;)V

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Span was already closed!"

    .line 4
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/d7;->f(Lcom/google/android/gms/internal/recaptcha/u6;)V

    .line 6
    throw v1
.end method

.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/q6;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/q6;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/q6;->c()V

    return-void

    .line 2
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/p6;->a:Lcom/google/android/gms/internal/recaptcha/p6;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/h2;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
