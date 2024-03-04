.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->configRegisterFont(Lorg/light/FontAsset;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$fontAsset:Lorg/light/FontAsset;

.field final synthetic val$fontPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Lorg/light/FontAsset;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$54;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$54;->val$fontAsset:Lorg/light/FontAsset;

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$54;->val$fontPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$54;->val$fontAsset:Lorg/light/FontAsset;

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$54;->val$fontPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/light/Config;->registerFont(Lorg/light/FontAsset;Ljava/lang/String;)V

    return-void
.end method
