.class public Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

.field private c:Landroid/view/LayoutInflater;

.field private d:I

.field private e:Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;)Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView$b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->e:Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView$b;

    return-object p0
.end method

.method private b(Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData$GroupInfoItemData;I)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0457

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0dcc

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/views/NormalCircleImageView;

    const v2, 0x7f0a0dce

    .line 3
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0a0dcd

    .line 4
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0dcb

    .line 5
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a0dca

    .line 6
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v7, 0x42200000    # 40.0f

    .line 8
    invoke-static {v7}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 9
    invoke-static {v7}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v7

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/high16 v7, 0x40e00000    # 7.0f

    .line 10
    invoke-static {v7}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/high16 v8, 0x40c00000    # 6.0f

    .line 11
    invoke-static {v8}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v9

    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 12
    invoke-static {v8}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v9

    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 13
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 15
    invoke-static {v8}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 16
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41a00000    # 20.0f

    .line 17
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v2

    .line 18
    invoke-static {v7}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v6

    const/high16 v8, 0x41200000    # 10.0f

    .line 19
    invoke-static {v8}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v8

    .line 20
    invoke-static {v7}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v7

    .line 21
    invoke-virtual {v5, v2, v6, v8, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 22
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f060077

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v6

    .line 23
    invoke-static {v2, v6}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object v2, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 25
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData$GroupInfoItemData;->group_name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData$GroupInfoItemData;->introduction:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData$GroupInfoItemData;->img:Ljava/lang/String;

    invoke-static {v1, v2}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    if-lez p2, :cond_1

    .line 28
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    invoke-static {v5}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v1

    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 30
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    :cond_1
    new-instance p2, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView$a;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView$a;-><init>(Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData$GroupInfoItemData;)V

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0458

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a04a1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    const v0, 0x7f0a04a5

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->a:Landroid/widget/LinearLayout;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->setTypeText(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    const v1, 0x7f0f0616

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
            "Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData$GroupInfoItemData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->a:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v2

    .line 4
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v3

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->d:I

    .line 7
    :goto_1
    iget v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->d:I

    if-ge v4, v0, :cond_2

    .line 8
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData$GroupInfoItemData;

    invoke-direct {p0, v0, v4}, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->b(Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData$GroupInfoItemData;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public setOnGroupItemClickListener(Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->e:Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView$b;

    return-void
.end method

.method public setOnMoreClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->setMoreClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
