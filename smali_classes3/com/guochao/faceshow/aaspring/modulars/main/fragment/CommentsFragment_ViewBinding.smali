.class public Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding;
.source "SourceFile"


# instance fields
.field private f:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;Landroid/view/View;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment_ViewBinding;->f:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    const v0, 0x7f0a0294

    const-string v1, "field \'mDanmuSwitch\' and method \'setDanmuSwitch\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 4
    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->mDanmuSwitch:Landroid/view/View;

    .line 5
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment_ViewBinding;->g:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment_ViewBinding;->f:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment_ViewBinding;->f:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->mDanmuSwitch:Landroid/view/View;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment_ViewBinding;->g:Landroid/view/View;

    .line 6
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment_ViewBinding;->unbind()V

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method