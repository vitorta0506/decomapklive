.class public Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->b()V

    return-void
.end method

.method private a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x41980000    # 19.0f

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v1, 0x41a00000    # 20.0f

    .line 4
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x40400000    # 3.0f

    .line 6
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->c:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    .line 8
    invoke-static {v4}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v5

    const/high16 v6, 0x41300000    # 11.0f

    .line 9
    invoke-static {v6}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v6

    .line 10
    invoke-static {v4}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v4

    .line 11
    invoke-virtual {v0, v3, v5, v6, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 13
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 15
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 16
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0455

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a0a85

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a0a86

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->b:Landroid/widget/TextView;

    const v0, 0x7f0a079b

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0a079d

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->d:Landroid/widget/TextView;

    const v0, 0x7f0a079c

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->e:Landroid/widget/ImageView;

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->a()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method

.method public setMoreArrowText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMoreClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTypeIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public setTypeText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
