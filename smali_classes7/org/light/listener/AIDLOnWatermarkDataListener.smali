.class public interface abstract Lorg/light/listener/AIDLOnWatermarkDataListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/listener/AIDLOnWatermarkDataListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract getData(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
