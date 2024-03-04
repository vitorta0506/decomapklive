.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$208;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->lightReportManagerLaunchFromApp(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$app:Ljava/lang/String;

.field final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$208;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$208;->val$app:Ljava/lang/String;

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$208;->val$event:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$208;->val$app:Ljava/lang/String;

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$208;->val$event:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/light/report/LightReportManager;->LaunchFromApp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
