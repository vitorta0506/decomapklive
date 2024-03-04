.class Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->v0()V
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

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$d;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$d;->a:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->m0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->p0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
