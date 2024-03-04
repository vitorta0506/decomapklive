.class public Lcom/guochao/faceshow/userhomepage/view/UserTrankTopView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/userhomepage/view/UserTrankTopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/userhomepage/view/UserTrankTopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/view/UserTrankTopView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d045c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a079b

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserTrankTopView;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0be3

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserTrankTopView;->b:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a079c

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserTrankTopView;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setData(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/view/UserTrankTopView;->d:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserTrankTopView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_5

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;->img:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    new-instance v2, Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/views/NormalCircleImageView;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v5

    invoke-static {v4}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    const/4 v5, -0x1

    .line 8
    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    const/high16 v4, 0x41700000    # 15.0f

    .line 9
    invoke-static {v4}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_3
    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    const/high16 v4, 0x41f00000    # 30.0f

    .line 10
    invoke-static {v4}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 11
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/guochao/faceshow/userhomepage/view/UserTrankTopView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;->img:Ljava/lang/String;

    invoke-static {v2, v3}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public setTrankTopClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserTrankTopView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
