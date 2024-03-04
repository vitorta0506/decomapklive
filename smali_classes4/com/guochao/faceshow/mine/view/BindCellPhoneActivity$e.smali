.class Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$e;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->o0(Ljava/lang/String;ILjava/lang/String;Z)V
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
.field final synthetic a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$e;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

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
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$e;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$e;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    const v1, 0x7f120b12

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$e;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lcom/guochao/faceshow/views/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_1
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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$e;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 7
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
    new-instance p1, Lcom/guochao/faceshow/utils/CountDownTimerUtils;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$e;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$e;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object v2, p2, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnSendVerificationCode:Landroid/widget/TextView;

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x3e8

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/utils/CountDownTimerUtils;-><init>(Landroid/content/Context;Landroid/widget/TextView;JJ)V

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$e;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1207da

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void
.end method
