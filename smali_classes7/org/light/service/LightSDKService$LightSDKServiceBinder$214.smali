.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$214;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->wmElementDoCheckIn(ILjava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$ret:[I

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$wmElementInstanceId:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$214;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$214;->val$wmElementInstanceId:I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$214;->val$ret:[I

    iput-object p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$214;->val$key:Ljava/lang/String;

    iput-object p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$214;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$214;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$214;->val$wmElementInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/bean/WMElement;

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$214;->val$ret:[I

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$214;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$214;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/light/bean/WMElement;->doCheckIn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    aput v0, v1, v2

    return-void
.end method
