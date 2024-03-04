.class final Lcom/google/android/gms/internal/recaptcha/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/android/gms/internal/recaptcha/yc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/yc<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/recaptcha/yc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lcom/google/android/gms/internal/recaptcha/yc<",
            "-TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/ad;->a:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/ad;->b:Lcom/google/android/gms/internal/recaptcha/yc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ad;->a:Ljava/util/concurrent/Future;

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/recaptcha/de;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/de;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/ee;->a(Lcom/google/android/gms/internal/recaptcha/de;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/ad;->b:Lcom/google/android/gms/internal/recaptcha/yc;

    .line 5
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/recaptcha/yc;->a(Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ad;->a:Ljava/util/concurrent/Future;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/dd;->l(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/ad;->b:Lcom/google/android/gms/internal/recaptcha/yc;

    .line 8
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/recaptcha/yc;->b(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 9
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/ad;->b:Lcom/google/android/gms/internal/recaptcha/yc;

    .line 10
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/recaptcha/yc;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/ad;->b:Lcom/google/android/gms/internal/recaptcha/yc;

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/recaptcha/yc;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/u7;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/t7;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/ad;->b:Lcom/google/android/gms/internal/recaptcha/yc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/t7;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/t7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/t7;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
