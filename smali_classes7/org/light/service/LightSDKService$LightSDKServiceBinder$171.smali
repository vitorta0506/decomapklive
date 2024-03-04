.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$171;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->movieControllerSetClipAssets(ILandroid/os/Bundle;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$backgroundEffectPath:Ljava/lang/String;

.field final synthetic val$clipAssets:Landroid/os/Bundle;

.field final synthetic val$modifyClipsDuration:Z

.field final synthetic val$movieControllerInstanceId:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILandroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$171;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$171;->val$movieControllerInstanceId:I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$171;->val$clipAssets:Landroid/os/Bundle;

    iput-object p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$171;->val$backgroundEffectPath:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$171;->val$modifyClipsDuration:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$171;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$171;->val$movieControllerInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/MovieController;

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$171;->val$clipAssets:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 4
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$171;->val$clipAssets:Landroid/os/Bundle;

    const-string v2, "ClipAsset"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    array-length v2, v1

    new-array v3, v2, [Lorg/light/ClipAsset;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 6
    aget-object v5, v1, v4

    check-cast v5, Lorg/light/ClipAsset;

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7
    :cond_1
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$171;->val$backgroundEffectPath:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$171;->val$modifyClipsDuration:Z

    invoke-virtual {v0, v3, v1, v2}, Lorg/light/MovieController;->setClipAssets([Lorg/light/ClipAsset;Ljava/lang/String;Z)V

    return-void
.end method
