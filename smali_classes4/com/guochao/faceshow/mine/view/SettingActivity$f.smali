.class Lcom/guochao/faceshow/mine/view/SettingActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/utils/DataCleanManager$ClearCallBack;


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

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity$f;->a:Lcom/guochao/faceshow/mine/view/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSucceed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity$f;->a:Lcom/guochao/faceshow/mine/view/SettingActivity;

    invoke-static {}, Lcom/guochao/faceshow/utils/DataCleanManager;->getTotalCacheSize()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0c01

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity$f;->a:Lcom/guochao/faceshow/mine/view/SettingActivity;

    const v1, 0x7f120011

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity$f;->a:Lcom/guochao/faceshow/mine/view/SettingActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_clear_banner"

    invoke-static {v0, v3, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method
