.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$g;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->l0(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$g;->e:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$g;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$g;->c:Z

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$g;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 7
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

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$g;->onFailure(Lg7/a;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;->getBigImgUrl()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;->getSmallImgUrl()Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$g;->e:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$g;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$g;->b:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$g;->c:Z

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$g;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$g;->e:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    const v0, 0x7f12005d

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$g;->e:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$g;->a(Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
