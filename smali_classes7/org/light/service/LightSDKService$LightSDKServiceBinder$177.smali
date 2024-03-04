.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$177;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->movieControllerReplaceLUTAsset(ILjava/lang/String;Lorg/light/LUTAsset;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$lutAsset:Lorg/light/LUTAsset;

.field final synthetic val$movieControllerInstanceId:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;Lorg/light/LUTAsset;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$177;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$177;->val$movieControllerInstanceId:I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$177;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$177;->val$lutAsset:Lorg/light/LUTAsset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$177;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$177;->val$movieControllerInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/MovieController;

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$177;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$177;->val$lutAsset:Lorg/light/LUTAsset;

    invoke-virtual {v0, v1, v2}, Lorg/light/MovieController;->replaceLUTAsset(Ljava/lang/String;Lorg/light/LUTAsset;)V

    return-void
.end method
