.class Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$f;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$f;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLiveNotice:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v0, "isNotice"

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$f;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->e0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$f;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->e0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->getSetId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->i0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;ILjava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$f;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLiveNotice:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$f;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->e0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$f;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->e0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->getSetId()I

    move-result v2

    invoke-static {p1, v2, v0, v1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->i0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;ILjava/lang/String;I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$f;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLiveNotice:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method
