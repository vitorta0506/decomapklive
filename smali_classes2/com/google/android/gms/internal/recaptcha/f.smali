.class public interface abstract Lcom/google/android/gms/internal/recaptcha/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract m0(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/recaptcha/zzai;)V
    .param p2    # Lcom/google/android/gms/internal/recaptcha/zzai;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract z0(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/recaptcha/RecaptchaHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
