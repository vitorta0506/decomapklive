.class public Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity<",
        "Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/mine/model/HobbyBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;-><init>()V

    return-void
.end method

.method public static e0(Landroid/content/Context;Lcom/guochao/faceshow/mine/model/HobbyBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "data"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public b0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/modulars/personal/d$b;)V
    .locals 9

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    const v0, 0x7f0a00f0

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    const v1, 0x7f0a0d1c

    .line 3
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0d06

    .line 4
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0d1d

    .line 5
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0c72

    .line 6
    invoke-virtual {p1, v4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a01da

    .line 7
    invoke-virtual {p1, v5}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/ChipGroup;

    .line 8
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;->g()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0f008a

    invoke-static {v0, v5, v6}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v1, v5, v6}, Lcom/guochao/faceshow/utils/TimeUtil;->getLableTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 13
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x4

    .line 16
    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v3, p2

    const-string v1, "{0}km"

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v1, 0x0

    .line 18
    :goto_1
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 19
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/personal/d$a;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$a;->a()I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;->a:Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getHobbyId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 20
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/personal/d$a;

    .line 21
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/personal/d$a;

    invoke-interface {v3, p2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/personal/d$a;

    .line 24
    new-instance v2, Lcom/google/android/material/chip/Chip;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41400000    # 12.0f

    .line 25
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 26
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_3

    .line 28
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v3

    const v4, 0x7f060072

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v3

    const v4, 0x7f0600a7

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    :goto_3
    const/high16 v3, 0x40a00000    # 5.0f

    .line 30
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/Chip;->setChipCornerRadius(F)V

    .line 31
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x42180000    # 38.0f

    .line 32
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$b;

    invoke-direct {v3, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;Lcom/guochao/faceshow/aaspring/modulars/personal/d$a;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 35
    :cond_4
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$c;

    invoke-direct {p1, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;->b0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/modulars/personal/d$b;)V

    return-void
.end method

.method public d0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/modulars/personal/d$b;)V
    .locals 0

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->initView()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/mine/model/HobbyBean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;->a:Lcom/guochao/faceshow/mine/model/HobbyBean;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getTags()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public loadData(I)V
    .locals 3

    const-string v0, "tokens/hobby/findHobbyDetail"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;->a:Lcom/guochao/faceshow/mine/model/HobbyBean;

    .line 2
    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getHobbyId()I

    move-result v1

    const-string v2, "hobbyId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "limit"

    const/16 v2, 0x14

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "page"

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;I)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00e3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;->d0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/modulars/personal/d$b;)V

    return-void
.end method
