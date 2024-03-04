.class Lcom/guochao/faceshow/mine/view/SettingActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SettingActivity;->getEvent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/SettingActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity$g;->a:Lcom/guochao/faceshow/mine/view/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity$g;->a:Lcom/guochao/faceshow/mine/view/SettingActivity;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 3
    new-instance p1, Lcom/guochao/faceshow/mine/view/SettingActivity$g$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/mine/view/SettingActivity$g$a;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity$g;)V

    invoke-static {p1}, Lcom/guochao/faceshow/utils/DataCleanManager;->clearIMFiles(Lcom/guochao/faceshow/utils/DataCleanManager$ClearCallBack;)V

    :cond_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
