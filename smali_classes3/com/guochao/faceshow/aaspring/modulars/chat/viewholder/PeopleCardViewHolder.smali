.class public Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field b:Landroid/view/View;

.field private c:Ljava/lang/String;

.field d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

.field e:I

.field f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->f:Landroid/view/View$OnClickListener;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->b:Landroid/view/View;

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->g0()Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->i()V

    return-void
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->c:Ljava/lang/String;

    return-object p0
.end method

.method private h()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/imsdk/v2/V2TIMManager;->getUsersInfo(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method

.method private i()V
    .locals 14

    const v0, 0x7f0a0e14

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const v1, 0x7f0a0d97

    .line 2
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0d95

    .line 3
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a0d84

    .line 4
    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0dbe

    .line 5
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/views/LevelView;

    const v4, 0x7f0a0d98

    .line 6
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f0a0d96

    .line 7
    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a0d85

    .line 8
    invoke-virtual {p0, v6}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a07cb

    .line 9
    invoke-virtual {p0, v7}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 10
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 11
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v8

    iget-object v8, v8, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->mvpUrl:Ljava/lang/String;

    .line 12
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x1

    xor-int/2addr v9, v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-eqz v9, :cond_0

    .line 13
    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    invoke-static {v7}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/g;

    invoke-virtual {v8, v7}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    :goto_0
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v7

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 17
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v7

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v7

    if-lez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_2

    .line 18
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v8

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getLevel()I

    move-result v0

    invoke-direct {p0, v9, v10, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->k(ZZI)V

    goto :goto_2

    .line 21
    :cond_2
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getLevel()I

    move-result v0

    invoke-direct {p0, v9, v12, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->k(ZZI)V

    .line 23
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getAge()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 24
    :goto_3
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v8

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getGender()I

    move-result v8

    if-eqz v8, :cond_5

    if-eq v8, v10, :cond_4

    .line 25
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 26
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v5, 0x7f0f0301

    .line 27
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v5, 0x7f08033b

    .line 28
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_4

    :cond_4
    const v8, 0x7f0f02ea

    .line 29
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    const v10, 0x7f080339

    .line 30
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 31
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_4

    :cond_5
    const v8, 0x7f0f02de

    .line 33
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    const v10, 0x7f080338

    .line 34
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 35
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_4
    if-nez v0, :cond_6

    .line 37
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 39
    :cond_6
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getAge()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getAge()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    if-eqz v9, :cond_7

    if-eqz v7, :cond_7

    .line 44
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 45
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 46
    :cond_7
    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 47
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    :goto_6
    return-void
.end method

.method private k(ZZI)V
    .locals 5

    const v0, 0x7f0a0dbe

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/LevelView;

    const v1, 0x7f0a0dbf

    .line 2
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/LevelView;

    const v2, 0x7f0a03c7

    .line 3
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/views/LevelView;->setLevel(I)V

    .line 6
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    invoke-virtual {v1, p3}, Lcom/guochao/faceshow/aaspring/views/LevelView;->setLevel(I)V

    .line 10
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 p2, 0x40c00000    # 6.0f

    .line 11
    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    invoke-virtual {p1, v4, p2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_1
    return-void
.end method


# virtual methods
.method public f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->b:Landroid/view/View;

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->b:Landroid/view/View;

    const v3, 0x7f0a013f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->b:Landroid/view/View;

    const v4, 0x7f0a07e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 5
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->b:Landroid/view/View;

    const v5, 0x7f0a0da6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/views/NormalCircleImageView;

    .line 6
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getAvatar()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getGender()I

    move-result v6

    invoke-static {v0, v5, v6}, Lhc/a;->e(Landroid/widget/ImageView;Ljava/lang/String;I)V

    const v0, 0x7f0f0233

    .line 7
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v0}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getNickName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v3, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setMaxEcplise(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 11
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v0

    if-lez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->a:Landroid/content/Context;

    const v2, 0x7f0600a4

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderColor(I)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->a:Landroid/content/Context;

    const v2, 0x7f0603ce

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderColor(I)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getCountryFlag()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0f0122

    invoke-static {v4, v0, v2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->b:Landroid/view/View;

    const v2, 0x7f0a0255

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->c:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->h()V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->f()V

    return-void
.end method

.method public j(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAge()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->e:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->e:I

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setAge(I)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->i()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->b:Landroid/view/View;

    const v1, 0x7f0a03c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getFensiNum()I

    move-result p1

    const/16 v1, 0x3e7

    const v2, 0x7f1202f7

    if-gt p1, v1, :cond_2

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const v1, 0xf423f

    const-string v3, ":"

    if-ge p1, v1, :cond_3

    .line 8
    div-int/lit16 p1, p1, 0x3e8

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->a:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "k"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_3
    div-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x3e8

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->a:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "m"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public l(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0ab5

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$c;

    invoke-direct {v1, p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;Landroid/widget/Space;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Space;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
