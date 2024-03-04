.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$h;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->G0(Ljava/lang/String;Z)V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$h;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$h;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->b:Landroid/os/Handler;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->a:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const v1, 0x9c4b

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$h;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    const v0, 0x7f12019b

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const v1, 0x9c52

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$h;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "content_type"

    const-string v1, "\u5931\u8d25"

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    const-string v1, "phone_verification_send_result_2737"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$h;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 11
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
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object p2

    const-wide/32 v0, 0xea60

    invoke-virtual {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->setRegisterAccount(J)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$h;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    new-instance v10, Lcom/guochao/faceshow/aaspring/views/u;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$h;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$h;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->ivSend:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->tv_code:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->rl_send:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->getRegisterAccount()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x2

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/guochao/faceshow/aaspring/views/u;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;JJI)V

    invoke-static {p2, v10}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->u0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;Lcom/guochao/faceshow/aaspring/views/u;)Lcom/guochao/faceshow/aaspring/views/u;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$h;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->t0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)Lcom/guochao/faceshow/aaspring/views/u;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$h;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    const p2, 0x7f12019c

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "content_type"

    const-string v0, "\u6210\u529f"

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p2

    const-string v0, "phone_verification_send_result_2737"

    invoke-virtual {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
