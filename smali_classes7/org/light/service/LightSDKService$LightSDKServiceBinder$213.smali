.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$213;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->wmElementConstructor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$elementId:Ljava/lang/String;

.field final synthetic val$instanceId:[I

.field final synthetic val$materialId:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$213;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$213;->val$instanceId:[I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$213;->val$materialId:Ljava/lang/String;

    iput-object p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$213;->val$elementId:Ljava/lang/String;

    iput-object p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$213;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$213;->val$instanceId:[I

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$213;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    new-instance v2, Lorg/light/bean/WMElement;

    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$213;->val$materialId:Ljava/lang/String;

    iget-object v4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$213;->val$elementId:Ljava/lang/String;

    iget-object v5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$213;->val$type:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lorg/light/bean/WMElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$900(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    return-void
.end method
