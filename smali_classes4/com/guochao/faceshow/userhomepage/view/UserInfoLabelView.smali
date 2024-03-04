.class public Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

.field private b:Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;->c:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;Ljava/lang/String;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;->c(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;->c:Landroid/content/Context;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Landroid/view/View;
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060357

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/high16 v3, 0x40e00000    # 7.0f

    .line 6
    invoke-static {v3}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v3

    .line 7
    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x11

    .line 8
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v2, 0x40c00000    # 6.0f

    .line 9
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v3

    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v4

    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v5

    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v2

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 11
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x41100000    # 9.0f

    .line 12
    invoke-static {v3}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 13
    invoke-static {v3}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/high16 v3, 0x41200000    # 10.0f

    .line 14
    invoke-static {v3}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 15
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0459

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a060c

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;->a:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    const v0, 0x7f0a060d

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;->b:Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;->a:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->c()V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;->a:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120601

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->setTypeText(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;->a:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    const v1, 0x7f0f0617

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->setTypeIcon(I)V

    return-void
.end method


# virtual methods
.method public setData(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;->b:Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;->b:Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    .line 4
    invoke-static {v3}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v3

    const/high16 v4, 0x41880000    # 17.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v4

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 6
    new-instance v0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView$a;-><init>(Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;Ljava/util/List;)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;->b:Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->setAdapter(Lcom/guochao/faceshow/views/flowlayout/a;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;->b:Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;

    new-instance v1, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView$b;-><init>(Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->setOnTagClickListener(Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout$c;)V

    :cond_1
    :goto_0
    return-void
.end method
