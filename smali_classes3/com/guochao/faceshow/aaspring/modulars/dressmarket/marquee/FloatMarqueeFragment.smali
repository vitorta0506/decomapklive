.class public Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;->T1()V

    return-void
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;

    return-object p0
.end method

.method private S1()V
    .locals 2

    const-string v0, "tokens/mall/getMsgList"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private T1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0579

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->setOnScrollListener(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$c;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->k(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0190

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;->S1()V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->destroy()V

    .line 4
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onSelfBuy(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$d;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/bean/UserBean;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;->setCountry(Ljava/lang/String;)V

    .line 3
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;->setMallName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;->setNickName(Ljava/lang/String;)V

    .line 5
    iget p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$d;->b:I

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;->setType(I)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;->setUserId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;->setUserImg(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method
