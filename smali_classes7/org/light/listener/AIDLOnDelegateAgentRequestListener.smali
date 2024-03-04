.class public interface abstract Lorg/light/listener/AIDLOnDelegateAgentRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/listener/AIDLOnDelegateAgentRequestListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract OnDelegateAgentRequest(Lorg/light/bean/LightDelegateAgentRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
