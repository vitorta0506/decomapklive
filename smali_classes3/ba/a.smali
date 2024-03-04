.class public Lba/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lba/a$e;
    }
.end annotation


# static fields
.field private static f:Lba/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lba/a$e;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PublishUgc"

    .line 2
    iput-object v0, p0, Lba/a;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lba/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lba/a;->e:Ljava/util/Set;

    .line 5
    iget-object v0, p0, Lba/a;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lba/a;->a:Ljava/lang/String;

    new-instance v1, Lba/a$a;

    invoke-direct {v1, p0}, Lba/a$a;-><init>(Lba/a;)V

    .line 7
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "publish_dynamic"

    .line 8
    invoke-static {v2, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lba/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lba/a;->b:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lba/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 11
    iget-object v1, p0, Lba/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setPublishStatus(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private A(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getImgList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getImgList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lba/a;->x(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lio/reactivex/k;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;

    move-result-object p1

    .line 4
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lba/a$c;

    invoke-direct {v0, p0}, Lba/a$c;-><init>(Lba/a;)V

    .line 5
    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    :goto_1
    return-void
.end method

.method private B(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getImgList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getThumb()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getImgList()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 5
    invoke-direct {p0, p1, p2}, Lba/a;->B(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lba/a;->A(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    :goto_0
    return-void

    .line 7
    :cond_1
    new-instance v1, Lba/a$b;

    invoke-direct {v1, p0, v0, p1, p2}, Lba/a$b;-><init>(Lba/a;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;I)V

    invoke-static {v0, v1}, Lba/a;->q(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V

    return-void
.end method

.method static synthetic a(Lba/a;)I
    .locals 0

    iget p0, p0, Lba/a;->d:I

    return p0
.end method

.method static synthetic b(Lba/a;I)I
    .locals 0

    iput p1, p0, Lba/a;->d:I

    return p1
.end method

.method static synthetic c(Lba/a;)I
    .locals 2

    iget v0, p0, Lba/a;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lba/a;->d:I

    return v0
.end method

.method static synthetic d(Lba/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lba/a;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lba/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lba/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lba/a;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lba/a;->B(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;I)V

    return-void
.end method

.method static synthetic g(Lba/a;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lba/a;->A(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    return-void
.end method

.method static synthetic h(Lba/a;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lba/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic i(Lba/a;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lba/a;->o(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    return-void
.end method

.method static synthetic j(Lba/a;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lba/a;->x(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    return-void
.end method

.method static synthetic k(Lba/a;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lba/a;->u(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    return-void
.end method

.method static synthetic l(Lba/a;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lba/a;->e:Ljava/util/Set;

    return-object p0
.end method

.method private o(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lba/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, Lba/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getUuid()I

    move-result v3

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getUuid()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getPublishStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setPublishStatus(I)V

    .line 5
    :cond_0
    iget-object v2, p0, Lba/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getPublishStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_3

    .line 6
    iget-object v1, p0, Lba/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    :cond_3
    iget-object v0, p0, Lba/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lba/a;->b:Ljava/util/List;

    const-string v2, "publish_dynamic"

    invoke-static {v2, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lba/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba/a$e;

    .line 9
    invoke-interface {v1, p1}, Lba/a$e;->onPublishResponse(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static p(Landroid/content/Context;Landroid/net/Uri;Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v1, Lf7/b;->j0:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/UriUtils;->uriToFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    const-string p1, "imgFile"

    invoke-virtual {v0, p1, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->R(Ljava/lang/String;Ljava/io/File;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p0

    const-string p1, "flag"

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public static q(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v1, Lf7/b;->j0:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p0, "imgFile"

    .line 2
    invoke-virtual {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->R(Ljava/lang/String;Ljava/io/File;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p0

    const-string v0, "flag"

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public static r()Lba/a;
    .locals 2

    .line 1
    sget-object v0, Lba/a;->f:Lba/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lba/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lba/a;->f:Lba/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lba/a;

    invoke-direct {v1}, Lba/a;-><init>()V

    sput-object v1, Lba/a;->f:Lba/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lba/a;->f:Lba/a;

    return-object v0
.end method

.method private u(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setFriendId(I)V

    const/4 p1, 0x2

    .line 2
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setPublishStatus(I)V

    .line 3
    iget-object p1, p0, Lba/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-direct {p0, p2}, Lba/a;->o(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 5
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setPublishStatus(I)V

    .line 6
    iget-object p1, p0, Lba/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    invoke-direct {p0, p2}, Lba/a;->o(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private x(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lba/a;->e:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getUuid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lba/a;->e:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getUuid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "param"

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v2, "tokens/friend/create_v2"

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->E(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lba/a$d;

    invoke-direct {v1, p0, p1}, Lba/a$d;-><init>(Lba/a;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public m(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lba/a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getUuid()I

    move-result v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getUuid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 4
    iget-object p1, p0, Lba/a;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 5
    iget-object v0, p0, Lba/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lba/a;->b:Ljava/util/List;

    const-string v2, "publish_dynamic"

    invoke-static {v2, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public n(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method public registerOnPublishListener(Lba/a$e;)V
    .locals 1

    iget-object v0, p0, Lba/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lba/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lba/a;->b:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lba/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public t(Laa/b;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laa/b<",
            "Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lba/a;->s()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-interface {p1, v3}, Laa/b;->accept(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public unregisterOnPublishListener(Lba/a$e;)V
    .locals 1

    iget-object v0, p0, Lba/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public v(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setPublishStatus(I)V

    .line 2
    invoke-virtual {p0, p1}, Lba/a;->z(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getImgList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getImgList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lba/a;->B(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lba/a;->A(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    :goto_0
    return-void
.end method

.method public w(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lba/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lba/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getUuid()I

    move-result v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getUuid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3
    iget-object v2, p0, Lba/a;->b:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setPublishStatus(I)V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getHasRetryTimes()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setHasRetryTimes(I)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getImgList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getImgList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-direct {p0, v1, v0}, Lba/a;->B(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;I)V

    goto :goto_2

    .line 8
    :cond_2
    invoke-direct {p0, v1}, Lba/a;->A(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lba/a;->b:Ljava/util/List;

    .line 2
    sput-object v0, Lba/a;->f:Lba/a;

    return-void
.end method

.method public z(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lba/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lba/a;->b:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lba/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lba/a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lba/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lba/a;->b:Ljava/util/List;

    const-string v1, "publish_dynamic"

    invoke-static {v1, p1, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
