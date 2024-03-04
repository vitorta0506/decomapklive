.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->cameraControllerUpdateTouchEvent(IIJJLjava/util/List;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$action:I

.field final synthetic val$cameraControllerInstanceId:I

.field final synthetic val$downTime:J

.field final synthetic val$eventTime:J

.field final synthetic val$height:I

.field final synthetic val$points:Ljava/util/List;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IIJJLjava/util/List;II)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;->val$cameraControllerInstanceId:I

    iput p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;->val$action:I

    iput-wide p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;->val$downTime:J

    iput-wide p6, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;->val$eventTime:J

    iput-object p8, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;->val$points:Ljava/util/List;

    iput p9, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;->val$width:I

    iput p10, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;->val$cameraControllerInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/light/CameraController;

    .line 2
    iget v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;->val$action:I

    iget-wide v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;->val$downTime:J

    iget-wide v5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;->val$eventTime:J

    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;->val$points:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v8, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;->val$width:I

    iget v9, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;->val$height:I

    invoke-virtual/range {v1 .. v9}, Lorg/light/CameraController;->updateTouchEvent(IJJLjava/util/ArrayList;II)V

    return-void
.end method
