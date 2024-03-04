.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$204;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->performanceMonitorSetPerfEnable(ZZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$enable:Z

.field final synthetic val$english_Key:Z

.field final synthetic val$materialId:Ljava/lang/String;

.field final synthetic val$traceEnable:Z


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ZZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$204;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-boolean p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$204;->val$enable:Z

    iput-boolean p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$204;->val$traceEnable:Z

    iput-boolean p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$204;->val$english_Key:Z

    iput-object p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$204;->val$materialId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-boolean v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$204;->val$enable:Z

    iget-boolean v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$204;->val$traceEnable:Z

    iget-boolean v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$204;->val$english_Key:Z

    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$204;->val$materialId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/light/PerformanceMonitor;->setPerfEnable(ZZZLjava/lang/String;)V

    return-void
.end method
