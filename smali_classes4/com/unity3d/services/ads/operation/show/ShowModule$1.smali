.class Lcom/unity3d/services/ads/operation/show/ShowModule$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/services/core/webview/bridge/invocation/IWebViewBridgeInvocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/operation/show/ShowModule;->executeAdOperation(Lcom/unity3d/services/core/webview/bridge/IWebViewBridgeInvoker;Lcom/unity3d/services/ads/operation/show/ShowOperationState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/services/ads/operation/show/ShowModule;

.field final synthetic val$state:Lcom/unity3d/services/ads/operation/show/ShowOperationState;


# direct methods
.method constructor <init>(Lcom/unity3d/services/ads/operation/show/ShowModule;Lcom/unity3d/services/ads/operation/show/ShowOperationState;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/ads/operation/show/ShowModule$1;->this$0:Lcom/unity3d/services/ads/operation/show/ShowModule;

    iput-object p2, p0, Lcom/unity3d/services/ads/operation/show/ShowModule$1;->val$state:Lcom/unity3d/services/ads/operation/show/ShowOperationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/CallbackStatus;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/operation/show/ShowModule$1;->this$0:Lcom/unity3d/services/ads/operation/show/ShowModule;

    iget-object v1, p0, Lcom/unity3d/services/ads/operation/show/ShowModule$1;->val$state:Lcom/unity3d/services/ads/operation/show/ShowOperationState;

    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    invoke-static {v0, v1, p1, v2}, Lcom/unity3d/services/ads/operation/show/ShowModule;->access$000(Lcom/unity3d/services/ads/operation/show/ShowModule;Lcom/unity3d/services/ads/operation/show/ShowOperationState;Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;)V

    if-nez p2, :cond_0

    const-string p1, "invocationFailure"

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/unity3d/services/ads/operation/show/ShowModule$1;->this$0:Lcom/unity3d/services/ads/operation/show/ShowModule;

    invoke-static {p2}, Lcom/unity3d/services/ads/operation/show/ShowModule;->access$100(Lcom/unity3d/services/ads/operation/show/ShowModule;)Lcom/unity3d/services/core/request/metrics/ISDKMetricSender;

    move-result-object p2

    sget-object v0, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;->native_show_callback_error:Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    new-instance v1, Lcom/unity3d/services/ads/operation/show/ShowModule$1$1;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/services/ads/operation/show/ShowModule$1$1;-><init>(Lcom/unity3d/services/ads/operation/show/ShowModule$1;Ljava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lcom/unity3d/services/core/request/metrics/ISDKMetricSender;->sendSDKMetricEventWithTag(Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;Ljava/util/Map;)V

    .line 4
    iget-object p1, p0, Lcom/unity3d/services/ads/operation/show/ShowModule$1;->this$0:Lcom/unity3d/services/ads/operation/show/ShowModule;

    iget-object p2, p0, Lcom/unity3d/services/ads/operation/show/ShowModule$1;->val$state:Lcom/unity3d/services/ads/operation/show/ShowOperationState;

    iget-object p2, p2, Lcom/unity3d/services/ads/operation/OperationState;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unity3d/services/core/webview/bridge/WebViewBridgeSharedObjectStore;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method

.method public onTimeout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/operation/show/ShowModule$1;->this$0:Lcom/unity3d/services/ads/operation/show/ShowModule;

    iget-object v1, p0, Lcom/unity3d/services/ads/operation/show/ShowModule$1;->val$state:Lcom/unity3d/services/ads/operation/show/ShowOperationState;

    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    const-string v3, "[UnityAds] Show Invocation Timeout"

    invoke-static {v0, v1, v3, v2}, Lcom/unity3d/services/ads/operation/show/ShowModule;->access$000(Lcom/unity3d/services/ads/operation/show/ShowModule;Lcom/unity3d/services/ads/operation/show/ShowOperationState;Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;)V

    .line 2
    iget-object v0, p0, Lcom/unity3d/services/ads/operation/show/ShowModule$1;->this$0:Lcom/unity3d/services/ads/operation/show/ShowModule;

    invoke-static {v0}, Lcom/unity3d/services/ads/operation/show/ShowModule;->access$200(Lcom/unity3d/services/ads/operation/show/ShowModule;)Lcom/unity3d/services/core/request/metrics/ISDKMetricSender;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;->native_show_callback_timeout:Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;

    invoke-interface {v0, v1}, Lcom/unity3d/services/core/request/metrics/ISDKMetricSender;->sendSDKMetricEvent(Lcom/unity3d/services/core/request/metrics/SDKMetricEvents;)V

    .line 3
    iget-object v0, p0, Lcom/unity3d/services/ads/operation/show/ShowModule$1;->this$0:Lcom/unity3d/services/ads/operation/show/ShowModule;

    iget-object v1, p0, Lcom/unity3d/services/ads/operation/show/ShowModule$1;->val$state:Lcom/unity3d/services/ads/operation/show/ShowOperationState;

    iget-object v1, v1, Lcom/unity3d/services/ads/operation/OperationState;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewBridgeSharedObjectStore;->remove(Ljava/lang/String;)V

    return-void
.end method
