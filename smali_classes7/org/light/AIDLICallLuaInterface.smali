.class public interface abstract Lorg/light/AIDLICallLuaInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/AIDLICallLuaInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract callLua(Ljava/lang/String;Ljava/lang/String;Lorg/light/LuaResultCallback;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
