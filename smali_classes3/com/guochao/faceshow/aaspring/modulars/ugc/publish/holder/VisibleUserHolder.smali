.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

.field private c:I

.field private d:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder$a;

.field primaryArrow:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field primaryContent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field primaryRightArrow:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field primaryTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field secondaryContentWarning:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field secondaryFirstChecker:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field secondaryFirstLay:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field secondaryFirstTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field secondaryLay:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field secondarySecondChecker:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field secondarySecondTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02ed

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryRightArrow:Landroid/widget/ImageView;

    const v1, 0x7f0f02d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryLay:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryRightArrow:Landroid/widget/ImageView;

    const v1, 0x7f0f02d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryLay:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    :goto_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->a:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->a:Z

    return-void
.end method


# virtual methods
.method public d(ILcom/guochao/faceshow/aaspring/beans/VisibleUserBean;)V
    .locals 9

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->c:I

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->b:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryArrow:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->isSelected()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryContentWarning:Landroid/widget/TextView;

    const v1, 0x7f120988

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryContentWarning:Landroid/widget/TextView;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06009d

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryContentWarning:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    const/4 v4, 0x4

    if-ne p1, v4, :cond_3

    .line 7
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryRightArrow:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryArrow:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setClickable(Z)V

    .line 10
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryRightArrow:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->a:Z

    const v7, 0x7f0f02d5

    const v8, 0x7f0f02d4

    if-eqz v6, :cond_1

    const v6, 0x7f0f02d5

    goto :goto_1

    :cond_1
    const v6, 0x7f0f02d4

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryRightArrow:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-boolean v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->a:Z

    if-eqz v5, :cond_2

    .line 13
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryRightArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryLay:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 15
    :cond_2
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryRightArrow:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryLay:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 17
    :cond_3
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryRightArrow:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 19
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryArrow:Landroid/widget/ImageView;

    const v5, 0x7f0f05cd

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    :goto_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondarySecondChecker:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_9

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    if-eq p1, v4, :cond_4

    goto/16 :goto_3

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryTitle:Landroid/widget/TextView;

    const v0, 0x7f12068d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryContent:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryFirstTitle:Landroid/widget/TextView;

    const v0, 0x7f120963

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 24
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->isAllSelected()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryFirstChecker:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 26
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryFirstChecker:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->getSelectInvisibleUsers()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->getSelectInvisibleUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryContentWarning:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->getSelectInvisibleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryContentWarning:Landroid/widget/TextView;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06006b

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryContentWarning:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondarySecondChecker:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 32
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryTitle:Landroid/widget/TextView;

    const p2, 0x7f12073b

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 33
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryContent:Landroid/widget/TextView;

    const p2, 0x7f120985

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 34
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryTitle:Landroid/widget/TextView;

    const p2, 0x7f1206ac

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 35
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryContent:Landroid/widget/TextView;

    const p2, 0x7f120984

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 36
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryTitle:Landroid/widget/TextView;

    const p2, 0x7f120955

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 37
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryContent:Landroid/widget/TextView;

    const p2, 0x7f120986

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 38
    :cond_9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryTitle:Landroid/widget/TextView;

    const p2, 0x7f120953

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 39
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryContent:Landroid/widget/TextView;

    const p2, 0x7f120987

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_a
    :goto_3
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder$a;

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->b:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder$a;->a(Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;I)V

    goto :goto_0

    .line 4
    :sswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder$a;

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->b:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder$a;->a(Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;I)V

    goto :goto_0

    .line 6
    :sswitch_2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->c()V

    goto :goto_0

    .line 7
    :sswitch_3
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->c:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 8
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->c()V

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a025b -> :sswitch_3
        0x7f0a08be -> :sswitch_2
        0x7f0a0a3d -> :sswitch_1
        0x7f0a0a42 -> :sswitch_0
    .end sparse-switch
.end method

.method public setOnInvisibleUserClickListener(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder$a;

    return-void
.end method
