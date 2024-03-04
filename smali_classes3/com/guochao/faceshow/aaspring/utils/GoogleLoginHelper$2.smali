.class Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$2;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->accessTokenGetId(ILjava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

.field final synthetic val$onGoogleResponse:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$2;->val$onGoogleResponse:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    :cond_0
    return-void

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getReg()I

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    const-string v1, "g_authority_success"

    const-string v2, ""

    if-ne p2, v0, :cond_3

    .line 5
    :try_start_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$2;->val$onGoogleResponse:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;

    invoke-interface {p2, v2, v2, v2, p1}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;->onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;)V

    goto/16 :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz p1, :cond_7

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getJson()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 11
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getJson()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "sub"

    .line 12
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "picture"

    .line 13
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    .line 14
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$2;->val$onGoogleResponse:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;

    if-eqz v1, :cond_7

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move-object v2, v3

    .line 17
    :goto_0
    invoke-interface {v1, v2, p2, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;->onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;)V

    goto :goto_1

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz p1, :cond_7

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;)Landroid/app/Activity;

    move-result-object p2

    instance-of p2, p2, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz p2, :cond_6

    .line 21
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;)Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 22
    :cond_6
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$2;->onResponse(Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
