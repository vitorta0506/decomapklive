.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->onCreateDanmuProvider()Lv7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;Lcom/guochao/faceshow/aaspring/danmu/b;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/danmu/b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const v1, 0x7f0a080d

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0255

    .line 4
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a00f0

    .line 5
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/views/DrawableView;

    const v4, 0x7f0a0e14

    .line 6
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const v5, 0x7f0a07c9

    .line 7
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/views/DrawableView;

    const v6, 0x7f0a0104

    .line 8
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v7

    iget v7, v7, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mvpDanmu:I

    sget v8, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->MVP_DANMU_ON:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x2

    const/16 v11, 0x8

    if-eqz v7, :cond_4

    .line 10
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "#FFC000"

    .line 12
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p1, "#FFFFFF"

    .line 13
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/danmu/b;->e()I

    move-result p1

    if-eq p1, v9, :cond_3

    if-eq p1, v8, :cond_2

    const p1, 0x7f08029d

    .line 15
    invoke-virtual {v6, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const p1, 0x7f08029c

    .line 16
    invoke-virtual {v6, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    const p1, 0x7f08029b

    .line 17
    invoke-virtual {v6, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f060145

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v7, 0x7f0603ce

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 21
    invoke-virtual {v4, v8}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    .line 22
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 23
    invoke-virtual {v6, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v1, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserAvatar()Ljava/lang/String;

    move-result-object p1

    .line 27
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->access$100(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const-string v2, ".gif"

    if-eqz v1, :cond_5

    .line 28
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    iget-object v6, v6, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/views/DrawableView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 29
    :cond_5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f0089

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/views/DrawableView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 32
    invoke-virtual {p2, v8}, Lcom/guochao/faceshow/aaspring/danmu/b;->f(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/e;

    if-eqz v1, :cond_6

    .line 33
    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/views/DrawableView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 34
    :cond_6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lic/a;->d(Landroidx/fragment/app/FragmentActivity;)Lic/d;

    move-result-object v1

    invoke-virtual {v1}, Lic/d;->D()Lic/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lic/c;->B1(Ljava/lang/String;)Lic/c;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;

    invoke-direct {v3, p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;Lcom/guochao/faceshow/aaspring/danmu/b;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    goto :goto_2

    .line 35
    :cond_7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lic/a;->d(Landroidx/fragment/app/FragmentActivity;)Lic/d;

    move-result-object v1

    invoke-virtual {v1}, Lic/d;->B()Lic/c;

    move-result-object v1

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>()V

    invoke-virtual {v1, v3}, Lic/c;->Q1(Le0/h;)Lic/c;

    move-result-object v1

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-virtual {v1, v3}, Lic/c;->G1(I)Lic/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lic/c;->B1(Ljava/lang/String;)Lic/c;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$b;

    invoke-direct {v3, p0, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;Lcom/guochao/faceshow/aaspring/danmu/b;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    goto :goto_2

    .line 36
    :cond_8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/views/DrawableView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    :goto_2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getMvpUrl()Ljava/lang/String;

    move-result-object v1

    .line 38
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->access$400(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_9

    .line 39
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, p1}, Lcom/guochao/faceshow/aaspring/views/DrawableView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 40
    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 41
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, 0x3

    .line 43
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/danmu/b;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 44
    invoke-virtual {v5, v0}, Lcom/guochao/faceshow/aaspring/views/DrawableView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 45
    :cond_a
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lic/a;->d(Landroidx/fragment/app/FragmentActivity;)Lic/d;

    move-result-object v0

    invoke-virtual {v0}, Lic/d;->D()Lic/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lic/c;->B1(Ljava/lang/String;)Lic/c;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$c;

    invoke-direct {v1, p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;Lcom/guochao/faceshow/aaspring/danmu/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    goto :goto_3

    .line 46
    :cond_b
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lic/a;->d(Landroidx/fragment/app/FragmentActivity;)Lic/d;

    move-result-object p1

    invoke-virtual {p1}, Lic/d;->B()Lic/c;

    move-result-object p1

    invoke-virtual {p1}, Lic/c;->t1()Lic/c;

    move-result-object p1

    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lic/c;->H1(II)Lic/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lic/c;->B1(Ljava/lang/String;)Lic/c;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$d;

    invoke-direct {v1, p0, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;Lcom/guochao/faceshow/aaspring/danmu/b;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    goto :goto_3

    .line 47
    :cond_c
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_3
    return-void
.end method

.method public onCreateView(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    iget-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mLTR:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d02f3

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d02f4

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
