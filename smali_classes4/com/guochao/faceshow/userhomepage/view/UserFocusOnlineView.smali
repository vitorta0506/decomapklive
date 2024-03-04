.class public Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->a()V

    return-void
.end method

.method private a()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0456

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a05b4

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->i:Landroid/widget/ImageView;

    const v0, 0x7f0a0dc9

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0dcf

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0435

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->e:Landroid/view/View;

    const v0, 0x7f0a0436

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0842

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->g:Landroid/widget/TextView;

    const v0, 0x7f0a0700

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0d1b

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->h:Landroid/widget/TextView;

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->a:Landroid/widget/LinearLayout;

    .line 13
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060357

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v5

    .line 14
    invoke-static {v2, v5}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->b:Landroid/widget/LinearLayout;

    .line 16
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v4}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v3

    .line 17
    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->a:Landroid/widget/LinearLayout;

    const v2, 0x7f0800a9

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->b:Landroid/widget/LinearLayout;

    const v2, 0x7f0801b8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->c:Landroid/widget/LinearLayout;

    const v2, 0x7f0801c3

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getFocusShowStatus()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120684

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1203a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getOnlineText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFocusClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFocusDismiss(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->i:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->h:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/b;->c(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    return-void
.end method

.method public setFocusText(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120684

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->f:Landroid/widget/TextView;

    const-string v1, "#B9B9B9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnLikeClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnlineClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnlineText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setViewState(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->getFocusShowStatus()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->i:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/guochao/faceshow/userhomepage/view/UserFocusOnlineView;->h:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/b;->c(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    return-void
.end method
