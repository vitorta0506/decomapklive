.class public Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0229

    const-string v2, "field \'mTextViewCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->mTextViewCount:Landroid/widget/TextView;

    const v0, 0x7f0a01af

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding;->d:Landroid/view/View;

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a0ab5

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 8
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding;->e:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->mTextViewCount:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding;->d:Landroid/view/View;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding;->e:Landroid/view/View;

    .line 10
    :cond_1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
