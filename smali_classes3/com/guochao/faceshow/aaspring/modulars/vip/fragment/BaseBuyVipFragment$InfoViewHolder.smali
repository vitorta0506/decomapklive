.class public Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoViewHolder"
.end annotation


# instance fields
.field mView1:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mView2:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c(FZ)V
    .locals 2

    .line 1
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 p2, p2, 0x1

    :cond_0
    const/high16 v0, 0x44480000    # 800.0f

    const/high16 v1, 0x43fa0000    # 500.0f

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;->mView1:Landroid/view/View;

    mul-float v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;->mView2:Landroid/view/View;

    mul-float p1, p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;->mView1:Landroid/view/View;

    neg-float p1, p1

    mul-float v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;->mView2:Landroid/view/View;

    mul-float p1, p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void
.end method
