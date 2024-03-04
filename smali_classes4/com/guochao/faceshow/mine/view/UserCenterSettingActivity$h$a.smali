.class Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    const-string/jumbo v0, "userId"

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h$a;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->m0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p2, v0, v1, v2}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->n0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
