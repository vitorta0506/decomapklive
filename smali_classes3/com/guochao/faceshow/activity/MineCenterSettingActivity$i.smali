.class Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/bean/SetNineInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;->a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/bean/SetNineInfo;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/bean/SetNineInfo;
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
            "Lcom/guochao/faceshow/bean/SetNineInfo;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/bean/SetNineInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget p2, p1, Lcom/guochao/faceshow/bean/SetNineInfo;->basicInfo:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;->a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->d0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;->a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->d0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    :goto_0
    iget p2, p1, Lcom/guochao/faceshow/bean/SetNineInfo;->interest:I

    if-ne p2, v1, :cond_1

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;->a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->e0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;->a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->e0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7
    :goto_1
    iget p2, p1, Lcom/guochao/faceshow/bean/SetNineInfo;->career:I

    if-ne p2, v1, :cond_2

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;->a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->g0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;->a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->g0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 10
    :goto_2
    iget p2, p1, Lcom/guochao/faceshow/bean/SetNineInfo;->emotion:I

    if-ne p2, v1, :cond_3

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;->a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->i0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;->a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->i0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 13
    :goto_3
    iget p2, p1, Lcom/guochao/faceshow/bean/SetNineInfo;->makeFriend:I

    if-ne p2, v1, :cond_4

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;->a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->k0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    .line 15
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;->a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->k0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 16
    :goto_4
    iget p2, p1, Lcom/guochao/faceshow/bean/SetNineInfo;->language:I

    if-ne p2, v1, :cond_5

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;->a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->l0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 18
    :cond_5
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;->a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->l0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 19
    :goto_5
    iget p1, p1, Lcom/guochao/faceshow/bean/SetNineInfo;->dialogue:I

    if-ne p1, v1, :cond_6

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;->a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->m0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_6

    .line 21
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;->a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->m0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_6
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
            "Lcom/guochao/faceshow/bean/SetNineInfo;",
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

    check-cast p1, Lcom/guochao/faceshow/bean/SetNineInfo;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;->a(Lcom/guochao/faceshow/bean/SetNineInfo;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
