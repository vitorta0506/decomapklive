.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->lightLogUtilSetLightLogger(Lorg/light/listener/AIDLILightLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$logger:Lorg/light/listener/AIDLILightLogger;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Lorg/light/listener/AIDLILightLogger;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;->val$logger:Lorg/light/listener/AIDLILightLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;->val$logger:Lorg/light/listener/AIDLILightLogger;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210$1;

    invoke-direct {v0, p0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210$1;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;)V

    :goto_0
    invoke-static {v0}, Lorg/light/utils/LightLogUtil;->setLightLogger(Lorg/light/utils/ILightLogger;)V

    return-void
.end method
