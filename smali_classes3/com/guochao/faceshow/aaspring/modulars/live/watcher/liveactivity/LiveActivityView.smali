.class public Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lc8/b$c;


# instance fields
.field private a:I

.field private b:I

.field banner:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Z

.field private f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

.field private g:Landroidx/recyclerview/widget/PagerSnapHelper;

.field private h:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$ScrollLinearLayoutManager;

.field private i:Landroid/os/Handler;

.field private j:Ljava/lang/Runnable;

.field private k:Lcom/guochao/faceshow/promotion/view/WebViewDialog;

.field private l:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

.field private m:Ljava/lang/Runnable;

.field private n:J

.field private o:Z

.field private p:Ljava/lang/Runnable;

.field pageIndicatorView:Lcom/rd/PageIndicatorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private q:I

.field private r:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->i:Landroid/os/Handler;

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$e;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->p:Ljava/lang/Runnable;

    .line 5
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$g;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->r:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$g;

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->u()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->i:Landroid/os/Handler;

    .line 10
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$e;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->p:Ljava/lang/Runnable;

    .line 11
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$g;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->r:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$g;

    .line 12
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->u()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    .line 15
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->i:Landroid/os/Handler;

    .line 16
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$e;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->p:Ljava/lang/Runnable;

    .line 17
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$g;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->r:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$g;

    .line 18
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->u()V

    return-void
.end method

.method private B()V
    .locals 12

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->a:I

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 3
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/b;->o(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v1

    invoke-virtual {v1}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v1}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getNormalLive()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 5
    iget-object v0, v9, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->shareImgUrl:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/utils/LanguageGetUtils;->isLanguageChinese()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v9, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->shareTextCn:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, v9, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->shareTextEn:Ljava/lang/String;

    .line 9
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v9, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->webPageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->getUrlFromType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    const-string v4, "userToken"

    invoke-static {v3, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v9, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->webPageUrl:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->getUrlFromType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&name="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static {}, Leb/b;->y()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v9, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appScheme:Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;->getSchemeData()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 13
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    iget-object v10, v9, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appScheme:Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;

    invoke-virtual {v10}, Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;->getSchemeData()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "h5Url"

    .line 14
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "isNeedToken"

    .line 15
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v11, "shareTitle"

    .line 16
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "shareText"

    .line 17
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v11, "shareImg"

    .line 18
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "h5Type"

    .line 19
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v11, "isShare"

    .line 20
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 21
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->getUrlFromType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    move-object v3, v2

    move-object v4, v6

    move-object v6, v0

    move-object v0, v3

    goto :goto_1

    :catch_0
    move-exception v4

    .line 23
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    move-object v5, v1

    move-object v4, v6

    move-object v6, v0

    move-object v0, v3

    move-object v3, v2

    .line 24
    :goto_1
    iget v1, v9, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    .line 25
    new-instance v2, Lcom/guochao/faceshow/promotion/view/WebViewDialog;

    invoke-direct {v2}, Lcom/guochao/faceshow/promotion/view/WebViewDialog;-><init>()V

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->k:Lcom/guochao/faceshow/promotion/view/WebViewDialog;

    .line 26
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_6

    .line 27
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v8, "activity_load_from_4000"

    const-string v10, "2"

    invoke-virtual {v2, v8, v10}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v8, 0x1

    if-nez v2, :cond_5

    const-string v2, "1"

    .line 29
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    const/4 v10, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v10, 0x1

    .line 30
    :goto_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->k:Lcom/guochao/faceshow/promotion/view/WebViewDialog;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v2

    move-object v2, v7

    move-object v7, v0

    invoke-virtual/range {v1 .. v10}, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->R1(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;Z)V

    :cond_6
    return-void
.end method

.method private G(Ljava/util/List;ZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v4

    iput-boolean v3, v4, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->e:Z

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v4

    iput v3, v4, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->a:I

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v4

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->g:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v4

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->h:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    :cond_1
    const/4 v4, 0x0

    .line 5
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v4, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    iget-object v5, v5, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appActivityGiftEntityList:Ljava/util/List;

    if-eqz v5, :cond_7

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    iget-object v5, v5, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appActivityGiftEntityList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 8
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    iget-object v5, v5, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appActivityGiftEntityList:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh9/a;

    invoke-virtual {v6}, Lh9/a;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    :cond_3
    const/4 v6, 0x0

    .line 10
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    if-eqz p2, :cond_4

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v7

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh9/a;

    invoke-virtual {v7}, Lh9/a;->a()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v7

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh9/a;

    invoke-virtual {v7}, Lh9/a;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v7

    iget-object v7, v7, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->g:Ljava/util/Map;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    mul-int v8, v8, v4

    add-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$e;

    if-nez v7, :cond_5

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v7

    new-instance v8, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$c;

    invoke-direct {v8, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;Z)V

    invoke-virtual {v7, v8}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->e(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$f;)Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$e;

    move-result-object v7

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v8

    iget-object v8, v8, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->g:Ljava/util/Map;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    mul-int v9, v9, v4

    add-int/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object v10, v7

    .line 16
    iput-object v0, v10, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$e;->g:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    .line 17
    iput v4, v10, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$e;->a:I

    .line 18
    iput v6, v10, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$e;->b:I

    .line 19
    iput-boolean v2, v10, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$e;->c:Z

    .line 20
    iput-object v5, v10, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$e;->d:Ljava/util/List;

    .line 21
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;

    invoke-virtual {v7}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->getGiftUrl()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v10, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$e;->e:Ljava/lang/String;

    .line 22
    iget-object v8, v10, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$e;->f:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_6

    .line 23
    iget v11, v10, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$e;->a:I

    iget v13, v10, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$e;->b:I

    iget-boolean v14, v10, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$e;->c:Z

    iget-object v15, v10, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$e;->d:Ljava/util/List;

    invoke-virtual/range {v10 .. v15}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$e;->a(ILjava/lang/Object;IZLjava/util/List;)V

    goto :goto_2

    .line 24
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;

    invoke-virtual {v8}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->getGiftUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->urlToDrawable(Landroid/content/Context;Ljava/lang/String;Lio/reactivex/r;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 25
    :cond_7
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v6, "No.100+"

    .line 26
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p2, :cond_8

    .line 27
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_9

    .line 28
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh9/a;

    invoke-virtual {v6}, Lh9/a;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 29
    :cond_8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_9

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh9/a;

    invoke-virtual {v6}, Lh9/a;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 30
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh9/a;

    invoke-virtual {v6}, Lh9/a;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_3
    if-eqz v2, :cond_a

    .line 31
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v5

    iget v6, v5, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->a:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v5, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->a:I

    .line 32
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v5

    iget v5, v5, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->a:I

    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v6

    invoke-virtual {v6}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object v6

    iget-object v6, v6, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v6}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getNormalLive()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_a

    .line 33
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v5

    iput-boolean v7, v5, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->e:Z

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->x()Z

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private J(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p2

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 5
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getPaddingEnd()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    cmpl-float p2, v0, p2

    if-lez p2, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x11

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const p2, 0x800013

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_1
    :goto_0
    return-void
.end method

.method private K()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->x()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->a:I

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->b:I

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh9/a;

    invoke-virtual {v4}, Lh9/a;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v1, v4, :cond_1

    .line 4
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->b:I

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->L()V

    goto :goto_0

    .line 6
    :cond_1
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->b:I

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh9/a;

    invoke-virtual {v0}, Lh9/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ge v1, v0, :cond_2

    .line 7
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->b:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->b:I

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->L()V

    goto :goto_0

    .line 9
    :cond_2
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->b:I

    .line 10
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->a:I

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->h:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$ScrollLinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v3, :cond_3

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->h:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$ScrollLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->a:I

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->banner:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->a:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_0
    return-void
.end method

.method private declared-synchronized L()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->b:I

    if-le v0, v1, :cond_4

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->c()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->a()Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    .line 9
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->a()Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getPaddingStart()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->a()Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getPaddingEnd()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const v2, 0x800013

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->a()Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$f;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;Landroid/text/SpannableStringBuilder;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->p:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private M(Ljava/util/List;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ActivityGift;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 2
    iget v2, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;

    .line 4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5
    iget-object v5, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appActivityGiftEntityList:Ljava/util/List;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;->getAppActivityGiftEntityList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->O(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method private N(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    invoke-virtual {v0, p1}, Lcom/rd/PageIndicatorView;->setSelected(I)V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->y()V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->z()V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->K()V

    return-void
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$ScrollLinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->h:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$ScrollLinearLayoutManager;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)Landroidx/recyclerview/widget/PagerSnapHelper;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->g:Landroidx/recyclerview/widget/PagerSnapHelper;

    return-object p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->n:J

    return-wide p1
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->r(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic h(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->c:I

    return p1
.end method

.method static synthetic i(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    return-object p0
.end method

.method static synthetic j(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->d:I

    return p0
.end method

.method static synthetic k(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->d:I

    return p1
.end method

.method static synthetic l(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->B()V

    return-void
.end method

.method static synthetic m(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$g;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->r:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$g;

    return-object p0
.end method

.method static synthetic n(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->J(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic o(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->e:Z

    return p1
.end method

.method private p()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->m:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->n:J

    sub-long/2addr v0, v2

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->m:Ljava/lang/Runnable;

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Lh9/d;

    invoke-direct {v2, p0}, Lh9/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)V

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->m:Ljava/lang/Runnable;

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->i:Landroid/os/Handler;

    if-eqz v2, :cond_3

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->m:Ljava/lang/Runnable;

    const-wide/16 v4, 0xa

    cmp-long v6, v0, v4

    if-gez v6, :cond_2

    const-wide/16 v0, 0xbb8

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x7d0

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method private r(Landroid/view/View;Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_0
    if-eqz p1, :cond_5

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->h:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$ScrollLinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->a:I

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v2, v0, v2

    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->N(I)V

    const v2, 0x7f0a06ab

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;

    const v3, 0x7f0a06b1

    .line 7
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v0, v3

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lh9/a;

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lh9/a;

    .line 11
    :goto_0
    invoke-virtual {p2}, Lh9/a;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lh9/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p2}, Lh9/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->e(Landroid/widget/TextView;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {p2}, Lh9/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->f(Ljava/util/List;)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->d(Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;)V

    .line 16
    invoke-virtual {p2}, Lh9/a;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 19
    :goto_1
    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->b:I

    .line 20
    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->d:I

    .line 21
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->e:Z

    .line 22
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->L()V

    .line 23
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object p1

    invoke-virtual {p1}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {p1}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getNormalLive()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->h:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$ScrollLinearLayoutManager;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$ScrollLinearLayoutManager;->b(Z)V

    goto :goto_2

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->h:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$ScrollLinearLayoutManager;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$ScrollLinearLayoutManager;->b(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method private s(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_3

    .line 1
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 4
    iget v4, v4, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 6
    iget p2, p2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v3, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_5
    :goto_3
    return v1
.end method

.method private t()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/k;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;

    move-result-object v0

    .line 2
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method private u()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/b;->registerChangeListener(Lc8/b$c;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d03a7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 4
    invoke-static {p0}, Lbutterknife/ButterKnife;->b(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->v()V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->x()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getNormalLive()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v1

    iget-boolean v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d:Z

    xor-int/2addr v1, v2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v3

    iget-boolean v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d:Z

    xor-int/2addr v3, v2

    invoke-direct {p0, v0, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->G(Ljava/util/List;ZZ)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v0

    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d:Z

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->banner:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const v2, 0x3fffffff    # 1.9999999f

    rem-int v1, v2, v1

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->banner:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->banner:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rd/PageIndicatorView;->setCount(I)V

    return-void
.end method

.method private v()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {v0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->g:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$ScrollLinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$ScrollLinearLayoutManager;-><init>(Landroid/content/Context;IZZ)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->h:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$ScrollLinearLayoutManager;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->banner:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->banner:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->g:Landroidx/recyclerview/widget/PagerSnapHelper;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->banner:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->banner:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private synthetic y()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->q:I

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->c:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->p()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->A()V

    return-void
.end method

.method private synthetic z()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->q:I

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->c:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->p()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->A()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->i:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->m:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->i:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->j:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    :cond_2
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/text/BidiFormatter;->isRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x1e

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_8

    .line 7
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->e:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->b()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->a()Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v6, v3

    int-to-float v3, v6

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    .line 8
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->c:I

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->q:I

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->a()Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v5}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->a()Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 11
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->q:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->c:I

    if-ne v3, v0, :cond_3

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->d:I

    if-ne v0, v3, :cond_3

    if-nez v3, :cond_3

    .line 12
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->p()V

    return-void

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->a()Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->q:I

    if-ne v0, v3, :cond_5

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->c:I

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->d:I

    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :cond_5
    :goto_0
    iput-boolean v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->e:Z

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->j:Ljava/lang/Runnable;

    if-nez v0, :cond_6

    .line 15
    new-instance v0, Lh9/b;

    invoke-direct {v0, p0}, Lh9/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->j:Ljava/lang/Runnable;

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->i:Landroid/os/Handler;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 17
    :cond_7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->p()V

    goto/16 :goto_2

    .line 18
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->b()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 19
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->a()Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v6, v3

    .line 20
    iget-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->e:Z

    if-eqz v3, :cond_d

    int-to-float v3, v6

    cmpl-float v0, v0, v3

    if-lez v0, :cond_d

    .line 21
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->c:I

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->q:I

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->a()Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->a()Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 24
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->q:I

    if-ne v0, v3, :cond_9

    iget v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->c:I

    if-ne v3, v6, :cond_9

    iget v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->d:I

    if-ne v6, v7, :cond_9

    if-nez v7, :cond_9

    .line 25
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->p()V

    return-void

    :cond_9
    if-ne v0, v3, :cond_b

    .line 26
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->c:I

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->d:I

    if-ne v0, v3, :cond_a

    goto :goto_1

    :cond_a
    const/4 v4, 0x0

    :cond_b
    :goto_1
    iput-boolean v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->e:Z

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->j:Ljava/lang/Runnable;

    if-nez v0, :cond_c

    .line 28
    new-instance v0, Lh9/c;

    invoke-direct {v0, p0}, Lh9/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->j:Ljava/lang/Runnable;

    .line 29
    :cond_c
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->i:Landroid/os/Handler;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 30
    :cond_d
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->p()V

    :goto_2
    return-void
.end method

.method public C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->m:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->i:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->p:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->i:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->j:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->k:Lcom/guochao/faceshow/promotion/view/WebViewDialog;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 9
    :cond_3
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/b;->unRegisterChangeListener(Lc8/b$c;)V

    .line 10
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public D()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public E(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->F(Ljava/util/List;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getAppActivityGiftList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->F(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public F(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ActivityGift;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getNormalLive()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->s(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->M(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    .line 7
    :cond_1
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->banner:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 8
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->banner:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    :cond_2
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 10
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/rd/PageIndicatorView;->setCount(I)V

    :cond_3
    if-nez p1, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->x()Z

    .line 12
    :cond_4
    invoke-direct {p0, v0, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->G(Ljava/util/List;ZZ)V

    if-eqz v2, :cond_5

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object p1

    iput-boolean v3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->f:Z

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->x()Z

    return-void

    .line 15
    :cond_5
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object p1

    invoke-virtual {p1}, Lc8/b;->n()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object p1

    iget-boolean p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->e:Z

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object p1

    iget-boolean p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->f:Z

    if-eqz p1, :cond_6

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u91cd\u542f\u8dd1\u9a6c\u706f\uff1amQueueInited = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v0

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->e:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", needReset = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v0

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->f:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zune\uff1a"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->banner:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v2, 0x3fffffff    # 1.9999999f

    rem-int v0, v2, v0

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 19
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->t()V

    .line 20
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object p1

    iput-boolean v1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->f:Z

    :cond_6
    return-void
.end method

.method public H()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "resetView"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->x()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "zune\uff1a"

    const-string v1, "\u91cd\u542f\u8dd1\u9a6c\u706f\uff1aresetView"

    .line 3
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->banner:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const v2, 0x3fffffff    # 1.9999999f

    rem-int v1, v2, v1

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->t()V

    return-void
.end method

.method public I()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->o:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->L()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->o:Z

    :cond_0
    return-void
.end method

.method public O(Ljava/util/List;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto :goto_3

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;

    .line 3
    invoke-virtual {v2}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->getGiftId()I

    move-result v5

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->getGiftId()I

    move-result v6

    if-ne v5, v6, :cond_2

    const/4 v3, 0x1

    if-nez v1, :cond_4

    .line 4
    invoke-virtual {v2}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->getRank()I

    move-result v1

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->getRank()I

    move-result v5

    if-eq v1, v5, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 5
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->getRank()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->setRank(I)V

    if-nez v1, :cond_6

    .line 6
    invoke-virtual {v2}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->getDuringNum()I

    move-result v1

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->getDuringNum()I

    move-result v5

    if-eq v1, v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    move v1, v3

    .line 7
    :cond_6
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->getDuringNum()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->setDuringNum(I)V

    goto :goto_0

    :cond_7
    return v1

    :cond_8
    :goto_3
    return v0
.end method

.method public onResetViewEvent(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "resetView"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->i:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->i:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->p:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->i:Landroid/os/Handler;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public q(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->l:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    return-void
.end method

.method public w()V
    .locals 1

    .line 1
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->F(Ljava/util/List;)V

    return-void
.end method

.method public x()Z
    .locals 2

    .line 1
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->d()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v0, 0x8

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return v1
.end method
