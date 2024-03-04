.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$205;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->lightReportManagerReportOutsideData(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$reportItems:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$205;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$205;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$205;->val$reportItems:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$205;->val$event:Ljava/lang/String;

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$205;->val$reportItems:Landroid/os/Bundle;

    invoke-static {v1}, Lorg/light/utils/LightDataUtils;->bundle2HashMap(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/report/LightReportManager;->reportOutsideData(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
