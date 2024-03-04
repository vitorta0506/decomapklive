.class public Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

.field private b:Landroid/view/View;

.field private c:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

.field hideTranslateBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field translateBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field translateContent:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field translateContentLay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field translateLoading:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->b:Landroid/view/View;

    .line 4
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateContent:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->getTopicAndAtTextHelper()Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->setOnDoubleTapClickListener(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$OnDoubleTapClickListener;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateContent:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;)Lcom/guochao/faceshow/aaspring/beans/DynamicBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->c:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    return-object p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->f(Ljava/util/List;)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    const v1, 0x7f0a0656

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private f(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateLoading:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateContentLay:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateContent:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->c:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setTranslateContent(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->hideTranslateBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->c:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setShowTranslate(Z)V

    goto :goto_1

    .line 11
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateContentLay:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->hideTranslateBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->c:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setShowTranslate(Z)V

    .line 15
    :goto_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->e()V

    return-void
.end method


# virtual methods
.method public d(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->b:Landroid/view/View;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->a()Lcom/guochao/faceshow/aaspring/modulars/translate/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->c(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->c:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateLoading:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateLoading:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isShowTranslate()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateContentLay:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->hideTranslateBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 10
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateContentLay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateContent:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getTranslateContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->hideTranslateBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a04d3

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a0beb

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->c:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateLoading:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateContentLay:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->c:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getTranslateContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->c:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getTranslateContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->f(Ljava/util/List;)V

    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateLoading:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 9
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->a()Lcom/guochao/faceshow/aaspring/modulars/translate/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->c:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$c;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->f(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateContentLay:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->hideTranslateBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->c:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setShowTranslate(Z)V

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->e()V

    :goto_0
    return-void
.end method
