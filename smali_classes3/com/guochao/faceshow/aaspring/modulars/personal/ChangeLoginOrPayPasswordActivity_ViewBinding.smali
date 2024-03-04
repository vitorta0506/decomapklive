.class public Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;

    .line 3
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0366

    const-string v2, "field \'etOriginalPwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etOriginalPwd:Landroid/widget/EditText;

    .line 4
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0365

    const-string v2, "field \'etNewlPwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etNewlPwd:Landroid/widget/EditText;

    const v0, 0x7f0a0ceb

    const-string v1, "field \'tvRetrievePassword\' and method \'onViewClicked\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvRetrievePassword\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->tvRetrievePassword:Landroid/widget/TextView;

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity_ViewBinding;->d:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0193

    const-string v1, "field \'btnOk\' and method \'onViewClicked\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 10
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'btnOk\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->btnOk:Landroid/widget/TextView;

    .line 11
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity_ViewBinding;->e:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etOriginalPwd:Landroid/widget/EditText;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etNewlPwd:Landroid/widget/EditText;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->tvRetrievePassword:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->btnOk:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity_ViewBinding;->d:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity_ViewBinding;->e:Landroid/view/View;

    .line 11
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
