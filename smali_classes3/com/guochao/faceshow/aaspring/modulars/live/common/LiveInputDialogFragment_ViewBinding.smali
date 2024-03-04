.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;

    .line 3
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0679

    const-string v2, "field \'mEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mEditText:Landroid/widget/EditText;

    const v0, 0x7f0a019a

    const-string v1, "field \'btnSend\' and method \'send\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'btnSend\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->btnSend:Landroid/widget/ImageView;

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment_ViewBinding;->c:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0b0d

    const-string v1, "field \'mViewLiveDanmuSwitch\' and method \'openDanmu\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 9
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mViewLiveDanmuSwitch:Landroid/view/View;

    .line 10
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment_ViewBinding;->d:Landroid/view/View;

    .line 11
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04ac

    const-string v1, "field \'mGuideDanmu\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mGuideDanmu:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->btnSend:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mViewLiveDanmuSwitch:Landroid/view/View;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mGuideDanmu:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment_ViewBinding;->c:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
