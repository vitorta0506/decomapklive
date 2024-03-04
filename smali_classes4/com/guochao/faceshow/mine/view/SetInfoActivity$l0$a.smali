.class Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->a(Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;
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
            "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->d:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    if-eqz p1, :cond_2

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;

    iget-object v0, p2, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->a:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->imgUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->imgUrl:Ljava/lang/String;

    .line 3
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->smallImg:Ljava/lang/String;

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->smallImg:Ljava/lang/String;

    .line 4
    iget v1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->imgId:I

    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->imgId:I

    .line 5
    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->sort:I

    iput p1, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->sort:I

    .line 6
    iget-object p1, p2, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->imagePath:Ljava/lang/String;

    .line 7
    iget-object p1, p2, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->d:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->X0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;

    iget-object v0, p2, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->c:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->a:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->e(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->d:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Y0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->d:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Y0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getImgHomePageList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->d:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Y0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getImgHomePageList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->a:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->d:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Y0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->getImgHomePageList()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->a1(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/util/List;)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->d:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->X0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->f()V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->d:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getAvatar()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->d:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->a:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->imgUrl:Ljava/lang/String;

    iput-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->d:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    :cond_2
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
            "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0;->d:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l0$a;->a(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
