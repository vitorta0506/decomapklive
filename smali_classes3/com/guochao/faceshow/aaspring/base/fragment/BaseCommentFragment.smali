.class public abstract Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity<",
        "Lcom/guochao/faceshow/aaspring/beans/Comment;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

.field protected c:Landroid/view/View;

.field protected d:Ljava/lang/String;

.field protected e:Landroid/widget/ImageView;

.field f:I

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/IM_User;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;

.field protected i:I

.field j:I

.field protected mTextViewCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->d:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->f:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->g:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->j:I

    return-void
.end method

.method private E0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    iput v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->j:I

    if-lez v1, :cond_1

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    if-eq v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 7
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 8
    iget v3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->j:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_2
    iget v3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->j:I

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :goto_1
    iput v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->j:I

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->u0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->t0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->v0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Lcom/guochao/faceshow/aaspring/beans/Comment;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->k0(Lcom/guochao/faceshow/aaspring/beans/Comment;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->o0()V

    return-void
.end method

.method private k0(Lcom/guochao/faceshow/aaspring/beans/Comment;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    aput v3, v1, v2

    const-string v4, "scaleX"

    .line 1
    invoke-static {p3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v4, v0, [F

    aput v3, v4, v2

    const-string v3, "scaleY"

    .line 2
    invoke-static {p3, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 3
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, v2

    aput-object v3, v4, v0

    .line 4
    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5
    new-instance v7, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Lcom/guochao/faceshow/aaspring/beans/Comment;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x96

    .line 6
    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 7
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static l0(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "module_notification"

    const-string v1, "comment_message"

    .line 1
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "comment_message_number"

    if-eqz v3, :cond_0

    .line 3
    invoke-static {p0, v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, v0, v6, v5}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return v4

    .line 5
    :cond_0
    invoke-static {p0, v0, v6}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x2

    if-lt v3, p1, :cond_1

    return v5

    .line 7
    :cond_1
    invoke-static {p0, v0, v6, p1}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return v4

    .line 8
    :cond_2
    invoke-static {p0, v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p0, v0, v6, v5}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return v4
.end method

.method private o0()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f120948

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const v2, 0x7f010027

    const v3, 0x7f010025

    invoke-static {v1, v2, v3}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-virtual {p0, v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic t0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->A0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic u0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->A0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic v0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->finish()V

    return-void
.end method


# virtual methods
.method public A0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V
    .locals 0

    return-void
.end method

.method public abstract B0(Ljava/lang/String;)V
.end method

.method protected abstract F0(Lcom/guochao/faceshow/aaspring/beans/Comment;Landroid/view/View;Landroid/widget/TextView;)V
.end method

.method public cancel(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->finish()V

    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->m0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    const v0, 0x7f01004e

    const v1, 0x7f01000f

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getCommentId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0170

    return v0
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->initView()V

    .line 2
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    const v0, 0x7f0a0ab5

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/fragment/a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/base/fragment/a;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a054f

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$h;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$h;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;->setOnKeyAtDownListener(Lcom/guochao/faceshow/aaspring/views/AtFriendEditText$b;)V

    const v0, 0x7f0a019a

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a0180

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->c:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$i;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$i;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->c:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$j;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$j;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public m0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    .line 1
    instance-of v0, v7, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/EmptyHolder;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a00fd

    .line 2
    invoke-virtual {v7, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v0, 0x7f0a0e13

    .line 3
    invoke-virtual {v7, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const/4 v11, 0x0

    .line 4
    invoke-virtual {v10, v9, v11}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f(Lp7/h;Z)V

    .line 5
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    .line 7
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getIsCommentator()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a00e9

    invoke-virtual {v7, v1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    .line 8
    invoke-virtual {v7, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$b;

    invoke-direct {v1, v6, v10}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00e8

    .line 9
    invoke-virtual {v7, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0255

    .line 10
    invoke-virtual {v7, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    const v0, 0x7f0a0651

    .line 11
    invoke-virtual {v7, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f0a04fe

    .line 12
    invoke-virtual {v7, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 13
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getIsLike()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    const v1, 0x7f0a0652

    .line 14
    invoke-virtual {v7, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    .line 15
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getLikeNum()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/Tools;->timeString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0a61

    invoke-virtual {v7, v2, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    .line 17
    instance-of v1, v6, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    const v14, 0x7f0a04df

    .line 18
    invoke-virtual {v7, v14}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x3

    if-eqz v14, :cond_5

    if-eqz v1, :cond_4

    if-ne v8, v15, :cond_4

    const/4 v12, 0x0

    goto :goto_2

    :cond_4
    const/16 v12, 0x8

    .line 19
    :goto_2
    invoke-virtual {v14, v12}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :cond_5
    invoke-virtual {v7, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_6

    if-ge v8, v15, :cond_6

    const/16 v12, 0x8

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    const v12, 0x7f0a096f

    .line 21
    invoke-virtual {v7, v12}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_7

    if-ge v8, v15, :cond_7

    const/16 v14, 0x8

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    :goto_4
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_8

    if-ge v8, v15, :cond_8

    const/high16 v1, 0x40800000    # 4.0f

    goto :goto_5

    :cond_8
    const/high16 v1, 0x41000000    # 8.0f

    .line 22
    :goto_5
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    .line 23
    invoke-virtual {v7, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v14

    new-instance v15, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$c;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Lcom/guochao/faceshow/aaspring/beans/Comment;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a096d

    .line 24
    invoke-virtual {v7, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a096e

    .line 25
    invoke-virtual {v7, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getRealComment(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/Comment;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 27
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_9

    .line 29
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 31
    :goto_6
    new-instance v2, Lcom/guochao/faceshow/aaspring/base/fragment/c;

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/guochao/faceshow/aaspring/base/fragment/c;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 32
    new-instance v2, Lcom/guochao/faceshow/aaspring/base/fragment/b;

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/guochao/faceshow/aaspring/base/fragment/b;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 33
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getCommentParent()Lcom/guochao/faceshow/aaspring/beans/Comment;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 34
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getCommentParent()Lcom/guochao/faceshow/aaspring/beans/Comment;

    move-result-object v2

    const v3, 0x7f0a0970

    .line 35
    invoke-virtual {v7, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    .line 36
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v4

    if-eqz v4, :cond_a

    .line 37
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 38
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    goto :goto_7

    :cond_a
    const/16 v4, 0x8

    .line 39
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_7
    const v3, 0x7f0a096b

    .line 40
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getIsCommentator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    .line 41
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getCreateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/guochao/faceshow/utils/Tools;->timeString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v12, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    const v3, 0x7f0a096c

    .line 42
    invoke-virtual {v7, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 43
    invoke-virtual {v3, v2, v11}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f(Lp7/h;Z)V

    .line 44
    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getRealComment(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/Comment;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a096a

    .line 46
    invoke-virtual {v7, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_8

    :cond_b
    const/16 v11, 0x8

    :goto_8
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_c
    const/16 v0, 0x8

    .line 47
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_9
    const v0, 0x7f0a056a

    .line 48
    invoke-virtual {v7, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$d;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 49
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$e;

    invoke-direct {v0, v6, v9}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Lcom/guochao/faceshow/aaspring/beans/Comment;)V

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected n0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "#"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->E0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->r0(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->p0(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public notifyDataLoaded(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setFooterView(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->hideFooterView()V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/16 v2, 0x28c

    if-ne p1, v2, :cond_1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->getInstance()Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)V

    .line 3
    sput-boolean v1, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->onActivityResult:Z

    :cond_0
    return-void

    :cond_1
    if-ne p2, v0, :cond_8

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;->b(IILandroid/content/Intent;)V

    .line 6
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-string p2, "key1"

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_7

    .line 8
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getNick_name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->addInvisibleCharBeforeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_6

    .line 11
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;->a(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    .line 13
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    .line 14
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 15
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->openSoftKeyBoard(Landroid/widget/EditText;)V

    :cond_8
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

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/EmptyHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/EmptyHolder;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    instance-of v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    const v1, 0x7f0d0279

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
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->y0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->s0(Landroid/app/Activity;)V

    .line 2
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onStop()V

    return-void
.end method

.method public p0(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/bean/MyTopicAndName;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "#"

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ""

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 6
    new-instance v4, Lcom/guochao/faceshow/bean/MyTopicAndName;

    invoke-direct {v4}, Lcom/guochao/faceshow/bean/MyTopicAndName;-><init>()V

    .line 7
    iput v6, v4, Lcom/guochao/faceshow/bean/MyTopicAndName;->type:I

    .line 8
    iput-object v3, v4, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    .line 9
    iput-object v5, v4, Lcom/guochao/faceshow/bean/MyTopicAndName;->userId:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_0
    const-string v4, " "

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "\\s"

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 13
    aget-object v7, v4, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v6, :cond_1

    .line 14
    new-instance v4, Lcom/guochao/faceshow/bean/MyTopicAndName;

    invoke-direct {v4}, Lcom/guochao/faceshow/bean/MyTopicAndName;-><init>()V

    .line 15
    iput v6, v4, Lcom/guochao/faceshow/bean/MyTopicAndName;->type:I

    .line 16
    iput-object v3, v4, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    .line 17
    iput-object v5, v4, Lcom/guochao/faceshow/bean/MyTopicAndName;->userId:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_1
    new-instance v7, Lcom/guochao/faceshow/bean/MyTopicAndName;

    invoke-direct {v7}, Lcom/guochao/faceshow/bean/MyTopicAndName;-><init>()V

    const/4 v8, 0x2

    .line 20
    iput v8, v7, Lcom/guochao/faceshow/bean/MyTopicAndName;->type:I

    .line 21
    aget-object v8, v4, v1

    iput-object v8, v7, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    .line 22
    iput-object v5, v7, Lcom/guochao/faceshow/bean/MyTopicAndName;->userId:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    aget-object v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 25
    new-instance v4, Lcom/guochao/faceshow/bean/MyTopicAndName;

    invoke-direct {v4}, Lcom/guochao/faceshow/bean/MyTopicAndName;-><init>()V

    .line 26
    iput v6, v4, Lcom/guochao/faceshow/bean/MyTopicAndName;->type:I

    .line 27
    iput-object v3, v4, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    .line 28
    iput-object v5, v4, Lcom/guochao/faceshow/bean/MyTopicAndName;->userId:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_2
    new-instance v4, Lcom/guochao/faceshow/bean/MyTopicAndName;

    invoke-direct {v4}, Lcom/guochao/faceshow/bean/MyTopicAndName;-><init>()V

    .line 31
    iput v6, v4, Lcom/guochao/faceshow/bean/MyTopicAndName;->type:I

    .line 32
    iput-object v3, v4, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    .line 33
    iput-object v5, v4, Lcom/guochao/faceshow/bean/MyTopicAndName;->userId:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v4, "@"

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 36
    invoke-virtual {p0, v0, v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->q0(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :cond_4
    new-instance v4, Lcom/guochao/faceshow/bean/MyTopicAndName;

    invoke-direct {v4}, Lcom/guochao/faceshow/bean/MyTopicAndName;-><init>()V

    .line 38
    iput v6, v4, Lcom/guochao/faceshow/bean/MyTopicAndName;->type:I

    .line 39
    iput-object v3, v4, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    .line 40
    iput-object v5, v4, Lcom/guochao/faceshow/bean/MyTopicAndName;->userId:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method protected q0(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/bean/MyTopicAndName;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "@"

    if-ge v1, v2, :cond_1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getNick_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iput v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->f:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->f:I

    const-string v2, ""

    const/4 v4, 0x1

    if-ltz v1, :cond_3

    .line 6
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getNick_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-ne v5, v6, :cond_2

    .line 9
    new-instance v0, Lcom/guochao/faceshow/bean/MyTopicAndName;

    invoke-direct {v0}, Lcom/guochao/faceshow/bean/MyTopicAndName;-><init>()V

    .line 10
    iput v7, v0, Lcom/guochao/faceshow/bean/MyTopicAndName;->type:I

    .line 11
    iput-object p2, v0, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    .line 12
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/guochao/faceshow/bean/MyTopicAndName;->userId:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 16
    new-instance v3, Lcom/guochao/faceshow/bean/MyTopicAndName;

    invoke-direct {v3}, Lcom/guochao/faceshow/bean/MyTopicAndName;-><init>()V

    .line 17
    iput v7, v3, Lcom/guochao/faceshow/bean/MyTopicAndName;->type:I

    .line 18
    iput-object v0, v3, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    .line 19
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/guochao/faceshow/bean/MyTopicAndName;->userId:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v0, Lcom/guochao/faceshow/bean/MyTopicAndName;

    invoke-direct {v0}, Lcom/guochao/faceshow/bean/MyTopicAndName;-><init>()V

    .line 22
    iput v4, v0, Lcom/guochao/faceshow/bean/MyTopicAndName;->type:I

    .line 23
    iput-object v2, v0, Lcom/guochao/faceshow/bean/MyTopicAndName;->userId:Ljava/lang/String;

    .line 24
    iput-object p2, v0, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    .line 25
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->f:I

    goto :goto_2

    .line 27
    :cond_3
    new-instance v0, Lcom/guochao/faceshow/bean/MyTopicAndName;

    invoke-direct {v0}, Lcom/guochao/faceshow/bean/MyTopicAndName;-><init>()V

    .line 28
    iput v4, v0, Lcom/guochao/faceshow/bean/MyTopicAndName;->type:I

    .line 29
    iput-object v2, v0, Lcom/guochao/faceshow/bean/MyTopicAndName;->userId:Ljava/lang/String;

    .line 30
    iput-object p2, v0, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method protected r0(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "@"

    .line 4
    invoke-direct {p0, v2, v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->E0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected s0(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    const-string v0, "input_method"

    .line 1
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setOnCommentCountChangedListener(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->h:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;

    return-void
.end method

.method public showEmptyView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/Comment;-><init>()V

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->setCommentId(I)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addData(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->notifyDataLoaded(Z)V

    :cond_1
    return-void
.end method

.method public y0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V
    .locals 2

    .line 1
    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/EmptyHolder;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->loadData(I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getCommentId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->d:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getIsCommentator()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->openSoftKeyBoard(Landroid/widget/EditText;)V

    return-void
.end method
