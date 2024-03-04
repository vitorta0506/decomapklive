.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;",
        "",
        "()V",
        "popupWindow",
        "Landroid/widget/PopupWindow;",
        "getPopupWindow",
        "()Landroid/widget/PopupWindow;",
        "setPopupWindow",
        "(Landroid/widget/PopupWindow;)V",
        "hidePop",
        "",
        "showPopupIfNeed",
        "view",
        "Landroid/view/View;",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private popupWindow:Landroid/widget/PopupWindow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;->showPopupIfNeed$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;Landroid/view/View;)V

    return-void
.end method

.method private static final showPopupIfNeed$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;Landroid/view/View;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 2
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v4

    invoke-virtual {v4}, Lq7/a;->j()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    aget v3, v2, v5

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v1

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    aget v4, v2, v5

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v1

    add-int/2addr v4, v6

    sub-int/2addr v3, v4

    :goto_0
    mul-int/lit8 v3, v3, 0x2

    .line 7
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 9
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 10
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f1203c6

    .line 12
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const/16 v4, 0x11

    .line 13
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v4, 0x41600000    # 14.0f

    .line 14
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, -0x1

    .line 15
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f08028a

    .line 16
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/high16 v4, -0x80000000

    .line 17
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/16 v6, 0x2710

    .line 18
    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 19
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 21
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 22
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 23
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->j()Z

    move-result v1

    const/high16 v3, 0x41200000    # 10.0f

    if-eqz v1, :cond_1

    aget v1, v2, v5

    neg-int v1, v1

    .line 24
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    goto :goto_1

    .line 25
    :cond_1
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    const v2, 0x800003

    invoke-virtual {v0, p1, v5, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 26
    :goto_1
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;->popupWindow:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public final hidePop()V
    .locals 2

    .line 1
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_SEND_TO_ALL"

    invoke-virtual {v0, v1}, Lja/a;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;->popupWindow:Landroid/widget/PopupWindow;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final setPopupWindow(Landroid/widget/PopupWindow;)V
    .locals 0
    .param p1    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;->popupWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method public final showPopupIfNeed(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_SEND_TO_ALL"

    invoke-virtual {v0, v1}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/w;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/w;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
