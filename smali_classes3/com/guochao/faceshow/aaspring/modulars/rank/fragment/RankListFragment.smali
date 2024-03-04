.class public Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment<",
        "Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Landroid/view/View;

.field private g:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field k:Landroid/view/View;

.field l:Landroid/view/View;

.field m:Landroid/view/View;

.field mBottomTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mEmptyView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRealEmptyView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field n:Landroid/view/View;

.field o:[Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->e2(Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;)V

    return-void
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->m2(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->c2(Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;I)V

    return-void
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->k2(Ljava/util/List;)V

    return-void
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->l2(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;I)V

    return-void
.end method

.method public static b2(I)Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private c2(Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->g2(Landroid/view/View;I)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->Z1(Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;ILcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V

    return-void
.end method

.method private d2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->k:Landroid/view/View;

    const v1, 0x7f0a03d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->l:Landroid/view/View;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->k:Landroid/view/View;

    const v1, 0x7f0a0a29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->m:Landroid/view/View;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->k:Landroid/view/View;

    const v1, 0x7f0a0b83

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->n:Landroid/view/View;

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/view/View;

    .line 4
    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->o:[Landroid/view/View;

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->l:Landroid/view/View;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->m:Landroid/view/View;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->k:Landroid/view/View;

    const v2, 0x7f0a0259

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->b:I

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->k:Landroid/view/View;

    const v2, 0x7f06033a

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f0f0059

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->k:Landroid/view/View;

    const v2, 0x7f06033b

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f0f0057

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->k:Landroid/view/View;

    const v2, 0x7f06033c

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f0f004c

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private e2(Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00fd

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 4
    new-instance v2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {v2}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getUserSex()I

    move-result v3

    iput v3, v2, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getUserImg()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getLogo()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/bean/UserBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 10
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    const v1, 0x7f0a0dc5

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a053f

    .line 12
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0ddb

    .line 13
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 14
    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->b:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "h"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getNo()I

    move-result v4

    const-string v6, ""

    if-lez v4, :cond_2

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getNo()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const v4, 0x7f12068f

    .line 19
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    const/4 v2, 0x1

    .line 20
    invoke-static {v3, v2}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFont(Landroid/widget/TextView;I)V

    .line 21
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 22
    invoke-virtual {p1, v6}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->setNickName(Ljava/lang/String;)V

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_4

    .line 24
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v4, v3}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setMaxEcplise(Landroid/widget/TextView;ILjava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getNickName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v3, v6}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setMaxEcplise(Landroid/widget/TextView;ILjava/lang/String;)V

    :goto_2
    const v1, 0x7f0a04ef

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f0a064a

    .line 27
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/views/LevelView;

    .line 28
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getLevelName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/guochao/faceshow/aaspring/views/LevelView;->setLevel(Ljava/lang/String;)V

    const p1, 0x7f0a0a5f

    .line 29
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 30
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->b:I

    const-string v3, ":"

    if-eq v0, v2, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    if-eq v0, v5, :cond_5

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f12021c

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :cond_6
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    const v0, 0x7f0f00b2

    .line 33
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_9

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f120766

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    const v0, 0x7f0f03d2

    .line 35
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_9

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1207dc

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_3
    return-void
.end method

.method private f2(Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setGroupId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getLiveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setRoomID(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setNickName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getLiveType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveType(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getFlvUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setFlvUrl(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getLiveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getUserImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setImg(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getLiveImg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveCoverImg(Ljava/lang/String;)V

    const-string p1, "0"

    .line 11
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setStatus(Ljava/lang/String;)V

    const/16 p1, 0xc8

    .line 12
    invoke-static {v0, p0, p1}, Lcom/guochao/faceshow/utils/LiveInfoUtils;->jumpToBaseLiveRoomAct(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method private i2(Landroid/widget/ImageView;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    if-gt v0, p2, :cond_0

    const p2, 0x7f0801ce

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const p2, 0x7f0f00cd

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const p2, 0x7f0801c2

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private k2(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->removeFooterView(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->removeFooterView(Landroid/view/View;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->j:Landroid/view/View;

    const/16 v0, 0x6b

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addFooterView(Landroid/view/View;I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->mBottomTips:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->mBottomTips:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->mBottomTips:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->i:Landroid/view/View;

    const/16 v0, 0x6a

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addFooterView(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private l2(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->g:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getIsLive()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->X1(Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p1, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "userId"

    .line 6
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0xc8

    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private m2(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 7
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    .line 8
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    if-ge v3, v2, :cond_2

    .line 9
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_3

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p1
.end method


# virtual methods
.method public W1(Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;ILandroid/widget/ImageView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$d;

    invoke-direct {v1, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;Landroid/widget/ImageView;)V

    invoke-static {p1, p2, v0, v1}, Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method

.method public X1(Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->f2(Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;)V

    return-void
.end method

.method public Y1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;)V
    .locals 2

    if-nez p2, :cond_3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0803b6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0803b5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0803b4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f080361

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6
    :goto_0
    invoke-virtual {p0, p3, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->Z1(Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;ILcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V

    return-void
.end method

.method public Z1(Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;ILcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V
    .locals 10

    const v0, 0x7f0a04ef

    .line 1
    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0a5f

    .line 2
    invoke-virtual {p3, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->b:I

    const-string v3, ":"

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v2, v6, :cond_2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_1

    if-eq v2, v5, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_3

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f12021c

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f0f00b2

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v1, :cond_3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f120766

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const v2, 0x7f0f03d2

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v1, :cond_3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1207dc

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    const v0, 0x7f0a0259

    .line 10
    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const v0, 0x7f0a0208

    .line 12
    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 13
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$b;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v0, 0x7f0a0329

    .line 14
    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const v0, 0x7f0a053f

    .line 16
    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    const v0, 0x7f0a0ddb

    .line 18
    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0a0dc5

    .line 19
    invoke-virtual {p3, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 20
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->b:I

    if-ne v3, v5, :cond_8

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "h"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 22
    :cond_8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v3, 0x7f0a00fd

    .line 23
    invoke-virtual {p3, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 24
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 25
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getNo()I

    move-result v7

    const/4 v8, 0x4

    if-gt v7, v5, :cond_a

    .line 26
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v8, v4}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setMaxEcplise(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getIsLive()I

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->setLivingStatus(Z)V

    goto :goto_3

    .line 28
    :cond_a
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getNickName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v7}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setMaxEcplise(Landroid/widget/TextView;ILjava/lang/String;)V

    const v2, 0x7f0a06b6

    .line 29
    invoke-virtual {p3, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 30
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 31
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getIsLive()I

    move-result v7

    const v9, 0x7f0a06b5

    if-ne v7, v6, :cond_c

    .line 32
    instance-of v7, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_b

    .line 33
    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 34
    :cond_b
    invoke-virtual {p3, v9}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 35
    :cond_c
    instance-of v4, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v4, :cond_d

    .line 36
    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 37
    :cond_d
    invoke-virtual {p3, v9}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :goto_3
    invoke-static {v0, v6}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFont(Landroid/widget/TextView;I)V

    .line 39
    new-instance v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getUserSex()I

    move-result v2

    iput v2, v0, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    .line 42
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getUserImg()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getLogo()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/bean/UserBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 45
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getIsLive()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->i(Lp7/h;I)V

    const v0, 0x7f0a064a

    .line 46
    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/LevelView;

    .line 47
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getLevelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/LevelView;->setLevel(Ljava/lang/String;)V

    const v0, 0x7f0a042f

    .line 48
    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 49
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 50
    invoke-virtual {p3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 51
    :cond_e
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getIsAttention()I

    move-result v0

    if-ne v0, v6, :cond_10

    .line 53
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getNo()I

    move-result v0

    if-gt v0, v5, :cond_f

    const v0, 0x7f0801ce

    .line 54
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_f
    const v0, 0x7f0f00cd

    .line 55
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 56
    :cond_10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getNo()I

    move-result v0

    if-gt v0, v5, :cond_11

    const v0, 0x7f080294

    .line 57
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_11
    const v0, 0x7f0801c2

    .line 58
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    :goto_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getNo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 60
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;ILandroid/widget/ImageView;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a2()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->a:I

    return v0
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->Y1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;)V

    return-void
.end method

.method public g2(Landroid/view/View;I)V
    .locals 1

    const p2, 0x7f0a0259

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0329

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getFragmentConfig()Lcom/guochao/faceshow/aaspring/base/fragment/e;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->c(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->a()Lcom/guochao/faceshow/aaspring/base/fragment/e;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01ca

    return v0
.end method

.method public h2(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;)V
    .locals 1

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1, p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->l2(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;I)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->j2(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "userId"

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->e:Ljava/lang/String;

    .line 3
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->initView(Landroid/view/View;)V

    const v1, 0x7f0a0ab7

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->mRealEmptyView:Landroid/view/View;

    const v2, 0x7f0a0259

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->f:Landroid/view/View;

    .line 6
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->b:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f06033a

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->f:Landroid/view/View;

    const v1, 0x7f0f0059

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const-string p1, "tokens/ranking/durationList"

    .line 9
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const v1, 0x7f06033b

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->f:Landroid/view/View;

    const v1, 0x7f0f0057

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const-string p1, "tokens/ranking/starList"

    .line 12
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const v1, 0x7f06033c

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const-string p1, "tokens/ranking/richList"

    .line 14
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->d:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->f:Landroid/view/View;

    const v1, 0x7f0f004c

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 16
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d0328

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p1, v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->k:Landroid/view/View;

    .line 17
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->d2()V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->k:Landroid/view/View;

    const/16 v1, 0x69

    invoke-virtual {p0, p1, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addHeaderView(Landroid/view/View;I)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d0327

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p1, v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->i:Landroid/view/View;

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d041f

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p1, v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->j:Landroid/view/View;

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->i:Landroid/view/View;

    const v1, 0x7f0a0bac

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->h:Landroid/widget/TextView;

    :goto_1
    if-ge v0, v2, :cond_3

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->o:[Landroid/view/View;

    aget-object p1, p1, v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->c2(Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public j2(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->a:I

    return-void
.end method

.method public loadData(I)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->a:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x63

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->h:Landroid/widget/TextView;

    const v1, 0x7f12075e

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->mBottomTips:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->h:Landroid/widget/TextView;

    const v1, 0x7f12075f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->mBottomTips:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->h:Landroid/widget/TextView;

    const v1, 0x7f12075d

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->mBottomTips:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->a:I

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->b(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    const-string p2, "data"

    .line 2
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->g:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    if-eqz p1, :cond_3

    const p3, 0x7f0a042f

    .line 4
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 5
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->i2(Landroid/widget/ImageView;Z)V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->b:I

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0392

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
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->h2(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;)V

    return-void
.end method

.method public showEmptyView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->showEmptyView()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->o:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->c2(Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
