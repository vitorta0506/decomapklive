.class public Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0351

    const-string v2, "field \'etPwd1\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd1:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0352

    const-string v2, "field \'etPwd2\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd2:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0353

    const-string v2, "field \'etPwd3\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd3:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0354

    const-string v2, "field \'etPwd4\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd4:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0355

    const-string v2, "field \'etPwd5\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd5:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0356

    const-string v2, "field \'etPwd6\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd6:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0357

    const-string v2, "field \'etPwdReal\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwdReal:Landroid/widget/EditText;

    .line 10
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0444

    const-string v2, "field \'fragmentPassword\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->fragmentPassword:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0174

    const-string v1, "field \'btnNext\' and method \'onViewClicked\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 12
    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->btnNext:Landroid/view/View;

    .line 13
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity_ViewBinding;->d:Landroid/view/View;

    .line 14
    new-instance v1, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06b7

    const-string v2, "field \'llBaseLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->llBaseLayout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd1:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd2:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd3:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd4:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd5:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd6:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwdReal:Landroid/widget/EditText;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->fragmentPassword:Landroid/widget/FrameLayout;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->btnNext:Landroid/view/View;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->llBaseLayout:Landroid/widget/LinearLayout;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity_ViewBinding;->d:Landroid/view/View;

    .line 15
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
