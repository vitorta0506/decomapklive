.class Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->e0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->e0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->getSetId()I

    move-result v1

    const-string v2, "isShow"

    invoke-static {p2, v1, v2, v0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->i0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;ILjava/lang/String;I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLook:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLook:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
