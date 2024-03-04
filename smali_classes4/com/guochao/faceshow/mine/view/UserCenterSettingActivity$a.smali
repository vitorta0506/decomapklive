.class Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;
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

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLook:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->b0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    new-instance v0, Lcom/guochao/faceshow/views/e;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a$a;-><init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;)V

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->d0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;Lcom/guochao/faceshow/views/e;)Lcom/guochao/faceshow/views/e;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->b0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->b0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->b(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->b0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1209a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->b0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->e0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->e0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->getSetId()I

    move-result v1

    const-string v2, "isShow"

    invoke-static {p1, v1, v2, v0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->i0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;ILjava/lang/String;I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLook:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method
