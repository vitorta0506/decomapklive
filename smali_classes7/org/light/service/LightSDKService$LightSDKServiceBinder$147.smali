.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$147;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->controllerGetBoundsByKey(ILjava/lang/String;)Landroid/graphics/RectF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$controllerInstanceId:I

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$rect:[Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$147;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$147;->val$controllerInstanceId:I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$147;->val$rect:[Landroid/graphics/RectF;

    iput-object p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$147;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$147;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$147;->val$controllerInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/Controller;

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$147;->val$rect:[Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$147;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/light/Controller;->getBoundsByKey(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-void
.end method
