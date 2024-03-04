.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$VoiceRoomListViewHolder;,
        Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;,
        Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$HistoryListViewHolder;,
        Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$HistoryViewHolder;,
        Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;,
        Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static g:I = 0x7d1

.field public static h:I = 0x7d2


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Landroid/view/LayoutInflater;

.field private e:Z

.field private f:Lz9/a;

.field ivImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvHeadName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->f:Lz9/a;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->c:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->d:Landroid/view/LayoutInflater;

    return-void
.end method

.method private a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v0

    sget v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->g:I

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const p1, 0x186a3

    return p1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result p1

    sget v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->h:I

    if-ne p1, v0, :cond_4

    return v0

    :cond_4
    const p1, 0x186a5

    return p1

    :cond_5
    :goto_0
    const p1, 0x186a4

    return p1

    :cond_6
    :goto_1
    const p1, 0x186a2

    return p1

    :cond_7
    :goto_2
    const p1, 0x186a1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eqz v0, :cond_4

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;->lineView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v0

    const v3, 0x7f0f021a

    if-ne v0, v1, :cond_0

    .line 4
    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;->tvHeadName:Landroid/widget/TextView;

    const v0, 0x7f12041d

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_1

    .line 7
    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;->tvHeadName:Landroid/widget/TextView;

    const v0, 0x7f120959

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v0

    sget v3, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->g:I

    if-ne v0, v3, :cond_2

    .line 10
    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;->tvHeadName:Landroid/widget/TextView;

    const v0, 0x7f12095a

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;->lineView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getImageModel()I

    move-result p2

    const v0, 0x7f0f0300

    const v2, 0x7f120071

    if-ne p2, v1, :cond_3

    .line 13
    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;->tvHeadName:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 14
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c

    .line 15
    :cond_3
    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;->tvHeadName:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 16
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c

    .line 17
    :cond_4
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_10

    .line 18
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a()Z

    move-result v0

    const/4 v1, 0x3

    const v7, 0x7f080146

    if-eqz v0, :cond_8

    if-ge p2, v2, :cond_8

    if-ne p2, v6, :cond_5

    .line 19
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->bgRL:Landroid/view/View;

    const v7, 0x7f080143

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_5
    if-ne p2, v4, :cond_6

    .line 20
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->bgRL:Landroid/view/View;

    const v7, 0x7f080144

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_6
    if-ne p2, v1, :cond_7

    .line 21
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->bgRL:Landroid/view/View;

    const v7, 0x7f080145

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 22
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->bgRL:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 23
    :cond_8
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->bgRL:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 24
    :goto_0
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->llRecommendedItem:Landroid/widget/LinearLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    if-nez p2, :cond_9

    .line 25
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->viewBg:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 26
    :cond_9
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->viewBg:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    if-ne v0, p2, :cond_a

    .line 28
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->viewLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 29
    :cond_a
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->viewLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 31
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->tvItemRight:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->tvItemName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 34
    :cond_b
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getImageModel()I

    move-result v0

    const v3, 0x7f1201f2

    const-string v7, "%s  %s"

    if-ne v0, v6, :cond_c

    .line 35
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->ivImage:Landroid/widget/ImageView;

    const v1, 0x7f0f0188

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->tvItemName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getTopicName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->tvItemRight:Landroid/widget/TextView;

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getPartakeTimes()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v5

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->c:Landroid/content/Context;

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v6

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 38
    :cond_c
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getImageModel()I

    move-result v0

    const v8, 0x7f0f02ed

    if-ne v0, v4, :cond_d

    .line 39
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->tvItemName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getTopicName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->tvItemRight:Landroid/widget/TextView;

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getPartakeTimes()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v5

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->c:Landroid/content/Context;

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v6

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 42
    :cond_d
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getImageModel()I

    move-result v0

    if-ne v0, v1, :cond_e

    .line 43
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->ivImage:Landroid/widget/ImageView;

    const v1, 0x7f0f02e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->tvItemName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getPlaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->tvItemRight:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->c:Landroid/content/Context;

    const v1, 0x7f120966

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getPartakeTimes()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 46
    :cond_e
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getImageModel()I

    move-result v0

    if-ne v0, v2, :cond_f

    .line 47
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->tvItemName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getMname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->tvItemRight:Landroid/widget/TextView;

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getNumbers()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v5

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->c:Landroid/content/Context;

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v6

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 50
    :cond_f
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->tvItemName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getPlaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;->tvItemRight:Landroid/widget/TextView;

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getPartakeTimes()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v5

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->c:Landroid/content/Context;

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v6

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 52
    :cond_10
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$HistoryListViewHolder;

    const/4 v7, 0x7

    if-eqz v0, :cond_13

    .line 53
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$HistoryListViewHolder;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$HistoryListViewHolder;->ivItemRight:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    if-ne v0, p2, :cond_11

    .line 56
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$HistoryListViewHolder;->viewLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 57
    :cond_11
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$HistoryListViewHolder;->viewLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :goto_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v0

    if-ne v0, v7, :cond_12

    .line 59
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$HistoryListViewHolder;->tvItemName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getMname()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 60
    :cond_12
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$HistoryListViewHolder;->tvItemName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getTopicName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 61
    :cond_13
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$HistoryViewHolder;

    if-eqz v0, :cond_14

    .line 62
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$HistoryViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$HistoryViewHolder;->tvHeadName:Landroid/widget/TextView;

    const p2, 0x7f120957

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_c

    .line 63
    :cond_14
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$VoiceRoomListViewHolder;

    if-eqz v0, :cond_15

    .line 64
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$VoiceRoomListViewHolder;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->voiceRoomInfoModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz p2, :cond_24

    .line 66
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$VoiceRoomListViewHolder;->coverIV:Landroid/widget/ImageView;

    invoke-static {v0}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getCoverImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/request/h;

    invoke-direct {v1}, Lcom/bumptech/glide/request/h;-><init>()V

    new-array v2, v4, [Le0/h;

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>()V

    aput-object v3, v2, v5

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/y;

    const/high16 v7, 0x41200000    # 10.0f

    .line 67
    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    invoke-direct {v3, v7}, Lcom/bumptech/glide/load/resource/bitmap/y;-><init>(I)V

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/a;->u0([Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lic/c;->k1(Lcom/bumptech/glide/request/a;)Lic/c;

    move-result-object v0

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$VoiceRoomListViewHolder;->coverIV:Landroid/widget/ImageView;

    .line 69
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 70
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$VoiceRoomListViewHolder;->countryLogoIV:Landroid/widget/ImageView;

    invoke-static {v0}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getCountryImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/request/h;

    invoke-direct {v1}, Lcom/bumptech/glide/request/h;-><init>()V

    new-array v2, v4, [Le0/h;

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>()V

    aput-object v3, v2, v5

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/y;

    const/high16 v4, 0x40800000    # 4.0f

    .line 71
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/y;-><init>(I)V

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/a;->u0([Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lic/c;->k1(Lcom/bumptech/glide/request/a;)Lic/c;

    move-result-object v0

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$VoiceRoomListViewHolder;->countryLogoIV:Landroid/widget/ImageView;

    .line 73
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 74
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$VoiceRoomListViewHolder;->roomIdTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$VoiceRoomListViewHolder;->roomTitleTV:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$VoiceRoomListViewHolder;->memberCountTV:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getVisitorCount()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 77
    :cond_15
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->llPeopleNearby:Landroid/widget/LinearLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    if-nez p2, :cond_16

    .line 78
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->viewBg:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 79
    :cond_16
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->viewBg:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :goto_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v8, 0x0

    :cond_17
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/16 v10, 0xa

    if-eqz v9, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    .line 81
    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v11

    if-eq v11, v2, :cond_18

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v11

    if-ne v11, v10, :cond_19

    :cond_18
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 82
    :cond_19
    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v9

    if-ne v9, v7, :cond_17

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_1a
    if-eq p2, v4, :cond_1c

    if-ne v8, p2, :cond_1b

    goto :goto_6

    .line 83
    :cond_1b
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->viewLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 84
    :cond_1c
    :goto_6
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->viewLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :goto_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getImageModel()I

    move-result v0

    const/16 v2, 0x12

    if-ne v0, v1, :cond_21

    .line 86
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setImg(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getIntroduce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setCountryLogo(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getTopicName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_8

    :cond_1d
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getTopicName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_8
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setSex(I)V

    .line 90
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setAvatar(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 92
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->avatarBg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v1, v0, v6}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f(Lp7/h;Z)V

    .line 93
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvNickName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getMname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvDistance:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 97
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvSignature:Landroid/widget/TextView;

    const v1, 0x7f1209bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9

    .line 98
    :cond_1e
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvSignature:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v0

    if-ne v0, v10, :cond_1f

    .line 100
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvUserId:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvUserId:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 102
    :cond_1f
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvUserId:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :goto_a
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v0

    if-eqz v0, :cond_20

    .line 104
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->vipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->vipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    goto/16 :goto_c

    .line 106
    :cond_20
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->vipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_c

    .line 107
    :cond_21
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setImg(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getIntroduce()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_b

    :cond_22
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getIntroduce()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_b
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setSex(I)V

    .line 110
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getTopicName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setCountryLogo(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setAvatar(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 113
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->avatarBg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v1, v0, v6}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f(Lp7/h;Z)V

    .line 114
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvNickName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getMname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvDistance:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvSignature:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvUserId:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 120
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->vipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->vipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    goto :goto_c

    .line 122
    :cond_23
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->vipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_24
    :goto_c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->f:Lz9/a;

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a05b2

    if-eq v1, v2, :cond_2

    const v2, 0x7f0a06eb

    if-eq v1, v2, :cond_1

    const v2, 0x7f0a06f2

    if-eq v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->f:Lz9/a;

    const-string v2, "item"

    invoke-interface {v1, p1, v2, v0}, Lz9/a;->b(Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->f:Lz9/a;

    const-string v2, "recommended_item"

    invoke-interface {v1, p1, v2, v0}, Lz9/a;->b(Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->f:Lz9/a;

    const-string v2, "people_nearby_item"

    invoke-interface {v1, p1, v2, v0}, Lz9/a;->b(Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->f:Lz9/a;

    const-string v2, "item_right"

    invoke-interface {v1, p1, v2, v0}, Lz9/a;->b(Landroid/view/View;Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const v1, 0x186a1

    if-ne p2, v1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0256

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const v1, 0x186a2

    if-ne p2, v1, :cond_1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0257

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedListViewHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    const v1, 0x186a4

    if-ne p2, v1, :cond_2

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0254

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$HistoryListViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$HistoryListViewHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;Landroid/view/View;)V

    return-object p2

    :cond_2
    const v1, 0x186a3

    if-ne p2, v1, :cond_3

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0253

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$HistoryViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$HistoryViewHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;Landroid/view/View;)V

    return-object p2

    .line 9
    :cond_3
    sget v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->h:I

    if-ne p2, v1, :cond_4

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f0d039f

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$VoiceRoomListViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$VoiceRoomListViewHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;Landroid/view/View;)V

    return-object p2

    .line 12
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0281

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 13
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lz9/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->f:Lz9/a;

    return-void
.end method
