.class public final Lcom/google/android/gms/internal/recaptcha/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Thread;

.field private static volatile b:Landroid/os/Handler;


# direct methods
.method public static a()Landroid/os/Handler;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/h2;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/h2;->b:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/h2;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static b()Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/h2;->a:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/h2;->a:Ljava/lang/Thread;

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/recaptcha/h2;->a:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
