.class public interface abstract Lcom/google/android/gms/internal/recaptcha/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract k(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/recaptcha/zzx;)V
    .param p2    # Lcom/google/android/gms/internal/recaptcha/zzx;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract r(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/recaptcha/RecaptchaResultData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
