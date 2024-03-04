.class Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;->b0()V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
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

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;->onFailure(Lg7/a;)V

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;

    const-string v0, "tokens/appoint/applyOpen"

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p2

    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dateLang"

    invoke-virtual {p2, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;->getBigImgUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gifUrl"

    invoke-virtual {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
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

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;

    const v0, 0x7f1209a2

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;->a(Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
