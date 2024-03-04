.class Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->r0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

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

    if-ne p1, v0, :cond_5

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    const v1, 0x7f120b12

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const v1, 0x9c4b

    if-ne v0, v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    const v0, 0x7f12019b

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->m0(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    const v0, 0x7f1206f6

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    goto :goto_1

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    const v0, 0x7f1206f5

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    :cond_5
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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 6
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

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->onFailure(Lg7/a;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->n0(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;Z)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->o0(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f$a;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;JJ)V

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->p0(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->o0(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f12019c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void
.end method
