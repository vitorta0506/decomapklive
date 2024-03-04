.class Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

.field final synthetic val$onGoogleResponse:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;

.field final synthetic val$personId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$1;->val$personId:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$1;->val$onGoogleResponse:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onFailure"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onResponse"

    .line 2
    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/GoogleBean;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/GoogleBean;

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/GoogleBean;->getAccess_token()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$1;->val$personId:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$1;->val$onGoogleResponse:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;

    const/16 v2, 0x9

    invoke-virtual {p2, v2, p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->accessTokenGetId(ILjava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;)V

    return-void
.end method
