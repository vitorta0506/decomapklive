.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->e2(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->mDownloadDialogProgressView:Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$i;->a:I

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->setProgress(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->mTextViewProgress:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$i;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "%"

    aput-object v3, v1, v2

    const-string v2, "%s%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$i;->a:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
