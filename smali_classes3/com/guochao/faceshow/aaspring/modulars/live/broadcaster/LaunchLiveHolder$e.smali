.class Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->checkShowNewBeautyPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1900(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1100(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0a0612

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 5
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x11

    .line 6
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 7
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v5, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 8
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/high16 v7, 0x41600000    # 14.0f

    .line 9
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 10
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    const v4, 0x7f12067e

    .line 11
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    const/high16 v4, 0x41000000    # 8.0f

    .line 12
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v9

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    invoke-static {v8}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v8

    invoke-virtual {v5, v7, v9, v4, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v4, -0x1

    .line 13
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f080455

    .line 14
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 15
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0527

    .line 16
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 18
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 19
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 20
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x2710

    const/high16 v5, -0x80000000

    .line 21
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v3, v7, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 22
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 23
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/16 v5, 0xc8

    int-to-float v5, v5

    .line 24
    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 25
    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 26
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 28
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 29
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 30
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$2102(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 31
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1900(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1900(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1900(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1900(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1900(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, -0xc8

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 32
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    invoke-virtual {v2, v1, v3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_1
    :goto_0
    return-void
.end method
