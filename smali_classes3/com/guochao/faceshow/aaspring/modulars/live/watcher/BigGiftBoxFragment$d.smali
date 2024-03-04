.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;I)V
    .locals 9
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->getBestLuck()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ar"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->bestLuck:Landroid/widget/TextView;

    const v4, 0x7f080494

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->bestLuck:Landroid/widget/TextView;

    const v4, 0x7f080493

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 5
    :goto_0
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->bestLuck:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->bestLuck:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    :goto_1
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->a:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp7/h;

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 8
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->mUserNameView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->a:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->getUserNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->mCount:Landroid/widget/TextView;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->a:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->getHappyMoney()Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->a:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->getHappyMoney()Ljava/lang/Float;

    move-result-object v5

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->a:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->getMoney()Ljava/lang/String;

    move-result-object v5

    :goto_2
    aput-object v5, v4, v3

    const-string v5, "+%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;

    new-array v7, v2, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->getHappyMoney()Ljava/lang/Float;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->getHappyMoney()Ljava/lang/Float;

    move-result-object v6

    goto :goto_4

    :cond_4
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->getMoney()Ljava/lang/String;

    move-result-object v6

    :goto_4
    aput-object v6, v7, v3

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 15
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 16
    :cond_5
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->mCountWeight:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->iconSmallCoin:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->getHappyMoney()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_6

    const v2, 0x7f0f020a

    goto :goto_5

    :cond_6
    const v2, 0x7f0f039c

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->mUserNameView:Landroid/widget/TextView;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 21
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    goto :goto_6

    .line 22
    :cond_7
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 23
    :goto_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d$a;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0393

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->b(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->c(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;

    move-result-object p1

    return-object p1
.end method
