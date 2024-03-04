.class public Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc8/b$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;,
        Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$f;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Z

.field bgFloatView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

.field private e:J

.field private f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$f;

.field private g:Z

.field indicatorLay:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivExpand:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field topImageLay:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->c:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->a:Landroid/view/View;

    .line 4
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->a:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->l()V

    .line 7
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lc8/b;->registerChangeListener(Lc8/b$c;)V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;)Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    return-object p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;Landroid/view/View;Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->o(Landroid/view/View;Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;)V

    return-void
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;Landroid/widget/TextView;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->y(Landroid/widget/TextView;II)V

    return-void
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic g(Ljava/io/File;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->p(Ljava/io/File;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;)V

    return-void
.end method

.method public static h(ZI)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getFullScreenLive()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 4
    iget-object v2, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appActivityGiftEntityList:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget v2, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    if-ne v2, p1, :cond_0

    if-eqz p0, :cond_2

    .line 6
    iget-object p0, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->liveMultilLang:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p0, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->normalMutilLang:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method private l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->indicatorLay:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->indicatorLay:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private static m(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/utils/Md5;->getMd5ByFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private o(Landroid/view/View;Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;)V
    .locals 12

    .line 1
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->shareImgUrl:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/LanguageGetUtils;->isLanguageChinese()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->shareTextCn:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->shareTextEn:Ljava/lang/String;

    :goto_0
    move-object v2, v0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->webPageUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->getUrlFromType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    const-string v4, "userToken"

    invoke-static {v3, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->webPageUrl:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->getUrlFromType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&name="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-static {}, Leb/b;->y()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v8, ""

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appScheme:Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;->getSchemeData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v10, p2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appScheme:Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;

    invoke-virtual {v10}, Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;->getSchemeData()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "h5Url"

    .line 11
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "isNeedToken"

    .line 12
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v11, "shareTitle"

    .line 13
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "shareText"

    .line 14
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "shareImg"

    .line 15
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v11, "h5Type"

    .line 16
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v11, "isShare"

    .line 17
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->getUrlFromType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v0

    move-object v6, v1

    move-object v5, v2

    move-object v4, v7

    move-object v7, v3

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v11, v8

    .line 20
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v5, v2

    move-object v4, v7

    goto :goto_2

    :cond_2
    move-object v5, v2

    move-object v4, v7

    move-object v11, v8

    :goto_2
    move-object v7, v6

    move-object v6, v1

    .line 21
    :goto_3
    iget v0, p2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    .line 22
    new-instance v1, Lcom/guochao/faceshow/promotion/view/WebViewDialog;

    invoke-direct {v1}, Lcom/guochao/faceshow/promotion/view/WebViewDialog;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_5

    .line 24
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v10, 0x1

    if-nez v2, :cond_4

    const-string v2, "1"

    .line 25
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 26
    :cond_4
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, p2

    invoke-virtual/range {v1 .. v10}, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->R1(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;Z)V

    :cond_5
    return-void
.end method

.method private static p(Ljava/io/File;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;)V
    .locals 4
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$d;

    invoke-direct {v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 3
    invoke-interface {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;->a(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static q(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;I)V
    .locals 6

    .line 1
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;->a(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getFullScreenLive()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->screenEffectUrl:Ljava/lang/String;

    .line 4
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v3

    invoke-virtual {v3}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object v3

    iget-object v3, v3, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v3}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getFullScreenLive()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    iget-object v2, v2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->screenEffectMd5:Ljava/lang/String;

    .line 5
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v3

    invoke-virtual {v3}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object v3

    iget-object v3, v3, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v3}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getFullScreenLive()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 6
    iget-object v5, v4, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appActivityGiftEntityList:Ljava/util/List;

    if-nez v5, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget v5, v4, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    if-ne p1, v5, :cond_2

    .line 8
    iget-object v0, v4, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->screenEffectUrl:Ljava/lang/String;

    .line 9
    iget-object v2, v4, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->screenEffectMd5:Ljava/lang/String;

    :cond_4
    const-string p1, "FullActivityEvent"

    .line 10
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXShowPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "FullActivityEvent.svga"

    .line 11
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {v4, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->m(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 13
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "zune\uff1a"

    invoke-static {v4, v2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->h(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$c;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;)V

    .line 16
    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->a(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    goto :goto_1

    .line 17
    :cond_5
    invoke-static {v4, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->p(Ljava/io/File;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;)V

    :goto_1
    return-void
.end method

.method private t(Ljava/lang/String;Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->topImageLay:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->topImageLay:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private y(Landroid/widget/TextView;II)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const-string p2, "%s/%s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "/"

    .line 2
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    .line 3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    const/16 v3, 0x21

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->getVariableNumberColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    :try_start_0
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    invoke-virtual {v4}, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->getVariableNumberColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v2, v1, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "#ffe400"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v2, v1, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 8
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->getGiftNumberColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    :try_start_1
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    invoke-virtual {v2}, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->getGiftNumberColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, v1, p3, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 12
    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public i(Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;)Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    const/high16 v0, 0x40800000    # 4.0f

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 2
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->getActiveBackgroundColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "#10471F"

    .line 6
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    :goto_0
    int-to-float v0, v0

    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 8
    :try_start_1
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->getBorderColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    const-string v0, "#FFFF00"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    :goto_1
    return-object v1
.end method

.method public j(Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;)Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    const/high16 v0, 0x40d00000    # 6.5f

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 2
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->getNumberBannerColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "#052b05"

    .line 6
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    :goto_0
    int-to-float p1, v0

    .line 7
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v1
.end method

.method public k()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->a:Landroid/view/View;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->g:Z

    return v0
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a03af

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->b:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->b:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->indicatorLay:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->topImageLay:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->bgFloatView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/high16 v0, 0x41f80000    # 31.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->ivExpand:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->getRightFoldUpImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->getActivitiesCoverSmall()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->t(Ljava/lang/String;Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->indicatorLay:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->topImageLay:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/high16 v0, 0x42280000    # 42.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->bgFloatView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->ivExpand:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->getRightCornerImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->getActivitiesCoverBig()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->t(Ljava/lang/String;Landroid/widget/ImageView$ScaleType;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public r(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V
    .locals 7

    .line 1
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->e:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    return-void

    .line 4
    :cond_1
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->e:J

    .line 5
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getFullScreenLive()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 7
    iget-object v1, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appActivityGiftEntityList:Ljava/util/List;

    if-nez v1, :cond_3

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;

    .line 10
    invoke-virtual {v4}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->getGiftId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getGiftId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11
    :try_start_0
    invoke-virtual {v4}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->getSendCount()I

    move-result v3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getGiftNum()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getGiftNum()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_1
    add-int/2addr v3, v5

    invoke-virtual {v4, v3}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->setSendCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 12
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->u()V

    :cond_7
    return-void
.end method

.method public s(IZ)V
    .locals 4

    .line 1
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getFullScreenLive()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 4
    iget v2, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    if-ne v2, p1, :cond_1

    .line 5
    iget-object v1, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appActivityGiftEntityList:Ljava/util/List;

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->setSendCount(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->u()V

    :cond_4
    return-void
.end method

.method public setOnPlayMusicAnimListener(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$f;

    return-void
.end method

.method public u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v2

    invoke-virtual {v2}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v2}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getFullScreenLive()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 3
    iget-object v2, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appActivityGiftEntityList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appActivityGiftEntityList:Ljava/util/List;

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    iget-object v2, v2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appActivityGiftEntityList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->indicatorLay:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->indicatorLay:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->bgFloatView:Landroid/view/View;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->i(Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->getActivitiesCoverBig()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->t(Ljava/lang/String;Landroid/widget/ImageView$ScaleType;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->ivExpand:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->getRightCornerImg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public v(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->e:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->u()V

    .line 3
    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->e:J

    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->g:Z

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->x(ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->g:Z

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->x(ZZ)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->u()V

    return-void
.end method

.method public x(ZZ)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->g:Z

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->a:Landroid/view/View;

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public z(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$f;->a(I)V

    :cond_0
    return-void
.end method
