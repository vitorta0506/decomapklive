.class public Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$c;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FAQTypesData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->c:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private c()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->b:Landroid/widget/LinearLayout;

    .line 4
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->b:Landroid/widget/LinearLayout;

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/Tool;->setViewPadding(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->b:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    .line 8
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v2

    .line 9
    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 12
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080346

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 14
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x42480000    # 50.0f

    .line 15
    invoke-static {v0}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 16
    new-instance v0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$a;-><init>(Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v0, 0x43160000    # 150.0f

    .line 17
    invoke-static {v0}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v0

    .line 18
    invoke-static {p0, v0, v2}, Lcom/guochao/faceshow/utils/Tool;->createPopWindowInstance(Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->c:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public e(Ljava/util/List;Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FAQTypesData;",
            ">;",
            "Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$c;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->a:Ljava/util/List;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->a:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/FAQTypesData;

    .line 6
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42200000    # 40.0f

    .line 9
    invoke-static {v4}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    .line 11
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 12
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 13
    iget-object v3, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/FAQTypesData;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/FAQTypesData;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    new-instance v3, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$b;

    invoke-direct {v3, p0, p2, v1, v0}, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$b;-><init>(Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$c;Lcom/guochao/faceshow/aaspring/beans/FAQTypesData;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_1

    .line 17
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 18
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060283

    .line 19
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 20
    iget-object v3, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->c:Landroid/widget/PopupWindow;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_1
    :goto_0
    return-void
.end method
