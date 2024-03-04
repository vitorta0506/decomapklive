.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$125;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->controllerSetMaterialClipAssets(ILjava/lang/String;Landroid/os/Bundle;Lorg/light/AIDLFaceDetectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$callback:Lorg/light/AIDLFaceDetectCallback;

.field final synthetic val$clipAssets:Landroid/os/Bundle;

.field final synthetic val$controllerInstanceId:I

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILandroid/os/Bundle;Ljava/lang/String;Lorg/light/AIDLFaceDetectCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$125;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$125;->val$controllerInstanceId:I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$125;->val$clipAssets:Landroid/os/Bundle;

    iput-object p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$125;->val$key:Ljava/lang/String;

    iput-object p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$125;->val$callback:Lorg/light/AIDLFaceDetectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$125;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$125;->val$controllerInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/Controller;

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$125;->val$clipAssets:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 4
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$125;->val$clipAssets:Landroid/os/Bundle;

    const-string v3, "ClipAsset"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    array-length v3, v1

    new-array v4, v3, [Lorg/light/ClipAsset;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    .line 6
    aget-object v6, v1, v5

    check-cast v6, Lorg/light/ClipAsset;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 7
    :cond_1
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$125;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$125;->val$callback:Lorg/light/AIDLFaceDetectCallback;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$125$1;

    invoke-direct {v2, p0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$125$1;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$125;)V

    :goto_1
    invoke-virtual {v0, v1, v4, v2}, Lorg/light/Controller;->setMaterialClipAssets(Ljava/lang/String;[Lorg/light/ClipAsset;Lorg/light/FaceDetectCallback;)V

    return-void
.end method
