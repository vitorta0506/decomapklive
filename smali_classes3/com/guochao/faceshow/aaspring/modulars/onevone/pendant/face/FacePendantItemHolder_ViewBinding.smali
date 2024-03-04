.class public Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;

    const v0, 0x7f0a07a0

    const-string v1, "field \'motionPannelItemImg\' and method \'onViewClicked\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'motionPannelItemImg\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->motionPannelItemImg:Landroid/widget/ImageView;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a051f

    const-string v1, "field \'imageDown\' and method \'onViewClicked\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'imageDown\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->imageDown:Landroid/widget/ImageView;

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    const-class v0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;

    const v1, 0x7f0a08ce

    const-string v2, "field \'progressDownload\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/views/ItemDownloadProgressView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->progressDownload:Lcom/guochao/faceshow/views/ItemDownloadProgressView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->motionPannelItemImg:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->imageDown:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->progressDownload:Lcom/guochao/faceshow/views/ItemDownloadProgressView;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder_ViewBinding;->c:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
