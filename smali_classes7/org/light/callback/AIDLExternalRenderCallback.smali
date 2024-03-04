.class public interface abstract Lorg/light/callback/AIDLExternalRenderCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/callback/AIDLExternalRenderCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract afterRender(Lorg/light/bean/Texture;Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInputSurface(II)Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRender(Lorg/light/bean/Texture;Ljava/lang/String;Ljava/lang/String;Lorg/light/bean/Texture;)Lorg/light/bean/Texture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
