.class public interface abstract Lorg/light/callback/AIDLWillReadSampleCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/callback/AIDLWillReadSampleCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract beforeReadSample()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
