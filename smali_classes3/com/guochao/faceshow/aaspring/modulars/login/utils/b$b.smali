.class Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;->p(Lcom/facebook/AccessToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/AccessToken;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;Lcom/facebook/AccessToken;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$b;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$b;->a:Lcom/facebook/AccessToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    const-string p2, "id"

    .line 1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$b;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$b;->a:Lcom/facebook/AccessToken;

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
