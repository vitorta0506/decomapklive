.class Lcom/guochao/faceshow/mine/view/SettingActivity$g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/utils/DataCleanManager$ClearCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SettingActivity$g$a;->onSucceed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/SettingActivity$g$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SettingActivity$g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity$g$a$a;->a:Lcom/guochao/faceshow/mine/view/SettingActivity$g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSucceed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity$g$a$a;->a:Lcom/guochao/faceshow/mine/view/SettingActivity$g$a;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/SettingActivity$g$a;->a:Lcom/guochao/faceshow/mine/view/SettingActivity$g;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/SettingActivity$g;->a:Lcom/guochao/faceshow/mine/view/SettingActivity;

    invoke-static {}, Lcom/guochao/faceshow/utils/DataCleanManager;->getIMTotalCacheSize()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0c02

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity$g$a$a;->a:Lcom/guochao/faceshow/mine/view/SettingActivity$g$a;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/SettingActivity$g$a;->a:Lcom/guochao/faceshow/mine/view/SettingActivity$g;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/SettingActivity$g;->a:Lcom/guochao/faceshow/mine/view/SettingActivity;

    const v1, 0x7f120011

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity$g$a$a;->a:Lcom/guochao/faceshow/mine/view/SettingActivity$g$a;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/SettingActivity$g$a;->a:Lcom/guochao/faceshow/mine/view/SettingActivity$g;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/SettingActivity$g;->a:Lcom/guochao/faceshow/mine/view/SettingActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    return-void
.end method
