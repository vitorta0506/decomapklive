.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;
.super Lcom/guochao/faceshow/views/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/guochao/faceshow/views/g;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;J)I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->c:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->c:Z

    .line 5
    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;J)I

    move-result p1

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;)V

    invoke-static {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->k(IILandroid/widget/TextView;Ld9/e$a;)V

    :cond_2
    return-void
.end method
