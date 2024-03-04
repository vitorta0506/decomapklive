.class public Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;

    const v0, 0x7f0a0232

    const-string v1, "field \'mConfirm\' and method \'onClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mConfirm\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->mConfirm:Landroid/widget/TextView;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a022d

    const-string v1, "field \'mCancel\' and method \'onClick\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mCancel\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->mCancel:Landroid/widget/TextView;

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    const-class v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    const v1, 0x7f0a0e80

    const-string v2, "field \'loopView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->loopView:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->mConfirm:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->mCancel:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->loopView:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog_ViewBinding;->c:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
