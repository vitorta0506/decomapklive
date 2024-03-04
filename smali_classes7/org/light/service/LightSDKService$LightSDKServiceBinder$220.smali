.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$220;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->debugUtilsSetImageDebugInfo(ZLjava/lang/String;ZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$debugAllImage:Z

.field final synthetic val$debugParam:Z

.field final synthetic val$debugTree:Z

.field final synthetic val$enableDebug:Z

.field final synthetic val$fileNameIncludeTimestamp:Z

.field final synthetic val$resultDir:Ljava/lang/String;

.field final synthetic val$sdkConfig:Z


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ZLjava/lang/String;ZZZZZ)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$220;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-boolean p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$220;->val$enableDebug:Z

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$220;->val$resultDir:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$220;->val$fileNameIncludeTimestamp:Z

    iput-boolean p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$220;->val$debugAllImage:Z

    iput-boolean p6, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$220;->val$debugParam:Z

    iput-boolean p7, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$220;->val$debugTree:Z

    iput-boolean p8, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$220;->val$sdkConfig:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-boolean v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$220;->val$enableDebug:Z

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$220;->val$resultDir:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$220;->val$fileNameIncludeTimestamp:Z

    iget-boolean v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$220;->val$debugAllImage:Z

    iget-boolean v4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$220;->val$debugParam:Z

    iget-boolean v5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$220;->val$debugTree:Z

    iget-boolean v6, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$220;->val$sdkConfig:Z

    invoke-static/range {v0 .. v6}, Lorg/light/DebugUtils;->setImageDebugInfo(ZLjava/lang/String;ZZZZZ)V

    return-void
.end method
