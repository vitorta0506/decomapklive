.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$127;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->controllerGetTextPlaceHolderByEntityId(II)[Lorg/light/TextPlaceHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$controllerInstanceId:I

.field final synthetic val$entityId:I

.field final synthetic val$holders:[[Lorg/light/TextPlaceHolder;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Lorg/light/TextPlaceHolder;I)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$127;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$127;->val$controllerInstanceId:I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$127;->val$holders:[[Lorg/light/TextPlaceHolder;

    iput p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$127;->val$entityId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$127;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$127;->val$controllerInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/Controller;

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$127;->val$holders:[[Lorg/light/TextPlaceHolder;

    iget v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$127;->val$entityId:I

    invoke-virtual {v0, v2}, Lorg/light/Controller;->getTextPlaceHolderByEntityId(I)[Lorg/light/TextPlaceHolder;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-void
.end method
