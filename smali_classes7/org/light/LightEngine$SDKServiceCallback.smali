.class public interface abstract Lorg/light/LightEngine$SDKServiceCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/light/LightEngine$SDKServiceRuntimeErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/LightEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SDKServiceCallback"
.end annotation


# virtual methods
.method public abstract onServiceCreateError(Ljava/lang/String;Z)V
.end method

.method public abstract onServiceStarted(I)V
.end method
