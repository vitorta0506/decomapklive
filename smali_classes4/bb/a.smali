.class public Lbb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static i:Lbb/a;


# instance fields
.field private a:Ljava/util/Random;

.field private b:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

.field private c:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

.field private d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lod/a<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lod/a<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lbb/a;->a:Ljava/util/Random;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lbb/a;->f:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbb/a;->g:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbb/a;->h:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbb/a;->d:Ljava/util/LinkedHashMap;

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbb/a;->e:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static synthetic a(Lbb/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lbb/a;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lbb/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lbb/a;->h:Ljava/util/List;

    return-object p0
.end method

.method public static e()Lbb/a;
    .locals 1

    .line 1
    sget-object v0, Lbb/a;->i:Lbb/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lbb/a;

    invoke-direct {v0}, Lbb/a;-><init>()V

    sput-object v0, Lbb/a;->i:Lbb/a;

    .line 3
    :cond_0
    sget-object v0, Lbb/a;->i:Lbb/a;

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbb/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lbb/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbb/a;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lbb/a;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget-object v0, p0, Lbb/a;->e:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lbb/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lbb/a;->e:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lbb/a;->a:Ljava/util/Random;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;
    .locals 1

    iget-object v0, p0, Lbb/a;->b:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lbb/a;->f:Z

    return v0
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbb/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lbb/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lbb/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 4
    iget-object v0, p0, Lbb/a;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lbb/a;->f:Z

    return-void
.end method

.method public k(Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lbb/a;->c:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lbb/a$c;

    invoke-direct {v1, p0, p1}, Lbb/a$c;-><init>(Lbb/a;Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public l(Lod/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lod/a<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lbb/a$a;

    invoke-direct {v1, p0, p1}, Lbb/a$a;-><init>(Lbb/a;Lod/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public m(Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lbb/a;->b:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lbb/a$b;

    invoke-direct {v1, p0, p1}, Lbb/a$b;-><init>(Lbb/a;Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
