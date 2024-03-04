.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0bac

    const-string v2, "field \'mTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f0a071c

    const-string v1, "field \'mTextViewLogin\' and method \'login\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mTextViewLogin\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;->mTextViewLogin:Landroid/widget/TextView;

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding;->d:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01af

    const-string v1, "field \'mTextViewCancel\' and method \'login\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mTextViewCancel\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;->mTextViewCancel:Landroid/widget/TextView;

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding;->e:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a020d

    const-string v1, "method \'login\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 13
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding;->f:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;->mTextView:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;->mTextViewLogin:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity;->mTextViewCancel:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding;->d:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding;->e:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/QRCodeLoginActivity_ViewBinding;->f:Landroid/view/View;

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
