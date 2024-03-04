.class Lcom/guochao/faceshow/aaspring/utils/PhoneUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->checkInterceptLoginType(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils$2;->val$activity:Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    if-eqz p2, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils$2;->val$activity:Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x14000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p2

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->PHONE:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->z(Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils$2;->val$activity:Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils$2;->val$activity:Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    instance-of p2, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
