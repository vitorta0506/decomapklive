.class final Lcom/google/android/gms/internal/recaptcha/j5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/a4;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/recaptcha/k5;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/k5;Lcom/google/android/gms/internal/recaptcha/f5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/j5;->a:Lcom/google/android/gms/internal/recaptcha/k5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/dc;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/j5;->a:Lcom/google/android/gms/internal/recaptcha/k5;

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/k5;->c(Lcom/google/android/gms/internal/recaptcha/k5;)Lcom/google/android/gms/internal/recaptcha/m6;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/m6;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/j5;->a:Lcom/google/android/gms/internal/recaptcha/k5;

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/k5;->b(Lcom/google/android/gms/internal/recaptcha/k5;)Lcom/google/android/gms/internal/recaptcha/e6;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/e6;->b()Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/dd;->h(Lcom/google/android/gms/internal/recaptcha/nd;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/i5;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/i5;-><init>(Lcom/google/android/gms/internal/recaptcha/j5;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)V

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/y6;->c(Lcom/google/android/gms/internal/recaptcha/dc;)Lcom/google/android/gms/internal/recaptcha/dc;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 5
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/dd;->k(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method
