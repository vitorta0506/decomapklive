.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$199;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->performanceMonitorSetBenchEnableWithThreshold(ZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$enable:Z

.field final synthetic val$threshold:F


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ZF)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$199;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-boolean p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$199;->val$enable:Z

    iput p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$199;->val$threshold:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$199;->val$enable:Z

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$199;->val$threshold:F

    invoke-static {v0, v1}, Lorg/light/PerformanceMonitor;->setBenchEnableWithThreshold(ZF)V

    return-void
.end method
