.class public Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

.field private c:Landroid/view/LayoutInflater;

.field private d:I

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0d045d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0dea

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0deb

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/high16 v4, 0x42700000    # 60.0f

    .line 5
    invoke-static {v4}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    invoke-static {v4}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 9
    iget v3, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->d:I

    const/high16 v4, 0x41000000    # 8.0f

    if-lt p2, v3, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1205db

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060077

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 12
    invoke-static {v4}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result p2

    .line 13
    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 15
    invoke-static {v4}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v3

    iput v3, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 16
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p2, ""

    .line 17
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xa

    .line 18
    invoke-static {v1, p1, p2}, Lhc/a;->s(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0d045e

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a0de6

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    const v0, 0x7f0a0df3

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->a:Landroid/widget/LinearLayout;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120600

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->setTypeText(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    const v1, 0x7f0f0618

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->a:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v2

    .line 3
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v3

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/userhomepage/view/UserInfoHorizonTitleView;->setMoreClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->d:I

    .line 8
    :goto_1
    iget v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->d:I

    if-ge v4, v0, :cond_2

    .line 9
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->a(Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->a(Ljava/lang/String;I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setMomentsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoMomentsView;->e:Landroid/view/View$OnClickListener;

    return-void
.end method
