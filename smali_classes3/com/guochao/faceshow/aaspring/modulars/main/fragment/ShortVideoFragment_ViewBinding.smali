.class public Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05f5

    const-string v2, "field \'ivVideoBg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;->ivVideoBg:Landroid/widget/ImageView;

    const v0, 0x7f0a0332

    const-string v1, "field \'mEmptyView\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;->mEmptyView:Landroid/view/View;

    const v0, 0x7f0a08d7

    const-string v1, "method \'publish\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 6
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment_ViewBinding;->d:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;->ivVideoBg:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;->mEmptyView:Landroid/view/View;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment_ViewBinding;->d:Landroid/view/View;

    .line 7
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment_ViewBinding;->unbind()V

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
