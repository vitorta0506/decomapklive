.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$174;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->movieControllerGetClipInfos(I)[Lorg/light/ClipInfoArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$movieControllerInstanceId:I

.field final synthetic val$ret:[[Lorg/light/ClipInfoArray;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Lorg/light/ClipInfoArray;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$174;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$174;->val$movieControllerInstanceId:I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$174;->val$ret:[[Lorg/light/ClipInfoArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$174;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$174;->val$movieControllerInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/MovieController;

    .line 2
    invoke-virtual {v0}, Lorg/light/MovieController;->getClipInfos()[[Lorg/light/ClipInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$174;->val$ret:[[Lorg/light/ClipInfoArray;

    array-length v2, v0

    new-array v2, v2, [Lorg/light/ClipInfoArray;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$174;->val$ret:[[Lorg/light/ClipInfoArray;

    aget-object v2, v2, v3

    new-instance v4, Lorg/light/ClipInfoArray;

    invoke-direct {v4}, Lorg/light/ClipInfoArray;-><init>()V

    aput-object v4, v2, v1

    .line 6
    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$174;->val$ret:[[Lorg/light/ClipInfoArray;

    aget-object v2, v2, v3

    aget-object v2, v2, v1

    aget-object v4, v0, v1

    iput-object v4, v2, Lorg/light/ClipInfoArray;->infoArray:[Lorg/light/ClipInfo;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
