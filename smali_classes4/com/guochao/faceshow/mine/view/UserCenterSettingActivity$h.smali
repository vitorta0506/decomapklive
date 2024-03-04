.class Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;
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

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->k0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    new-instance v0, Lcom/guochao/faceshow/views/e;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h$a;-><init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;)V

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->l0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;Lcom/guochao/faceshow/views/e;)Lcom/guochao/faceshow/views/e;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->k0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->k0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->b(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->k0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1209a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->k0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method
