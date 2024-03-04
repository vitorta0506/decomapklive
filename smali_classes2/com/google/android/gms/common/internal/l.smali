.class public interface abstract Lcom/google/android/gms/common/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract j0(Lcom/google/android/gms/common/internal/k;Lcom/google/android/gms/common/internal/GetServiceRequest;)V
    .param p1    # Lcom/google/android/gms/common/internal/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/internal/GetServiceRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
