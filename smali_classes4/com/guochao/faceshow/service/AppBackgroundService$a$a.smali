.class Lcom/guochao/faceshow/service/AppBackgroundService$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;


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
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/service/AppBackgroundService$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/service/AppBackgroundService$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a$a;->a:Lcom/guochao/faceshow/service/AppBackgroundService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AppBackgroundService"

    const-string v1, "short_video :\u4e0a\u4f20\u5931\u8d25"

    .line 1
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "SHORT_VIDEO_UPLOAD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a$a;->a:Lcom/guochao/faceshow/service/AppBackgroundService$a;

    iget-object v1, v1, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result p1

    const/16 v0, 0x3f2

    if-ne p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a$a;->a:Lcom/guochao/faceshow/service/AppBackgroundService$a;

    iget-object p1, p1, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    const v0, 0x7f1205a2

    invoke-virtual {p1, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_0
    return-void
.end method
