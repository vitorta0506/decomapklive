.class Lcom/guochao/faceshow/service/AppBackgroundService$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/service/AppBackgroundService;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
        "Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;",
        ">;"
    }
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcom/guochao/faceshow/service/AppBackgroundService;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/service/AppBackgroundService;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/d;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->a:J

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;
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
            "Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;",
            ">;)V"
        }
    .end annotation

    const-string p2, ""

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lg7/a;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p2, -0x1

    invoke-direct {p1, v0, p2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/service/AppBackgroundService$a;->onFailure(Lg7/a;)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "frame"

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPrivateRootPathV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/utils/Tools;->deleteDirWihtFile(Ljava/io/File;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-static {v0}, Lcom/guochao/faceshow/service/AppBackgroundService;->b(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->setTypeId(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    const-string v1, "coding"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->setCountry(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-static {v0}, Lcom/guochao/faceshow/service/AppBackgroundService;->f(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->setMusicId(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-static {v0}, Lcom/guochao/faceshow/service/AppBackgroundService;->g(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->setMusicName(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-static {v0}, Lcom/guochao/faceshow/service/AppBackgroundService;->h(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->setIsSource(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-static {v0}, Lcom/guochao/faceshow/service/AppBackgroundService;->i(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->setIsPrivate(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-static {v0}, Lcom/guochao/faceshow/service/AppBackgroundService;->j(Lcom/guochao/faceshow/service/AppBackgroundService;)Z

    move-result v0

    const-string v1, "0"

    const-string v2, "1"

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->setAutoSyncVideoToDynamic(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-static {v0}, Lcom/guochao/faceshow/service/AppBackgroundService;->k(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->setContent(Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v3, "api/token/social/video/create"

    invoke-direct {v0, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->getMusicUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "musicUrl"

    invoke-virtual {v0, v4, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    const-string/jumbo v3, "topicId"

    .line 14
    invoke-virtual {v0, v3, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    .line 15
    invoke-static {v0}, Lcom/guochao/faceshow/service/AppBackgroundService;->f(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "musicId"

    invoke-virtual {p2, v3, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    .line 16
    invoke-static {v0}, Lcom/guochao/faceshow/service/AppBackgroundService;->g(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "musicName"

    invoke-virtual {p2, v3, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p2

    .line 17
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "url"

    invoke-virtual {p2, v3, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p2

    .line 18
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    const-string v3, "img"

    invoke-virtual {p2, v3, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    .line 19
    invoke-static {v0}, Lcom/guochao/faceshow/service/AppBackgroundService;->i(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "isPrivate"

    invoke-virtual {p2, v3, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    .line 20
    invoke-static {v0}, Lcom/guochao/faceshow/service/AppBackgroundService;->h(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "isSource"

    invoke-virtual {p2, v3, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p2

    .line 21
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "width"

    invoke-virtual {p2, v3, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p2

    .line 22
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "height"

    invoke-virtual {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-static {p2}, Lcom/guochao/faceshow/service/AppBackgroundService;->j(Lcom/guochao/faceshow/service/AppBackgroundService;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const-string p2, "autoSyncVideoToDynamic"

    invoke-virtual {p1, p2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    .line 24
    invoke-static {p2}, Lcom/guochao/faceshow/service/AppBackgroundService;->k(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "content"

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    .line 25
    invoke-static {p2}, Lcom/guochao/faceshow/service/AppBackgroundService;->l(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "prospectus"

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/service/AppBackgroundService$a$b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/service/AppBackgroundService$a$b;-><init>(Lcom/guochao/faceshow/service/AppBackgroundService$a;)V

    .line 26
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/service/AppBackgroundService$a$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/service/AppBackgroundService$a$a;-><init>(Lcom/guochao/faceshow/service/AppBackgroundService$a;)V

    .line 27
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 3
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;",
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
    iget-object v1, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 5
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    const/16 v0, 0x3f2

    if-ne p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    const v0, 0x7f1205a2

    invoke-virtual {p1, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method public onProgress(JJD)V
    .locals 1

    .line 1
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "onProgress: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p6, "HttpClient"

    invoke-static {p6, p5}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-wide p5, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->a:J

    cmp-long v0, p1, p5

    if-lez v0, :cond_0

    .line 3
    iput-wide p1, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->a:J

    .line 4
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "SHORT_VIDEO_UPLOAD_STATUS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x3

    const-string/jumbo p5, "type"

    .line 5
    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p2, "total"

    .line 6
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-static {p2}, Lcom/guochao/faceshow/service/AppBackgroundService;->a(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "imgPath"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-wide p2, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->a:J

    const-string p4, "current"

    invoke-virtual {p1, p4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/service/AppBackgroundService$a;->b:Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/service/AppBackgroundService$a;->a(Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
