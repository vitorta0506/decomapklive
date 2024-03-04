.class public interface abstract Lorg/light/AIDLIExternalAudioProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/AIDLIExternalAudioProcessor$Stub;
    }
.end annotation


# virtual methods
.method public abstract process(Ljava/lang/String;Lorg/light/AudioFrame;)Lorg/light/AudioFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
