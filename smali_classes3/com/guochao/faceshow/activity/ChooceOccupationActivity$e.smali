.class Lcom/guochao/faceshow/activity/ChooceOccupationActivity$e;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$e;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    const/16 v0, 0x3f2

    if-ne v0, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$e;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$e;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    const v1, 0x7f12016d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_0
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
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$e;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$e;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->i0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "career"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$e;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->m0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "infoName"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$e;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->d0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "companyName"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$e;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    const/16 v0, 0x38

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$e;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method
