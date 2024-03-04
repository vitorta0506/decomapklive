.class Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SetInfoActivity;->F1(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;Ljava/lang/String;)V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

.field final synthetic d:Lcom/guochao/faceshow/mine/view/SetInfoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->d:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->a:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    iput-object p3, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->c:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

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

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->onFailure(Lg7/a;)V

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->d:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    const-string/jumbo v0, "tokens/img/user/saveNew"

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;->getBigImgUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bigImgUrl"

    invoke-virtual {p2, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;->getSmallImgUrl()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "smallImgUrl"

    invoke-virtual {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;)V

    .line 5
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

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
            "Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->d:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->a(Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
