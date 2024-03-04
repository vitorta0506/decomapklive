.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$51$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/light/listener/OnTipsStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder$51;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$51;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$51;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$51$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$51;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tipsNeedHide(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$51$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$51;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$51;->val$tipsListener:Lorg/light/listener/AIDLOnTipsStatusListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/light/listener/AIDLOnTipsStatusListener;->tipsNeedHide(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteException:\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LightSDKService"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public tipsNeedShow(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$51$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$51;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$51;->val$tipsListener:Lorg/light/listener/AIDLOnTipsStatusListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/light/listener/AIDLOnTipsStatusListener;->tipsNeedShow(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteException:\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LightSDKService"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
