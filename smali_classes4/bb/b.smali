.class public Lbb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lbb/b;Lcom/guochao/faceshow/promotion/data/PromotionData;)Z
    .locals 0

    invoke-direct {p0, p1}, Lbb/b;->f(Lcom/guochao/faceshow/promotion/data/PromotionData;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lbb/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lbb/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lbb/b;Ljava/util/List;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lbb/b;->i(Ljava/util/List;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lbb/b;Lcom/guochao/faceshow/promotion/data/PromotionData;)Z
    .locals 0

    invoke-direct {p0, p1}, Lbb/b;->g(Lcom/guochao/faceshow/promotion/data/PromotionData;)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lbb/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lbb/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method private f(Lcom/guochao/faceshow/promotion/data/PromotionData;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    iget-object v1, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    .line 2
    invoke-virtual {v1}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {p1}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    if-nez p1, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    iget-wide v3, p1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->startTime:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    iget-wide v3, p1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->endTime:J

    cmp-long p1, v1, v3

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private g(Lcom/guochao/faceshow/promotion/data/PromotionData;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    iget-object v1, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->video:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    iget-object p1, p1, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->video:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    if-nez p1, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    iget-wide v3, p1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->startTime:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    iget-wide v3, p1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->endTime:J

    cmp-long p1, v1, v3

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private h(Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-wide v1, p1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->requestTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->requestTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private i(Ljava/util/List;ZLjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 5
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    if-eqz v4, :cond_1

    .line 6
    iget-object v5, v4, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->likImg:Ljava/util/List;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 7
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    const/4 v3, 0x1

    .line 10
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 11
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 12
    iget-wide v5, v4, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->startTime:J

    iget-wide v7, p1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->startTime:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    move-object p1, v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->likImg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_8

    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 16
    invoke-static {p3, p1}, Lod/c;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p2, :cond_6

    const/16 v1, 0x24

    .line 17
    invoke-static {p3, p1, v1}, Lod/c;->h(Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 18
    invoke-static {}, Lbb/a;->e()Lbb/a;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lbb/a;->c(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 19
    :cond_6
    invoke-static {p3, p1}, Lod/c;->g(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 20
    invoke-static {}, Lbb/a;->e()Lbb/a;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lbb/a;->d(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 21
    :cond_7
    new-instance v1, Lbb/b$c;

    invoke-direct {v1, p0, p2, p1}, Lbb/b$c;-><init>(Lbb/b;ZLjava/lang/String;)V

    invoke-static {p1, p1, p3, v1}, Lod/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lod/b;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method private k(Lod/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lod/a<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lbb/a;->e()Lbb/a;

    move-result-object v0

    invoke-virtual {v0}, Lbb/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "liveLikeImage"

    .line 2
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPrivateRootPathV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbb/b;->a:Ljava/lang/String;

    const-string/jumbo v0, "videoLikeImage"

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPrivateRootPathV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbb/b;->b:Ljava/lang/String;

    .line 4
    invoke-static {}, Lbb/a;->e()Lbb/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbb/a;->j(Z)V

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>()V

    const-string v1, "api/appactivity/findAllActivity"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lbb/b$a;

    invoke-direct {v1, p0, p1}, Lbb/b$a;-><init>(Lbb/b;Lod/a;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public j()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbb/b;->k(Lod/a;)V

    return-void
.end method

.method public l(Lod/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lod/a<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lbb/a;->e()Lbb/a;

    move-result-object v0

    invoke-virtual {v0}, Lbb/a;->g()Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lbb/b;->h(Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lbb/a;->e()Lbb/a;

    move-result-object v0

    invoke-virtual {v0}, Lbb/a;->g()Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Lod/a;->a(Ljava/lang/Object;ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {}, Lbb/a;->e()Lbb/a;

    move-result-object v0

    invoke-virtual {v0}, Lbb/a;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 4
    invoke-static {}, Lbb/a;->e()Lbb/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbb/a;->l(Lod/a;)V

    return-void

    .line 5
    :cond_2
    new-instance v0, Lbb/b$b;

    invoke-direct {v0, p0, p1}, Lbb/b$b;-><init>(Lbb/b;Lod/a;)V

    invoke-direct {p0, v0}, Lbb/b;->k(Lod/a;)V

    return-void
.end method
