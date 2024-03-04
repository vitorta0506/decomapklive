.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->ueUtilSetOnUE4InitFinishListener(Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$listener:Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$6;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$6;->val$listener:Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$6;->val$listener:Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;

    invoke-static {v0}, Lorg/light/UEUtil;->_setOnUE4InitFinishListener(Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V

    return-void
.end method
