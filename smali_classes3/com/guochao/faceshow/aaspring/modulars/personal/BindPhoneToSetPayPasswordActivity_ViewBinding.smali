.class public Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;

    const v0, 0x7f0a09ec

    const-string v1, "field \'rvCountry\' and method \'onViewClicked\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'rvCountry\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;->rvCountry:Landroid/widget/ImageView;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;->d:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0c66

    const-string v1, "field \'tvCountry\' and method \'onViewClicked\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvCountry\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;->tvCountry:Landroid/widget/TextView;

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;->e:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a036b

    const-string v2, "field \'etPhone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;->etPhone:Landroid/widget/EditText;

    const v0, 0x7f0a0192

    const-string v1, "field \'btnNext\' and method \'onViewClicked\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 13
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'btnNext\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;->btnNext:Landroid/widget/TextView;

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;->f:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05c0

    const-string v1, "method \'onViewClicked\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 17
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;->g:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;->rvCountry:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;->tvCountry:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;->etPhone:Landroid/widget/EditText;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;->btnNext:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;->d:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;->e:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;->f:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity_ViewBinding;->g:Landroid/view/View;

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
