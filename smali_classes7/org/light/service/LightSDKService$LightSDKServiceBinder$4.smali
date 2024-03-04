.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->ueUtilStartUE4(JIILorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$contextHandle:J

.field final synthetic val$listener:Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;

.field final synthetic val$previewHeight:I

.field final synthetic val$previewWidth:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;JIILorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$4;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-wide p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$4;->val$contextHandle:J

    iput p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$4;->val$previewWidth:I

    iput p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$4;->val$previewHeight:I

    iput-object p6, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$4;->val$listener:Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-wide v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$4;->val$contextHandle:J

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$4;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v2, v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-virtual {v2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$4;->val$previewWidth:I

    iget v4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$4;->val$previewHeight:I

    iget-object v5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$4;->val$listener:Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;

    invoke-static/range {v0 .. v5}, Lorg/light/UEUtil;->_startUE4(JLandroid/content/Context;IILorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V

    return-void
.end method
