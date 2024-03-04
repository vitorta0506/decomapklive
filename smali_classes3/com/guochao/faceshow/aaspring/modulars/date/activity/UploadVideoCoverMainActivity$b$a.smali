.class Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;->a(Lcom/guochao/faceshow/aaspring/beans/UploadAvatarResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;

    const v0, 0x7f1209a2

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void
.end method

.method public onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
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
            "Ljava/lang/Object;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;

    const p2, 0x7f1209a3

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/WaitVideoCoverCheckActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/bean/UserBean;->setAppointState(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "result"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method
