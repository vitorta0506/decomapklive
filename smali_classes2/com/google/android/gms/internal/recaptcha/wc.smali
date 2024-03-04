.class public abstract Lcom/google/android/gms/internal/recaptcha/wc;
.super Lcom/google/android/gms/internal/recaptcha/uc;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/nd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/uc<",
        "TV;>;",
        "Lcom/google/android/gms/internal/recaptcha/nd<",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/uc;-><init>()V

    return-void
.end method


# virtual methods
.method public final F(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/wc;->e()Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/nd;->F(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected abstract e()Lcom/google/android/gms/internal/recaptcha/nd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "+TV;>;"
        }
    .end annotation
.end method
