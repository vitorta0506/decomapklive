.class Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object p3, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p2}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result p2

    const p3, 0x3f80a3d7    # 1.005f

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object p3, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;

    const/4 v0, 0x0

    iget p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->a:I

    invoke-interface {p3, v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;->onScaled(ZFI)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object p3, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;

    const/4 v0, 0x1

    iget p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->a:I

    invoke-interface {p3, v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;->onScaled(ZFI)V

    :cond_1
    :goto_0
    return-void
.end method
