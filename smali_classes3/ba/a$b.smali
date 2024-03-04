.class Lba/a$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/a;->B(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

.field final synthetic c:I

.field final synthetic d:Lba/a;


# direct methods
.method constructor <init>(Lba/a;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;I)V
    .locals 0

    iput-object p1, p0, Lba/a$b;->d:Lba/a;

    iput-object p2, p0, Lba/a$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lba/a$b;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    iput p4, p0, Lba/a$b;->c:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lba/a$b;->d:Lba/a;

    invoke-static {p1}, Lba/a;->c(Lba/a;)I

    .line 2
    iget-object p1, p0, Lba/a$b;->d:Lba/a;

    invoke-static {p1}, Lba/a;->a(Lba/a;)I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lba/a$b;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setPublishStatus(I)V

    .line 4
    iget-object p1, p0, Lba/a$b;->d:Lba/a;

    invoke-static {p1}, Lba/a;->h(Lba/a;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lba/a$b;->d:Lba/a;

    iget-object v0, p0, Lba/a$b;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-static {p1, v0}, Lba/a;->i(Lba/a;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lba/a$b;->d:Lba/a;

    iget-object v0, p0, Lba/a$b;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    iget v1, p0, Lba/a$b;->c:I

    invoke-static {p1, v0, v1}, Lba/a;->f(Lba/a;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;I)V

    return-void
.end method

.method public onProgress(JJD)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lba/a$b;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 4
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse;->getCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse;->getResult()Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse$ResultBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lba/a$b;->d:Lba/a;

    iget-object v2, p0, Lba/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lba/a;->n(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lba/a$b;->d:Lba/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lba/a;->b(Lba/a;I)I

    .line 6
    iget-object v0, p0, Lba/a$b;->d:Lba/a;

    invoke-static {v0}, Lba/a;->d(Lba/a;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lba/a$b;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getImgList()Ljava/util/List;

    move-result-object v0

    .line 8
    iget v2, p0, Lba/a$b;->c:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse;->getResult()Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse$ResultBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse$ResultBean;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setFileUrl(Ljava/lang/String;)V

    .line 9
    iget v2, p0, Lba/a$b;->c:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse;->getResult()Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse$ResultBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadUgcImageResponse$ResultBean;->getSmallImgUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setFileSmallUrl(Ljava/lang/String;)V

    const-string p1, "publish_dynamic"

    .line 10
    iget-object v2, p0, Lba/a$b;->d:Lba/a;

    invoke-static {v2}, Lba/a;->e(Lba/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lba/a$b;->d:Lba/a;

    invoke-static {v3}, Lba/a;->d(Lba/a;)Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    iget p1, p0, Lba/a$b;->c:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 12
    iget-object p1, p0, Lba/a$b;->d:Lba/a;

    iget-object v0, p0, Lba/a$b;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    iget v2, p0, Lba/a$b;->c:I

    add-int/2addr v2, v1

    invoke-static {p1, v0, v2}, Lba/a;->f(Lba/a;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;I)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lba/a$b;->d:Lba/a;

    iget-object v0, p0, Lba/a$b;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-static {p1, v0}, Lba/a;->g(Lba/a;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0, p2}, Lba/a$b;->onFailure(Lg7/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :catch_0
    invoke-virtual {p0, p2}, Lba/a$b;->onFailure(Lg7/a;)V

    :cond_2
    :goto_0
    return-void
.end method
