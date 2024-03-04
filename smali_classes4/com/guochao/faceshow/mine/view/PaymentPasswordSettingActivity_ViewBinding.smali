.class public Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity;

    .line 3
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a034d

    const-string v2, "field \'etPaymentPassword\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity;->etPaymentPassword:Landroid/widget/EditText;

    .line 4
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a034e

    const-string v2, "field \'etPaymentPasswordAgain\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity;->etPaymentPasswordAgain:Landroid/widget/EditText;

    const v0, 0x7f0a0170

    const-string v1, "field \'btnChangePassword\' and method \'onViewClicked\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 6
    iput-object p2, p1, Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity;->btnChangePassword:Landroid/view/View;

    .line 7
    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity_ViewBinding;->d:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity;->etPaymentPassword:Landroid/widget/EditText;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity;->etPaymentPasswordAgain:Landroid/widget/EditText;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity;->btnChangePassword:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity_ViewBinding;->d:Landroid/view/View;

    .line 8
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
