.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$172;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->movieControllerSetOriginVolume(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$movieControllerInstanceId:I

.field final synthetic val$volume:F


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IF)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$172;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$172;->val$movieControllerInstanceId:I

    iput p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$172;->val$volume:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$172;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$172;->val$movieControllerInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/MovieController;

    .line 2
    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$172;->val$volume:F

    invoke-virtual {v0, v1}, Lorg/light/MovieController;->setOriginVolume(F)V

    return-void
.end method
