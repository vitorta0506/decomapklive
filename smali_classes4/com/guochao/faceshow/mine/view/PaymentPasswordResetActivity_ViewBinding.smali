.class public Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity;

    const v0, 0x7f0a0c2a

    const-string v1, "field \'tvRemember\' and method \'onViewClicked\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvRemember\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity;->tvRemember:Landroid/widget/TextView;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity_ViewBinding;->d:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0c11

    const-string v1, "field \'tvForget\' and method \'onViewClicked\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 8
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvForget\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity;->tvForget:Landroid/widget/TextView;

    .line 9
    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity_ViewBinding;->e:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity;->tvRemember:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity;->tvForget:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity_ViewBinding;->d:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordResetActivity_ViewBinding;->e:Landroid/view/View;

    .line 9
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method