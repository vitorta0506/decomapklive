.class Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->k2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    sub-int/2addr v4, v0

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v1, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
