.class Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->s0(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/mine/model/SettingStatusBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/mine/model/SettingStatusBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/mine/model/SettingStatusBean;
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
            "Lcom/guochao/faceshow/mine/model/SettingStatusBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/mine/model/SettingStatusBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_e

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->g0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;Lcom/guochao/faceshow/mine/model/SettingStatusBean;)Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->e0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->getIsFriend()I

    move-result p1

    const/16 p2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlDoNotLookLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlDoNotLiveNoticeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlStealthLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlShieldingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlToReportLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlUnFollow:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->setGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlDoNotLookLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlDoNotLiveNoticeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlStealthLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlShieldingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlToReportLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlUnFollow:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->setGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->e0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->getIsShow()I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    goto :goto_1

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLook:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLook:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 22
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->e0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->getIsNotice()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_5

    goto :goto_2

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLiveNotice:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 24
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLiveNotice:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 25
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->e0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->getStealth()I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v0, :cond_7

    goto :goto_3

    .line 26
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swStealth:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 27
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swStealth:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 28
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->e0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->getIsFriend()I

    move-result p1

    if-ne p1, v0, :cond_b

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->e0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->getIsBlack()I

    move-result p1

    if-eqz p1, :cond_a

    if-eq p1, v0, :cond_9

    goto :goto_4

    .line 30
    :cond_9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlShieldingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4

    .line 31
    :cond_a
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlShieldingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 32
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->e0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->getLvl()I

    move-result p1

    if-eqz p1, :cond_d

    if-eq p1, v0, :cond_c

    goto :goto_5

    .line 33
    :cond_c
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swMeet:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 34
    :cond_d
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swMeet:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_e
    :goto_5
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
            "Lcom/guochao/faceshow/mine/model/SettingStatusBean;",
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

    check-cast p1, Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;->a(Lcom/guochao/faceshow/mine/model/SettingStatusBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
