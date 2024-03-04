.class Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->i2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$d;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$d;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a036d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$d;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0a02a8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v5, 0x41d80000    # 27.0f

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    add-int/2addr v3, v5

    .line 7
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v2, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41200000    # 10.0f

    .line 10
    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 11
    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/high16 v6, 0x425c0000    # 55.0f

    .line 12
    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 13
    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    const/16 v3, 0x30

    .line 14
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 18
    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v2, 0x41700000    # 15.0f

    .line 19
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const v2, 0x800035

    .line 20
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 21
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
