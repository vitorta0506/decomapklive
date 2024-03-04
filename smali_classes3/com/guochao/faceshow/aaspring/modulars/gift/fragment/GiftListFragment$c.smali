.class Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080287

    .line 8
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f060098

    .line 9
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {v2, p1}, Lcom/guochao/faceshow/aaspring/utils/ColorUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 10
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, -0x1

    .line 11
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    .line 12
    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const p1, 0x7f12084d

    .line 13
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 14
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 15
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 16
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
