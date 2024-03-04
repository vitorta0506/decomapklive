.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$146;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->controllerGetEditableWMItems(I)[Lorg/light/bean/WMElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$controllerInstanceId:I

.field final synthetic val$wmElements:[[Lorg/light/bean/WMElement;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Lorg/light/bean/WMElement;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$146;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$146;->val$controllerInstanceId:I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$146;->val$wmElements:[[Lorg/light/bean/WMElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$146;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$146;->val$controllerInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/Controller;

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$146;->val$wmElements:[[Lorg/light/bean/WMElement;

    invoke-virtual {v0}, Lorg/light/Controller;->getEditableWMItems()[Lorg/light/bean/WMElement;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 3
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$146;->val$wmElements:[[Lorg/light/bean/WMElement;

    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 4
    aget-object v0, v0, v2

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 5
    iget-object v4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$146;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    invoke-static {v4, v3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$900(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/light/bean/WMElement;->setInstanceId(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
