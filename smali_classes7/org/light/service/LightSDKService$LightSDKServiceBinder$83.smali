.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$83;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->lightAssetGetLUTPlaceHolders(I)[Lorg/light/LUTPlaceHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$holders:[[Lorg/light/LUTPlaceHolder;

.field final synthetic val$lightAssetInstanceId:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Lorg/light/LUTPlaceHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$83;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$83;->val$lightAssetInstanceId:I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$83;->val$holders:[[Lorg/light/LUTPlaceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$83;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$83;->val$lightAssetInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/LightAsset;

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$83;->val$holders:[[Lorg/light/LUTPlaceHolder;

    invoke-virtual {v0}, Lorg/light/LightAsset;->getLUTPlaceHolders()[Lorg/light/LUTPlaceHolder;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-void
.end method
