.class public Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;

    .line 3
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0363

    const-string v2, "field \'etEmail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etEmail:Landroid/widget/EditText;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a059f

    const-string v2, "field \'ivEmailState\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->ivEmailState:Landroid/widget/ImageView;

    .line 5
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0371

    const-string v2, "field \'etVerificationCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etVerificationCode:Landroid/widget/EditText;

    .line 6
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05f3

    const-string v2, "field \'ivVerificationCodeSend\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->ivVerificationCodeSend:Landroid/widget/ImageView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d20

    const-string v2, "field \'tvVerificationCodeTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->tvVerificationCodeTime:Landroid/widget/TextView;

    const v0, 0x7f0a09ce

    const-string v1, "field \'rlVerificationCodeSend\' and method \'onViewClicked\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlVerificationCodeSend\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->rlVerificationCodeSend:Landroid/widget/RelativeLayout;

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding;->d:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a036c

    const-string v2, "field \'etPwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etPwd:Landroid/widget/EditText;

    const v0, 0x7f0a05cb

    const-string v1, "field \'ivPwdState\' and method \'onViewClicked\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 14
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivPwdState\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->ivPwdState:Landroid/widget/ImageView;

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding;->e:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0192

    const-string v1, "field \'btnNext\' and method \'onViewClicked\'"

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 18
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'btnNext\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->btnNext:Landroid/widget/TextView;

    .line 19
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding;->f:Landroid/view/View;

    .line 20
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etEmail:Landroid/widget/EditText;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->ivEmailState:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etVerificationCode:Landroid/widget/EditText;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->ivVerificationCodeSend:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->tvVerificationCodeTime:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->rlVerificationCodeSend:Landroid/widget/RelativeLayout;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etPwd:Landroid/widget/EditText;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->ivPwdState:Landroid/widget/ImageView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->btnNext:Landroid/widget/TextView;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding;->d:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding;->e:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity_ViewBinding;->f:Landroid/view/View;

    .line 18
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
