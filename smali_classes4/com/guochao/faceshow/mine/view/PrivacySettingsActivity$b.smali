.class Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$b;->a:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$b;->a:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;

    iput-object p1, v0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->a:Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$b;->a:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$b;->a:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->a:Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;

    if-eqz v0, :cond_5

    .line 4
    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->mCheckBoxOnline:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->getOnline()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$b;->a:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->mCheckBoxDistance:Landroid/widget/CheckBox;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->a:Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->getCloseDistance()I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$b;->a:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->checkHidePeopleNearby:Landroid/widget/CheckBox;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->a:Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->getNearbyFunc()I

    move-result p1

    if-eq p1, v2, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$b;->a:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->checkHideVoiceRoom:Landroid/widget/CheckBox;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->a:Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->getVoiceRoomStatus()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$b;->a:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->checkPrivateLiveInvite:Landroid/widget/CheckBox;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->a:Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->getPrivateInvite()I

    move-result p1

    if-nez p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$b;->a:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

    invoke-static {p1, v2}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->b0(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;Z)Z

    :cond_5
    return-void
.end method
