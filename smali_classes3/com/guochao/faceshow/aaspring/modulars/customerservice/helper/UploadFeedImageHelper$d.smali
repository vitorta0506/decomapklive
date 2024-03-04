.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$d;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->m(ILcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$d;->c:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$d;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$d;->b:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;
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
            "Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lg7/a;

    invoke-direct {p1}, Lg7/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$d;->onFailure(Lg7/a;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;->getBigImgUrl()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;->getSmallImgUrl()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;-><init>()V

    .line 5
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;->setUrl(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;->setSmallUrl(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 7
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;->setFileType(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$d;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;->setWidth(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$d;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;->setHeight(I)V

    .line 10
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$d;->b:I

    add-int/lit8 p1, p1, 0x1

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$d;->c:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->i:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$d;->c:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->d(Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;IZ)V

    return-void
.end method

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
            "Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$d;->c:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->k:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$q;

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lg7/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$q;->onFail(ILjava/lang/String;)V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$d;->a(Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
