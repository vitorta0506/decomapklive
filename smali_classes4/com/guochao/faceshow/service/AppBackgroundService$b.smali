.class Lcom/guochao/faceshow/service/AppBackgroundService$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/service/AppBackgroundService;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/service/AppBackgroundService;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/service/AppBackgroundService;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/service/AppBackgroundService$b;->a:Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string p1, "AppBackgroundService"

    const-string v0, "REPORT_PIC_TEXT_UPLOAD_STATUS :\u4e0a\u4f20\u5931\u8d25"

    .line 1
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "REPORT_PIC_TEXT_UPLOAD_STATUS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService$b;->a:Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public onProgress(JJD)V
    .locals 2

    .line 1
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "REPORT_PIC_TEXT_UPLOAD_STATUS :\u4e0a\u4f20\u8fdb\u5ea6:  "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x64

    mul-long v0, v0, p1

    div-long/2addr v0, p3

    invoke-virtual {p5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p6, "%"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p6, "AppBackgroundService"

    invoke-static {p6, p5}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p5, Landroid/content/Intent;

    const-string p6, "REPORT_PIC_TEXT_UPLOAD_STATUS"

    invoke-direct {p5, p6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p6, "type"

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p5, p6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p6, "total"

    .line 4
    invoke-virtual {p5, p6, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5
    iget-object p3, p0, Lcom/guochao/faceshow/service/AppBackgroundService$b;->a:Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-static {p3}, Lcom/guochao/faceshow/service/AppBackgroundService;->a(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "imgPath"

    invoke-virtual {p5, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "current"

    .line 6
    invoke-virtual {p5, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/service/AppBackgroundService$b;->a:Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

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
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/service/AppBackgroundService$b;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const-string v2, ","

    .line 6
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v1, Lf7/b;->g0:Ljava/lang/String;

    invoke-direct {p1, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/guochao/faceshow/service/AppBackgroundService$b;->a:Lcom/guochao/faceshow/service/AppBackgroundService;

    .line 9
    invoke-static {v1}, Lcom/guochao/faceshow/service/AppBackgroundService;->e(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/service/AppBackgroundService$b;->a:Lcom/guochao/faceshow/service/AppBackgroundService;

    .line 10
    invoke-static {v1}, Lcom/guochao/faceshow/service/AppBackgroundService;->k(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService$b;->a:Lcom/guochao/faceshow/service/AppBackgroundService;

    .line 12
    invoke-static {v0}, Lcom/guochao/faceshow/service/AppBackgroundService;->d(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "infoId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService$b;->a:Lcom/guochao/faceshow/service/AppBackgroundService;

    .line 13
    invoke-static {v0}, Lcom/guochao/faceshow/service/AppBackgroundService;->c(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reportType"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService$b;->a:Lcom/guochao/faceshow/service/AppBackgroundService;

    .line 14
    invoke-static {v0}, Lcom/guochao/faceshow/service/AppBackgroundService;->m(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "typeId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "img"

    .line 15
    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/service/AppBackgroundService$b$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/service/AppBackgroundService$b$a;-><init>(Lcom/guochao/faceshow/service/AppBackgroundService$b;)V

    .line 16
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void

    .line 17
    :cond_2
    :goto_1
    new-instance p1, Lg7/a;

    invoke-direct {p1}, Lg7/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/service/AppBackgroundService$b;->onFailure(Lg7/a;)V

    return-void
.end method
