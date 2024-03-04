.class public final Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->refreshRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016J\u0016\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0018\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0016\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "com/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/guochao/faceshow/adapter/BaseViewHolder;",
        "getItemCount",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "setImageResource",
        "imageView",
        "Landroid/widget/ImageView;",
        "rewardBean",
        "Lcom/guochao/faceshow/signin/bean/RewardList;",
        "setNumberText",
        "textView",
        "Landroid/widget/TextView;",
        "setTextName",
        "lib_sign_in_release"
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
.field final synthetic this$0:Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;->this$0:Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;->this$0:Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->getTaskBean()Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getPrizeVoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;->onBindViewHolder(Lcom/guochao/faceshow/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/adapter/BaseViewHolder;I)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;->this$0:Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x2

    .line 5
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->getTaskBean()Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getPrizeVoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/signin/bean/RewardList;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, p1, v3}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;->setNumberText(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->getTaskBean()Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getPrizeVoList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/signin/bean/RewardList;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0, v2, p1}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;->setTextName(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    .line 9
    invoke-virtual {p0, v1, p1}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/guochao/faceshow/adapter/BaseViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/guochao/faceshow/signin/R$layout;->item_grow_gift_bag:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/signin/bean/RewardList;)V
    .locals 3
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/signin/bean/RewardList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeAttribute()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 2
    sget v0, Lcom/guochao/faceshow/signin/R$mipmap;->gift_clip_light:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 5
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 6
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4

    .line 8
    sget p2, Lcom/guochao/faceshow/signin/R$mipmap;->icon_signin_fifth:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_4
    :goto_2
    const/4 v1, 0x1

    if-nez v0, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 10
    sget p2, Lcom/guochao/faceshow/signin/R$mipmap;->icon_signin_first:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_6
    :goto_3
    const/4 v1, 0x2

    if-nez v0, :cond_7

    goto :goto_4

    .line 11
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 12
    sget p2, Lcom/guochao/faceshow/signin/R$mipmap;->icon_signin_shuijing:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 13
    :cond_8
    :goto_4
    invoke-static {p1}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getRewardImg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    :goto_5
    return-void
.end method

.method public final setNumberText(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V
    .locals 8
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/signin/bean/RewardList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_11

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;->this$0:Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeUseDay()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3
    :goto_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeAttribute()Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x78

    if-nez v3, :cond_1

    goto/16 :goto_9

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_f

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeType()Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    if-nez v3, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_4

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeNum()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_4
    :goto_1
    const/4 v5, 0x4

    const/4 v6, 0x0

    if-nez v3, :cond_5

    goto :goto_3

    .line 7
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v5, :cond_7

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_6

    sget v3, Lcom/guochao/faceshow/signin/R$string;->f_dress_day:I

    goto :goto_2

    :cond_6
    sget v3, Lcom/guochao/faceshow/signin/R$string;->f_dress_days:I

    :goto_2
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_7
    :goto_3
    const/4 v5, 0x5

    if-nez v3, :cond_8

    goto :goto_5

    .line 9
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v5, :cond_a

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_9

    sget v3, Lcom/guochao/faceshow/signin/R$string;->f_dress_day:I

    goto :goto_4

    :cond_9
    sget v3, Lcom/guochao/faceshow/signin/R$string;->f_dress_days:I

    :goto_4
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_a
    :goto_5
    const/4 v5, 0x6

    if-nez v3, :cond_b

    goto :goto_7

    .line 11
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_d

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_c

    sget v3, Lcom/guochao/faceshow/signin/R$string;->f_dress_day:I

    goto :goto_6

    :cond_c
    sget v3, Lcom/guochao/faceshow/signin/R$string;->f_dress_days:I

    :goto_6
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 13
    :cond_d
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeNum()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    return-void

    .line 14
    :cond_f
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeNum()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    return-void
.end method

.method public final setTextName(Landroid/widget/TextView;Lcom/guochao/faceshow/signin/bean/RewardList;)V
    .locals 3
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/signin/bean/RewardList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeAttribute()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_9

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeType()Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x3

    if-nez p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;->this$0:Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;

    sget v0, Lcom/guochao/faceshow/signin/R$string;->signin_task_gift_chips:I

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    :goto_0
    const/4 v0, 0x4

    if-nez p2, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;->this$0:Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;

    sget v0, Lcom/guochao/faceshow/signin/R$string;->signin_task_touxiangkuang_chips:I

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    :goto_1
    const/4 v0, 0x5

    if-nez p2, :cond_5

    goto :goto_2

    .line 7
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;->this$0:Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;

    sget v0, Lcom/guochao/faceshow/signin/R$string;->signin_task_gongliao_chips:I

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v0, 0x6

    if-nez p2, :cond_7

    goto :goto_3

    .line 9
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_8

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;->this$0:Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;

    sget v0, Lcom/guochao/faceshow/signin/R$string;->signin_task_zuojia_chips:I

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_3
    return-void

    .line 11
    :cond_9
    :goto_4
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_5

    .line 12
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_b

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;->this$0:Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;

    sget v0, Lcom/guochao/faceshow/signin/R$string;->signin_perday_result_fifth:I

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_b
    :goto_5
    const/4 v1, 0x1

    if-nez v0, :cond_c

    goto :goto_6

    .line 14
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_d

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;->this$0:Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;

    sget v0, Lcom/guochao/faceshow/signin/R$string;->signin_reward_diamond:I

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_d
    :goto_6
    const/4 v1, 0x2

    if-nez v0, :cond_e

    goto :goto_7

    .line 16
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_f

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;->this$0:Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;

    sget v0, Lcom/guochao/faceshow/signin/R$string;->recharge_crystal:I

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 18
    :cond_f
    :goto_7
    invoke-virtual {p2}, Lcom/guochao/faceshow/signin/bean/RewardList;->getRewardName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    return-void
.end method
