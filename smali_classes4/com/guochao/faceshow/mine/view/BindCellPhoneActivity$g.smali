.class Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$g;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->m0(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$g;->b:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$g;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 3
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
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$g;->b:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$g;->b:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    const v1, 0x7f120b0d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$g;->b:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/guochao/faceshow/views/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$g;->b:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v0, v2}, Lcom/guochao/faceshow/views/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_2
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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$g;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

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
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getCode()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 3
    new-instance p1, Lg7/a;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getCode()I

    move-result p2

    invoke-direct {p1, v0, p2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$g;->onFailure(Lg7/a;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$g;->b:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1201bc

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$g;->b:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$g;->a:Ljava/lang/String;

    const-string v0, "phone"

    invoke-static {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$g;->b:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method
