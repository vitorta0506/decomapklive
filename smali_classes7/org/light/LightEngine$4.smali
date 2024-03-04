.class final Lorg/light/LightEngine$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/LightEngine;->startSDKService(Landroid/content/Context;Landroid/os/Bundle;Lorg/light/LightEngine$SDKServiceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lorg/light/LightEngine$SDKServiceCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Landroid/os/Bundle;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Lorg/light/LightEngine$SDKServiceCallback;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lorg/light/LightEngine$4;->val$data:Landroid/os/Bundle;

    iput-object p2, p0, Lorg/light/LightEngine$4;->val$callback:Lorg/light/LightEngine$SDKServiceCallback;

    iput-object p3, p0, Lorg/light/LightEngine$4;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lorg/light/LightEngine$4;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/LightEngine$4;->val$data:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->checkCrossProcessModeAvailable(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LightEngine"

    const-string v1, "startSDKService NativeBuffer not Available"

    .line 2
    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lorg/light/LightEngine$4;->val$callback:Lorg/light/LightEngine$SDKServiceCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "NativeBuffer not Available"

    .line 4
    invoke-interface {v0, v2, v1}, Lorg/light/LightEngine$SDKServiceCallback;->onServiceCreateError(Ljava/lang/String;Z)V

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/light/LightEngine$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lorg/light/LightEngine$4;->val$data:Landroid/os/Bundle;

    iget-object v2, p0, Lorg/light/LightEngine$4;->val$callback:Lorg/light/LightEngine$SDKServiceCallback;

    invoke-static {v0, v1, v2}, Lorg/light/LightEngine;->access$600(Landroid/content/Context;Landroid/os/Bundle;Lorg/light/LightEngine$SDKServiceCallback;)V

    .line 6
    iget-object v0, p0, Lorg/light/LightEngine$4;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method
