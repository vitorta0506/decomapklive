.class Lcom/guochao/faceshow/service/AppBackgroundService$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/service/AppBackgroundService$a;->a(Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/service/AppBackgroundService$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/service/AppBackgroundService$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a$b;->a:Lcom/guochao/faceshow/service/AppBackgroundService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 7
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a$b;->a:Lcom/guochao/faceshow/service/AppBackgroundService$a;

    new-instance v0, Lg7/a;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/service/AppBackgroundService$a;->onFailure(Lg7/a;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->getShortUrl()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->getProspectus()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->getImg()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->getIsLottery()I

    move-result v3

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->getLotteryUrl()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v4, Landroid/content/Intent;

    const-string v5, "SHORT_VIDEO_UPLOAD_STATUS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    const-string/jumbo v6, "type"

    .line 9
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "shortUrl"

    .line 10
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "prospectus"

    .line 11
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "img"

    .line 12
    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "result"

    .line 13
    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isLottery"

    .line 14
    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "lotteryUrl"

    .line 15
    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a$b;->a:Lcom/guochao/faceshow/service/AppBackgroundService$a;

    iget-object p1, p1, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
