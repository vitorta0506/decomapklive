.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->configGetAIData(I[Ljava/lang/String;I)Lorg/light/bean/LightAIDataWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$configInstanceId:I

.field final synthetic val$dataType:I

.field final synthetic val$keys:[Ljava/lang/String;

.field final synthetic val$lightAIDataWrapper:[Lorg/light/bean/LightAIDataWrapper;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Lorg/light/bean/LightAIDataWrapper;[Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$47;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$47;->val$configInstanceId:I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$47;->val$lightAIDataWrapper:[Lorg/light/bean/LightAIDataWrapper;

    iput-object p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$47;->val$keys:[Ljava/lang/String;

    iput p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$47;->val$dataType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$47;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$47;->val$configInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/Config;

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$47;->val$lightAIDataWrapper:[Lorg/light/bean/LightAIDataWrapper;

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$47;->val$keys:[Ljava/lang/String;

    iget v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$47;->val$dataType:I

    invoke-virtual {v0, v2, v3}, Lorg/light/Config;->getAIData([Ljava/lang/String;I)Lorg/light/bean/LightAIDataWrapper;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-void
.end method
