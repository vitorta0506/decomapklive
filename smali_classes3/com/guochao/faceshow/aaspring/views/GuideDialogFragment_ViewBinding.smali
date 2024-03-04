.class public Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;

    .line 3
    const-class v0, Lcom/opensource/svgaplayer/SVGAImageView;

    const v1, 0x7f0a0af4

    const-string v2, "field \'svgGuid\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->svgGuid:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 4
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06d3

    const-string v2, "field \'llGuid\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->llGuid:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0415

    const-string v1, "field \'flContent\' and method \'onViewClicked\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 6
    const-class v1, Landroid/widget/FrameLayout;

    const-string v2, "field \'flContent\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->flContent:Landroid/widget/FrameLayout;

    .line 7
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment_ViewBinding;->c:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->svgGuid:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->llGuid:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->flContent:Landroid/widget/FrameLayout;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
