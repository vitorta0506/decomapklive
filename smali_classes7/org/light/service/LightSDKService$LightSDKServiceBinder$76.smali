.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$76;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->lightAssetLoad(Ljava/lang/String;I)Lorg/light/service/InstanceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$lightAsset:[Lorg/light/LightAsset;

.field final synthetic val$randomSeed:I

.field final synthetic val$templatePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[Lorg/light/LightAsset;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$76;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$76;->val$lightAsset:[Lorg/light/LightAsset;

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$76;->val$templatePath:Ljava/lang/String;

    iput p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$76;->val$randomSeed:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$76;->val$lightAsset:[Lorg/light/LightAsset;

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$76;->val$templatePath:Ljava/lang/String;

    iget v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$76;->val$randomSeed:I

    invoke-static {v1, v2}, Lorg/light/LightAsset;->Load(Ljava/lang/String;I)Lorg/light/LightAsset;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method
