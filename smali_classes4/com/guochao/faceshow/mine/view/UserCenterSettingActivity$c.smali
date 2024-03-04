.class Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->u0(ILjava/lang/String;I)V
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

.field final synthetic b:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$c;->b:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$c;->a:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "lvl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "isNotice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "isShow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "stealth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$c;->b:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swMeet:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$c;->b:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLiveNotice:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 4
    :pswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$c;->b:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLook:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 5
    :pswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$c;->b:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swStealth:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70e437fd -> :sswitch_3
        -0x465748b9 -> :sswitch_2
        -0x15cb775e -> :sswitch_1
        0x1a422 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$c;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
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

    return-void
.end method
