.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$185;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->lightEngineInitAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$appEntry:Ljava/lang/String;

.field final synthetic val$appID:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$ret:[I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$185;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$185;->val$ret:[I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$185;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$185;->val$appID:Ljava/lang/String;

    iput-object p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$185;->val$appEntry:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$185;->val$ret:[I

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$185;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v1, v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-virtual {v1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$185;->val$path:Ljava/lang/String;

    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$185;->val$appID:Ljava/lang/String;

    iget-object v4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$185;->val$appEntry:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lorg/light/LightEngine;->initAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    return-void
.end method
