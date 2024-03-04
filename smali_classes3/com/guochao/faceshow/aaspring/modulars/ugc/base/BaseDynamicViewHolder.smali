.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# static fields
.field private static final m:I

.field static n:I

.field static o:I

.field static p:I

.field static q:I


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:Laa/e;

.field private c:Z

.field contentLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;

.field private f:Z

.field focusSVGAImage:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

.field h:Ljava/text/SimpleDateFormat;

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field iconFocus:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private j:J

.field private k:Landroid/view/View$OnClickListener;

.field public l:Ljava/lang/Runnable;

.field mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mContentTextView:Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewLiveAnim:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewPublishFail:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLiveStatusView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSVGAImageViewBg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTopicAndAtTextView:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field translateLay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->m:I

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->n:I

    .line 3
    sput v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->o:I

    .line 4
    sput v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->p:I

    .line 5
    sput v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->q:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->c:Z

    .line 3
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->d:Z

    .line 4
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->f:Z

    .line 5
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->h:Ljava/text/SimpleDateFormat;

    .line 6
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->i:Ljava/util/List;

    .line 7
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->k:Landroid/view/View$OnClickListener;

    .line 8
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$o;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$o;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->l:Ljava/lang/Runnable;

    .line 9
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    .line 10
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->translateLay:Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Landroid/view/View;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->e:Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mTopicAndAtTextView:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->getTopicAndAtTextHelper()Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$k;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->setOnDoubleTapClickListener(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$OnDoubleTapClickListener;)V

    return-void
.end method

.method private A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->C(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lba/a;->r()Lba/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->fromDynamic(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lba/a;->m(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->b:Laa/e;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-interface {v0, p0, v1}, Laa/e;->onDeleteDynamic(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/friend/deleteV2"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "friendId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$j;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic E(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/AddressDynamicListActivity;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/AddressDynamicListActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/AddressDynamicListActivity;->b0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/AddressDynamicListActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/AddressDynamicListActivity;->d0()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/AddressDynamicListActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private F(I)Landroid/widget/ImageView;
    .locals 4

    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lcom/guochao/faceshow/views/NormalCircleImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/views/NormalCircleImageView;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderColor(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderWidth(I)V

    .line 8
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private H()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->b:Laa/e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Laa/e;->onLikeClick(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isPublishable()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->j:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->j:J

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getIsLike()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getLikeUserImgList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setLikeUserImgList(Ljava/util/List;)V

    move-object v3, v4

    :cond_4
    const/4 v4, -0x1

    if-eqz v0, :cond_7

    .line 9
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v5, v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setIsLike(I)V

    .line 10
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getLikeNum()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setLikeNum(I)V

    .line 11
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 12
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v6

    invoke-interface {v6}, Lb8/d;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v4, v1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-ltz v4, :cond_b

    .line 13
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 14
    :cond_7
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v5, v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setIsLike(I)V

    .line 15
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getLikeNum()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setLikeNum(I)V

    const/4 v5, 0x0

    .line 16
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 17
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v7

    invoke-interface {v7}, Lb8/d;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v4, v5

    goto :goto_4

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-gez v4, :cond_a

    .line 18
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v4

    invoke-interface {v4}, Lb8/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19
    :cond_a
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v1

    const-string v3, "KEY_UGC_LIKE"

    invoke-virtual {v1, v3}, Lja/a;->e(Ljava/lang/String;)V

    .line 20
    :cond_b
    :goto_5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-direct {p0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->t(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V

    .line 21
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->v(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    const/4 v1, 0x0

    const-string v2, "friendId"

    if-eqz v0, :cond_c

    .line 22
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v3, "tokens/friend/cancelFriendLike"

    invoke-direct {v0, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_6

    .line 23
    :cond_c
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v3, "ugc_like_3000"

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v3, "tokens/friend/insertFriendLike"

    invoke-direct {v0, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :goto_6
    return-void
.end method

.method private J(ZIILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-virtual {p0, p2, p4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0, p2, p6}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private M()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$f;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    const v2, 0x7f12097e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    const v2, 0x7f12069a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    const v2, 0x7f1208a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->i(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method private N()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_1

    .line 4
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 6
    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    .line 7
    aget v4, v0, v2

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    .line 8
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06009c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 10
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$m;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment;->S1(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment$b;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1206ac
        0x7f12073b
    .end array-data

    :array_1
    .array-data 4
        0x7f120953
        0x7f120955
        0x7f1206ac
        0x7f12073b
    .end array-data
.end method

.method private P()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserAttentStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserAttentStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    const v4, 0x7f120686

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {v2, v4}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    const v4, 0x7f1207a7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {v2, v4}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    .line 10
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isBlacked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    .line 13
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    const v4, 0x7f12098c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v2, v4}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_2
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    .line 17
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    const v4, 0x7f120117

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {v2, v4}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    .line 19
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    if-eqz v0, :cond_3

    .line 20
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    .line 21
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    const v3, 0x7f12000c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    .line 23
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$d;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment;->S1(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment$b;)V

    return-void
.end method

.method private Q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->C(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getPublishStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->C(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    const v2, 0x7f120abd

    .line 5
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    const v2, 0x7f1201f8

    .line 9
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    .line 14
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$i;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    invoke-static {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment;->S1(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment$b;)V

    return-void
.end method

.method private R()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$e;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    invoke-static {v0, v1, v2}, Lib/b;->a(Ljava/lang/String;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method

.method private S()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setBlacked(Z)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/report/deletebacklist"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$h;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->E(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->H()V

    return-void
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->r(I)V

    return-void
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->f:Z

    return p1
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->Q()V

    return-void
.end method

.method static synthetic h(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->P()V

    return-void
.end method

.method static synthetic i(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->S()V

    return-void
.end method

.method static synthetic j(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->M()V

    return-void
.end method

.method static synthetic k(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->R()V

    return-void
.end method

.method static synthetic l(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->p()V

    return-void
.end method

.method static synthetic m(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->N()V

    return-void
.end method

.method static synthetic n(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->A()V

    return-void
.end method

.method private p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setBlacked(Z)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/im/Friend/black_list_add"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "From_Account"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "To_Account"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private r(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/friend/updateRingInfo"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "friendId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "shield"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$n;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$n;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;I)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private s(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isPublishable()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mImageViewPublishFail:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0a0b96

    const/4 v3, 0x1

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getPublishStatus()I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    const/4 v6, 0x3

    if-eq v0, v6, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    const v4, 0x7f12096d

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mImageViewPublishFail:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    const v4, 0x7f120972

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 7
    :goto_0
    invoke-virtual {p0, v1, v4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    goto :goto_3

    .line 8
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getPublishStatus()I

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->h:Ljava/text/SimpleDateFormat;

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getCreateTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v0, v6, v7}, Lcom/guochao/faceshow/utils/TimeUtil;->getIMTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getCreateTimeStamp()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/guochao/faceshow/utils/TimeUtil;->getUgcTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v4, v0

    goto :goto_2

    :catch_0
    nop

    .line 11
    :goto_2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getDistance()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getDistance()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 13
    :cond_4
    invoke-virtual {p0, v1, v4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    .line 14
    :goto_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getIsShowSeat()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getRingFrom()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    const v0, 0x7f0a008a

    .line 16
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v3, :cond_6

    .line 19
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0088

    .line 20
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 21
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 23
    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method private t(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V
    .locals 14

    move-object v7, p0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getShield()I

    move-result v0

    const/16 v8, 0x8

    const v1, 0x7f0a0503

    const/4 v9, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v10, 0x7f0a0651

    .line 4
    invoke-virtual {p0, v10}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0228

    .line 5
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0653

    .line 6
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a022a

    .line 7
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isPublishable()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getIsComment()I

    move-result v1

    const/4 v11, 0x1

    if-nez v1, :cond_3

    .line 12
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getCommentNum()I

    move-result v0

    if-gtz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const v2, 0x7f0a022a

    const/4 v3, 0x4

    const/4 v5, 0x0

    int-to-long v12, v0

    .line 14
    invoke-static {v12, v13}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v6

    const-string v4, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->J(ZIILjava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :goto_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getLikeNum()I

    move-result v0

    .line 17
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getIsLike()I

    move-result v1

    if-ne v1, v11, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 18
    :goto_3
    invoke-virtual {p0, v10}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    if-eqz v1, :cond_6

    if-eqz p2, :cond_5

    .line 19
    iget-object v1, v7, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mSVGAImageViewBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 21
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v2

    iget-object v3, v7, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l;

    invoke-direct {v4, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;I)V

    const-string v1, "ugc_like"

    invoke-virtual {v2, v3, v1, v4, v11}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    goto :goto_4

    .line 22
    :cond_5
    iget-object v1, v7, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 23
    iget-object v1, v7, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    const v2, 0x7f0f02e5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    iget-object v1, v7, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mSVGAImageViewBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    iget-object v1, v7, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mSVGAImageViewBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 26
    :cond_6
    iget-object v1, v7, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    const v2, 0x7f0f02e4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    iget-object v1, v7, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mSVGAImageViewBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    iget-object v1, v7, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mSVGAImageViewBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    if-gtz v0, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    const v2, 0x7f0a0653

    const/4 v3, 0x4

    const/4 v5, 0x0

    int-to-long v8, v0

    .line 29
    invoke-static {v8, v9}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v6

    const-string v4, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->J(ZIILjava/lang/String;ILjava/lang/String;)V

    :goto_6
    return-void
.end method

.method private u(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 3

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    const v1, 0x7f0a0d88

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;ZZ)V

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d(Lp7/i;)V

    return-void
.end method

.method private v(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 7

    const v0, 0x7f0a0657

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->i:Ljava/util/List;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isPublishable()Z

    move-result v1

    if-nez v1, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getLikeUserImgList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setLikeUserImgList(Ljava/util/List;)V

    .line 8
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x2

    if-le p1, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    const/4 p1, 0x3

    :cond_3
    :goto_2
    if-ge v2, p1, :cond_5

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 10
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->F(I)Landroid/widget/ImageView;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/views/NormalCircleImageView;

    int-to-float v6, v2

    .line 11
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setZ(F)V

    .line 12
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v3, :cond_4

    add-int/lit8 v6, p1, -0x1

    if-ne v2, v6, :cond_4

    const v4, 0x7f0f02f0

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v4}, Lhc/a;->g(Landroid/widget/ImageView;Ljava/lang/Object;)V

    goto :goto_3

    .line 14
    :cond_4
    invoke-static {v5, v4}, Lhc/a;->d(Landroid/widget/ImageView;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private x(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mImageViewLiveAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getLiveState()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mLiveStatusView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mLiveStatusView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private y(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mTopicAndAtTextView:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->getTopicAndAtTextHelper()Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isPublishable()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public B()V
    .locals 2

    const v0, 0x7f0a0656

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method C(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isPublishable()Z

    move-result p1

    return p1
.end method

.method D()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 0

    return-void
.end method

.method public I(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getCommentNum()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setCommentNum(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getCommentNum()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const v5, 0x7f0a022a

    const/4 v6, 0x0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getCommentNum()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    const-string v9, ""

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->J(ZIILjava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_1
    if-lez v0, :cond_3

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setCommentNum(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getCommentNum()I

    move-result p1

    if-lez p1, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const v5, 0x7f0a022a

    const/4 v6, 0x0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getCommentNum()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    const-string v9, ""

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->J(ZIILjava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public K(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->d:Z

    return-void
.end method

.method public L(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->c:Z

    return-void
.end method

.method public O(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->l:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const p1, 0x7f0a0656

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getIsComment()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f08052e

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const v0, 0x7f08052f

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    const/4 v0, 0x4

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public clickAvatar(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$p;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$p;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/h;->c(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/h$b;)V

    return-void
.end method

.method public focus(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$u;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$u;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/h;->c(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/h$b;)V

    return-void
.end method

.method public like(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$t;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$t;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/h;->c(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/h$b;)V

    return-void
.end method

.method public o(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 4

    const v0, 0x7f0a0656

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->l:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->e:Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->d(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mContentTextView:Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v1, v0, v2, p0}, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->h(Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->z(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->s(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->x(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->t(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V

    .line 16
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->u(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->v(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->y(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->G(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    return-void
.end method

.method public openComment(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$s;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$s;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/h;->c(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/h$b;)V

    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getIsLike()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->H()V

    :cond_0
    return-void
.end method

.method public retry(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$r;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$r;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/h;->c(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/h$b;)V

    return-void
.end method

.method public seeLive(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$q;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$q;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/h;->c(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/h$b;)V

    return-void
.end method

.method public setOnDynamicOperationListener(Laa/e;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->b:Laa/e;

    return-void
.end method

.method public showFloatMenu(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnLongClick;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    const v3, 0x7f1201e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;-><init>(ILjava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->setMenus(Ljava/util/List;)V

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->setOnMenuItemClickListener(Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnMenuItemClickListener;)V

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->setOnDismissListener(Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnDismissListener;)V

    const v0, 0x3f4ccccd    # 0.8f

    .line 8
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->setAlpha(F)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mTopicAndAtTextView:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->a(Z)V

    .line 10
    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->show(Landroid/view/View;)V

    return-void
.end method

.method public showMore(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/h;->c(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/h$b;)V

    return-void
.end method

.method protected w(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setUserId(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setNickName(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getLiveId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveId(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getLiveImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveImg(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setImg(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getLiveType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveType(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/utils/LiveInfoUtils;->jumpToBaseLiveRoomAct(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Landroid/content/Context;Z)V

    return-void
.end method

.method public z(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 7

    const v0, 0x7f0a07cb

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getMVPUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-static {v0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getMVPUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/g;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0a0dc5

    .line 6
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v4

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipLevel()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 8
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0600a6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f06009c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserAttentStatus()I

    move-result p1

    const/4 v0, 0x4

    const v1, 0x7f0a0568

    if-ne p1, v0, :cond_2

    .line 13
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :goto_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->D()Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->f:Z

    if-nez p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->iconFocus:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserAttentStatus()I

    move-result p1

    if-le p1, v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->iconFocus:Landroid/widget/ImageView;

    const v0, 0x7f0f0606

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->iconFocus:Landroid/widget/ImageView;

    const v0, 0x7f0f02db

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->iconFocus:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method
