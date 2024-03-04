.class Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0;->a(Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
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
.field final synthetic a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0;

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
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0;->c:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0;

    iget-object v0, p2, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0;->a:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

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
    iget-object p1, p2, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->imagePath:Ljava/lang/String;

    .line 7
    iget-object p1, p2, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0;->c:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->X0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->f()V

    :cond_0
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

    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0;->c:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m0$a;->a(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
