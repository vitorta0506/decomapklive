.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$107;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->lightAssetDataContextMake(II)Lorg/light/service/InstanceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$dataContext:[Lorg/light/lightAssetKit/LightAssetDataContext;

.field final synthetic val$lightAssetInstanceId:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Lorg/light/lightAssetKit/LightAssetDataContext;I)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$107;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$107;->val$lightAssetInstanceId:I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$107;->val$dataContext:[Lorg/light/lightAssetKit/LightAssetDataContext;

    iput p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$107;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$107;->val$lightAssetInstanceId:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$107;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    invoke-static {v1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/LightAsset;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$107;->val$dataContext:[Lorg/light/lightAssetKit/LightAssetDataContext;

    const/4 v2, 0x0

    invoke-static {}, Lorg/light/lightAssetKit/LightAssetDataType;->values()[Lorg/light/lightAssetKit/LightAssetDataType;

    move-result-object v3

    iget v4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$107;->val$type:I

    aget-object v3, v3, v4

    invoke-static {v0, v3}, Lorg/light/lightAssetKit/LightAssetDataContext;->make(Lorg/light/LightAsset;Lorg/light/lightAssetKit/LightAssetDataType;)Lorg/light/lightAssetKit/LightAssetDataContext;

    move-result-object v0

    aput-object v0, v1, v2

    return-void
.end method
