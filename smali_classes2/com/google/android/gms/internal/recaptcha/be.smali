.class final Lcom/google/android/gms/internal/recaptcha/be;
.super Lcom/google/android/gms/internal/recaptcha/md;
.source "SourceFile"


# instance fields
.field private final c:Ljava/util/concurrent/Callable;

.field final synthetic d:Lcom/google/android/gms/internal/recaptcha/ce;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/ce;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/be;->d:Lcom/google/android/gms/internal/recaptcha/ce;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/md;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/be;->c:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/be;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/be;->c:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final f(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/be;->d:Lcom/google/android/gms/internal/recaptcha/ce;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/cb;->J(Ljava/lang/Throwable;)Z

    return-void
.end method

.method final g(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/be;->d:Lcom/google/android/gms/internal/recaptcha/ce;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/cb;->H(Ljava/lang/Object;)Z

    return-void
.end method

.method final h()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/be;->d:Lcom/google/android/gms/internal/recaptcha/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/cb;->isDone()Z

    move-result v0

    return v0
.end method
