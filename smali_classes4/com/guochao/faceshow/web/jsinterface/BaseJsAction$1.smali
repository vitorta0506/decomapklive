.class Lcom/guochao/faceshow/web/jsinterface/BaseJsAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->goLive(Ljava/lang/Object;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;

.field final synthetic val$arg:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction$1;->this$0:Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;

    iput-object p2, p0, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction$1;->val$arg:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction$1;->val$arg:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "liveId"

    .line 3
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/LiveInfoUtils;->getLiveInfoAndJumpIfNeed(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
