.class public interface abstract Lorg/light/AIDLClipSourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/AIDLClipSourceFactory$Stub;
    }
.end annotation


# virtual methods
.method public abstract createAudioReader(Ljava/lang/String;)Lorg/light/AIDLAudioReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createVideoReader(Ljava/lang/String;)Lorg/light/AIDLVideoReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
