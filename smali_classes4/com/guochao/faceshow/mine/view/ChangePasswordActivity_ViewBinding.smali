.class public Lcom/guochao/faceshow/mine/view/ChangePasswordActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;

    .line 3
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a034c

    const-string v2, "field \'etOldPassword\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;->etOldPassword:Landroid/widget/EditText;

    .line 4
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0348

    const-string v2, "field \'etNewPassword\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;->etNewPassword:Landroid/widget/EditText;

    .line 5
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0349

    const-string v2, "field \'etNewPasswordAgain\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;->etNewPasswordAgain:Landroid/widget/EditText;

    const v0, 0x7f0a0170

    const-string v1, "field \'btnChangePassword\' and method \'onViewClicked\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'btnChangePassword\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;->btnChangePassword:Landroid/widget/TextView;

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity_ViewBinding;->d:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/mine/view/ChangePasswordActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a09a8

    const-string v2, "field \'rlContentLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;->rlContentLayout:Landroid/widget/LinearLayout;

    .line 11
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0586

    const-string v2, "field \'ivSuccess\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;->ivSuccess:Landroid/widget/ImageView;

    .line 12
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a09b7

    const-string v2, "field \'rlSuccessLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;->rlSuccessLayout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;->etOldPassword:Landroid/widget/EditText;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;->etNewPassword:Landroid/widget/EditText;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;->etNewPasswordAgain:Landroid/widget/EditText;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;->btnChangePassword:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;->rlContentLayout:Landroid/widget/LinearLayout;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;->ivSuccess:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity;->rlSuccessLayout:Landroid/widget/LinearLayout;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/ChangePasswordActivity_ViewBinding;->d:Landroid/view/View;

    .line 12
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
