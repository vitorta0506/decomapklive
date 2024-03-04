.class public Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/Progress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/Progress;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;I)V
    .locals 9
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivLineUp:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivLineUp:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne p2, v2, :cond_1

    .line 4
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivLineDown:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivLineDown:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    :goto_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/Progress;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/Progress;->getDownColor()I

    move-result v2

    const v4, 0x7f0603d6

    const v5, 0x7f060072

    if-ne v2, v3, :cond_2

    .line 7
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivLineDown:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v6, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_2

    .line 8
    :cond_2
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivLineDown:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v6, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 9
    :goto_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/Progress;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/Progress;->getSpeed()I

    move-result v2

    const v6, 0x7f060098

    const v7, 0x7f08016a

    if-nez v2, :cond_3

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v2, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 11
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/guochao/faceshow/aaspring/utils/ColorUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 12
    iget-object v4, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivState:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivLineUp:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 14
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalState:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalState:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    const v5, 0x7f1208a7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 16
    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/Progress;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/Progress;->getSpeed()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 17
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v2, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 18
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/guochao/faceshow/aaspring/utils/ColorUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 19
    iget-object v4, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivState:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivLineUp:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 21
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalState:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalState:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    const v5, 0x7f1207ab

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 23
    :cond_4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/Progress;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/Progress;->getSpeed()I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_5

    .line 24
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v2, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 25
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/guochao/faceshow/aaspring/utils/ColorUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 26
    iget-object v4, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivState:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivLineUp:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 28
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalState:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalState:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    const v5, 0x7f120104

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 30
    :cond_5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/Progress;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/Progress;->getSpeed()I

    move-result v2

    const/4 v8, 0x3

    if-ne v2, v8, :cond_6

    .line 31
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v2, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 32
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/guochao/faceshow/aaspring/utils/ColorUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 33
    iget-object v4, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivState:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivLineUp:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 35
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalState:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalState:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    const v5, 0x7f120aee

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 37
    :cond_6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/Progress;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/Progress;->getSpeed()I

    move-result v2

    const v6, 0x7f0f011f

    if-ne v2, v0, :cond_7

    .line 38
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivLineUp:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 39
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivState:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalState:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalState:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    const v5, 0x7f120adf

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 42
    :cond_7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/Progress;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/Progress;->getSpeed()I

    move-result v2

    const/4 v8, 0x5

    if-ne v2, v8, :cond_8

    .line 43
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivLineUp:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 44
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivState:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalState:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalState:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    const v5, 0x7f12098a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 47
    :cond_8
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivState:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivLineUp:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 49
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalState:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalState:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    const v5, 0x7f120ae1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :goto_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/Progress;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/Progress;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_a

    .line 52
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p2, v0, :cond_9

    .line 53
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 54
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_4

    .line 55
    :cond_9
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x41700000    # 15.0f

    .line 56
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 57
    :goto_4
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->b:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/Progress;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/Progress;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/utils/TimeUtil;->getGiftTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 59
    :cond_a
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne p2, v1, :cond_b

    .line 60
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalTime:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 61
    :cond_b
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalTime:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00db

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->b:Ljava/util/List;

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;->b(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
