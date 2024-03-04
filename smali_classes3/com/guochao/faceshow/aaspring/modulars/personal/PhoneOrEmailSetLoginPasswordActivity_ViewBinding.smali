.class public Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;

    .line 3
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06ca

    const-string v2, "field \'llEmail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->llEmail:Landroid/widget/LinearLayout;

    .line 4
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06ed

    const-string v2, "field \'llPhone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->llPhone:Landroid/widget/LinearLayout;

    const v0, 0x7f0a09ec

    const-string v1, "field \'rvCountry\' and method \'onViewClicked\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'rvCountry\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->rvCountry:Landroid/widget/ImageView;

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;->d:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0c66

    const-string v1, "field \'tvCountry\' and method \'onViewClicked\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 10
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvCountry\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->tvCountry:Landroid/widget/TextView;

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;->e:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0363

    const-string v2, "field \'etEmail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->etEmail:Landroid/widget/EditText;

    .line 14
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a036b

    const-string v2, "field \'etPhone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->etPhone:Landroid/widget/EditText;

    const v0, 0x7f0a0192

    const-string v1, "field \'btnNext\' and method \'onViewClicked\'"

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 16
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'btnNext\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->btnNext:Landroid/widget/TextView;

    .line 17
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;->f:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d1a

    const-string v2, "field \'tvUseEmailOrPhoneTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->tvUseEmailOrPhoneTip:Landroid/widget/TextView;

    const v0, 0x7f0a0d19

    const-string v1, "field \'tvUseEmailOrPhone\' and method \'onViewClicked\'"

    .line 20
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 21
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvUseEmailOrPhone\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->tvUseEmailOrPhone:Landroid/widget/TextView;

    .line 22
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;->g:Landroid/view/View;

    .line 23
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05c0

    const-string v1, "method \'onViewClicked\'"

    .line 24
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 25
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;->h:Landroid/view/View;

    .line 26
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->llEmail:Landroid/widget/LinearLayout;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->llPhone:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->rvCountry:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->tvCountry:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->etEmail:Landroid/widget/EditText;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->etPhone:Landroid/widget/EditText;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->btnNext:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->tvUseEmailOrPhoneTip:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->tvUseEmailOrPhone:Landroid/widget/TextView;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;->d:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;->e:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;->f:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;->g:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity_ViewBinding;->h:Landroid/view/View;

    .line 22
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
