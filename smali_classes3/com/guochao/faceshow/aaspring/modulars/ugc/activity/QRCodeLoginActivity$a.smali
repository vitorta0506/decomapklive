.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;->login(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
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
            "Ljava/lang/Integer;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;->finish()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;Z)Z

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;->d0()V

    :goto_0
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

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

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity$a;->a(Ljava/lang/Integer;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
