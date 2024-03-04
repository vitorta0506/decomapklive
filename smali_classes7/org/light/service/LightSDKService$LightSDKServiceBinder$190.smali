.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$190;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->lightEngineSetTemplateAssets(I[Lorg/light/TemplateClip;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$assets:[Lorg/light/TemplateClip;

.field final synthetic val$controllerInstancesIds:[[I

.field final synthetic val$lightEngineInstanceId:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[Lorg/light/TemplateClip;I[[I)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$190;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$190;->val$assets:[Lorg/light/TemplateClip;

    iput p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$190;->val$lightEngineInstanceId:I

    iput-object p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$190;->val$controllerInstancesIds:[[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$190;->val$assets:[Lorg/light/TemplateClip;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 3
    iget-object v5, v4, Lorg/light/TemplateClip;->asset:Lorg/light/LightAsset;

    if-eqz v5, :cond_0

    .line 4
    iget-object v6, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$190;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    invoke-virtual {v5}, Lorg/light/LightAsset;->getInstanceId()I

    move-result v5

    invoke-static {v6, v5}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/light/LightAsset;

    iput-object v5, v4, Lorg/light/TemplateClip;->asset:Lorg/light/LightAsset;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$190;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$190;->val$lightEngineInstanceId:I

    invoke-static {v0, v2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/LightEngine;

    .line 6
    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$190;->val$assets:[Lorg/light/TemplateClip;

    invoke-virtual {v0, v2}, Lorg/light/LightEngine;->setTemplateAssets([Lorg/light/TemplateClip;)[Lorg/light/Controller;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$190;->val$controllerInstancesIds:[[I

    array-length v3, v0

    new-array v3, v3, [I

    aput-object v3, v2, v1

    const/4 v2, 0x0

    .line 8
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 9
    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$190;->val$controllerInstancesIds:[[I

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$190;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    aget-object v5, v0, v2

    invoke-static {v4, v5}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$900(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
