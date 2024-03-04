.class Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$i;
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

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$i;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$i;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$i;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->m0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$i;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$i;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method
