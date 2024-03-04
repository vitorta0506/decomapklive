.class Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$l;
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

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$l;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$l;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$l;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->m0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$l;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    const/16 v1, 0x69

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
