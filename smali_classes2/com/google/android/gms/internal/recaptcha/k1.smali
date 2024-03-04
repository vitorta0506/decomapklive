.class public final Lcom/google/android/gms/internal/recaptcha/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()Lcom/google/android/gms/internal/recaptcha/j1;
    .locals 1

    .line 1
    invoke-static {}, Le4/m;->h()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/i1;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/i1;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/l1;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/l1;-><init>()V

    return-object v0
.end method
