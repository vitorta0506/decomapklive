.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$108;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->lightAssetDataContextAddLightAsset(III)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$lightAssetDataContextInstanceId:I

.field final synthetic val$lightAssetInstanceId:I

.field final synthetic val$mergeType:I

.field final synthetic val$ret:[Z


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;II[ZI)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$108;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$108;->val$lightAssetDataContextInstanceId:I

    iput p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$108;->val$lightAssetInstanceId:I

    iput-object p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$108;->val$ret:[Z

    iput p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$108;->val$mergeType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$108;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$108;->val$lightAssetDataContextInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/lightAssetKit/LightAssetDataContext;

    .line 2
    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$108;->val$lightAssetInstanceId:I

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$108;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    invoke-static {v2, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/light/LightAsset;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$108;->val$ret:[Z

    const/4 v3, 0x0

    invoke-static {}, Lorg/light/lightAssetKit/LightAssetDataMergeType;->values()[Lorg/light/lightAssetKit/LightAssetDataMergeType;

    move-result-object v4

    iget v5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$108;->val$mergeType:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v1, v4}, Lorg/light/lightAssetKit/LightAssetDataContext;->addLightAsset(Lorg/light/LightAsset;Lorg/light/lightAssetKit/LightAssetDataMergeType;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    aput-boolean v0, v2, v3

    return-void
.end method
