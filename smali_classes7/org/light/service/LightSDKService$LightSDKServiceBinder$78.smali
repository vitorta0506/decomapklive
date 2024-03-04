.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$78;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->lightAssetLoadFromString(Ljava/lang/String;Ljava/lang/String;I)Lorg/light/service/InstanceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$lightAsset:[Lorg/light/LightAsset;

.field final synthetic val$randomSeed:I

.field final synthetic val$templateJsonString:Ljava/lang/String;

.field final synthetic val$templatePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[Lorg/light/LightAsset;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$78;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$78;->val$lightAsset:[Lorg/light/LightAsset;

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$78;->val$templatePath:Ljava/lang/String;

    iput-object p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$78;->val$templateJsonString:Ljava/lang/String;

    iput p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$78;->val$randomSeed:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$78;->val$lightAsset:[Lorg/light/LightAsset;

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$78;->val$templatePath:Ljava/lang/String;

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$78;->val$templateJsonString:Ljava/lang/String;

    iget v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$78;->val$randomSeed:I

    invoke-static {v1, v2, v3}, Lorg/light/LightAsset;->LoadFromString(Ljava/lang/String;Ljava/lang/String;I)Lorg/light/LightAsset;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method
