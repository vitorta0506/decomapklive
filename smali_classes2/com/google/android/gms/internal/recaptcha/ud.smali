.class public final Lcom/google/android/gms/internal/recaptcha/ud;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/recaptcha/od;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/recaptcha/od;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/recaptcha/od;

    goto :goto_1

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/td;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/recaptcha/td;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/qd;

    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/recaptcha/qd;-><init>(Ljava/util/concurrent/ExecutorService;)V

    :goto_0
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/kc;->a:Lcom/google/android/gms/internal/recaptcha/kc;

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/xd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/recaptcha/xd;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/recaptcha/cb;)Ljava/util/concurrent/Executor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/recaptcha/cb<",
            "*>;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/kc;->a:Lcom/google/android/gms/internal/recaptcha/kc;

    if-ne p0, v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/pd;

    .line 4
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/pd;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/recaptcha/cb;)V

    return-object v0
.end method
