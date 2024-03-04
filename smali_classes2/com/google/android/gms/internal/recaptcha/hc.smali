.class final Lcom/google/android/gms/internal/recaptcha/hc;
.super Lcom/google/android/gms/internal/recaptcha/ic;
.source "SourceFile"


# instance fields
.field private final e:Ljava/util/concurrent/Callable;

.field final synthetic f:Lcom/google/android/gms/internal/recaptcha/jc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/jc;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/hc;->f:Lcom/google/android/gms/internal/recaptcha/jc;

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/recaptcha/ic;-><init>(Lcom/google/android/gms/internal/recaptcha/jc;Ljava/util/concurrent/Executor;)V

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/hc;->e:Ljava/util/concurrent/Callable;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/hc;->e:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/hc;->e:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final j(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/hc;->f:Lcom/google/android/gms/internal/recaptcha/jc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/cb;->H(Ljava/lang/Object;)Z

    return-void
.end method
