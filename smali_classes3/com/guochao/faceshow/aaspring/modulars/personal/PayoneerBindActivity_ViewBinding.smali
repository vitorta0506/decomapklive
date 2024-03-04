.class public Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cce

    const-string v2, "field \'tvPayoneerAccountUnreviewed\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity;->tvPayoneerAccountUnreviewed:Landroid/widget/TextView;

    const v0, 0x7f0a0cb6

    const-string v1, "method \'onViewClicked\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity_ViewBinding;->d:Landroid/view/View;

    .line 6
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity_ViewBinding$a;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0ce7

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity_ViewBinding;->e:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity;->tvPayoneerAccountUnreviewed:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity_ViewBinding;->d:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerBindActivity_ViewBinding;->e:Landroid/view/View;

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
