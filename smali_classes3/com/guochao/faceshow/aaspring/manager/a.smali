.class public Lcom/guochao/faceshow/aaspring/manager/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq7/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/manager/a$j;,
        Lcom/guochao/faceshow/aaspring/manager/a$k;
    }
.end annotation


# static fields
.field public static d:J

.field private static e:Lcom/guochao/faceshow/aaspring/manager/a;


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/guochao/faceshow/bean/BagListBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/a;->a:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/a;->b:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/manager/a;Lcom/guochao/faceshow/aaspring/beans/AppResource;Lcom/guochao/faceshow/aaspring/base/http/callback/c;Z[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/manager/a;->o(Lcom/guochao/faceshow/aaspring/beans/AppResource;Lcom/guochao/faceshow/aaspring/base/http/callback/c;Z[I)V

    return-void
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/manager/a;Lcom/guochao/faceshow/aaspring/beans/AppResource;I)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/a;->m(Lcom/guochao/faceshow/aaspring/beans/AppResource;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/manager/a;Lcom/guochao/faceshow/bean/BagListBean;Lcom/guochao/faceshow/aaspring/base/http/callback/c;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/manager/a;->n(Lcom/guochao/faceshow/bean/BagListBean;Lcom/guochao/faceshow/aaspring/base/http/callback/c;ZI)V

    return-void
.end method

.method public static d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/a$i;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/manager/a$i;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p0

    .line 2
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/k;->subscribe()Lth/b;

    return-void
.end method

.method private f(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    const/4 v4, 0x1

    if-eq p2, v4, :cond_1

    const/4 v5, 0x2

    if-eq p2, v5, :cond_1

    const/4 v5, 0x3

    if-eq p2, v5, :cond_1

    const/4 v5, 0x4

    if-eq p2, v5, :cond_1

    const/16 v5, 0xd

    if-eq p2, v5, :cond_1

    const/16 v5, 0xe

    if-ne p2, v5, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    .line 5
    :cond_1
    :goto_2
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isHandyGift()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getMp4Url()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isFaceGift(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->setGifList(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static g()Lcom/guochao/faceshow/aaspring/manager/a;
    .locals 2

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/manager/a;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/manager/a;->e:Lcom/guochao/faceshow/aaspring/manager/a;

    if-nez v1, :cond_0

    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/a;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/manager/a;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/manager/a;->e:Lcom/guochao/faceshow/aaspring/manager/a;

    .line 5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/a;->e:Lcom/guochao/faceshow/aaspring/manager/a;

    return-object v0

    :catchall_1
    move-exception v1

    .line 8
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private m(Lcom/guochao/faceshow/aaspring/beans/AppResource;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/AppResource;",
            "I)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x64

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getIm()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2
    :pswitch_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getLiveVoice()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getImbreak()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getBag()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getAppoint()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getPkeffect()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getSoundEffect()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getImEmotInfoRecommend()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getImEmotInfo()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getVideopaster()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getOtoeffect()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_a
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getLiveeffect()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_b
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getIm()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_c
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getOto()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_d
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getVideo()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_e
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getLive()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    :pswitch_f
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getVideoeffect()Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_f
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private n(Lcom/guochao/faceshow/bean/BagListBean;Lcom/guochao/faceshow/aaspring/base/http/callback/c;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/bean/BagListBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Landroid/util/SparseArray<",
            "Lcom/guochao/faceshow/bean/BagListBean;",
            ">;>;ZI)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setCode(I)V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/BagListBean;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/BagListBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 5
    invoke-virtual {v0, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/bean/BagListBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/bean/BagListBean;-><init>()V

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/bean/BagListBean;->setList(Ljava/util/List;)V

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    if-nez p3, :cond_1

    .line 10
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setResult(Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    :cond_1
    return-void
.end method

.method private varargs o(Lcom/guochao/faceshow/aaspring/beans/AppResource;Lcom/guochao/faceshow/aaspring/base/http/callback/c;Z[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/AppResource;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;>;>;Z[I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setCode(I)V

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_0

    .line 5
    aget v3, p4, v2

    .line 6
    invoke-direct {p0, p1, v3}, Lcom/guochao/faceshow/aaspring/manager/a;->m(Lcom/guochao/faceshow/aaspring/beans/AppResource;I)Ljava/util/List;

    move-result-object v4

    .line 7
    invoke-direct {p0, v4, v3}, Lcom/guochao/faceshow/aaspring/manager/a;->f(Ljava/util/List;I)V

    .line 8
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/manager/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 10
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setResult(Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public h(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public i(IIILcom/guochao/faceshow/aaspring/manager/a$k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/guochao/faceshow/aaspring/manager/a$k<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/guochao/faceshow/aaspring/manager/a;->j(IILcom/guochao/faceshow/aaspring/manager/a$k;[I)V

    return-void
.end method

.method public varargs j(IILcom/guochao/faceshow/aaspring/manager/a$k;[I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/guochao/faceshow/aaspring/manager/a$k<",
            "Ljava/io/File;",
            ">;[I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-string v1, ""

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3, v2, v1, v3, v3}, Lcom/guochao/faceshow/aaspring/manager/a$k;->b(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    .line 3
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/guochao/faceshow/aaspring/manager/a;->s(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    array-length v4, p4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    aget v7, p4, v6

    .line 6
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/manager/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_2

    .line 7
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 8
    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz p3, :cond_4

    .line 10
    invoke-interface {p3, v2, v1, v3, v3}, Lcom/guochao/faceshow/aaspring/manager/a$k;->b(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    .line 11
    :cond_4
    array-length p1, p4

    :goto_1
    if-ge v5, p1, :cond_5

    aget p2, p4, v5

    .line 12
    invoke-virtual {p0, v3, v3, p2}, Lcom/guochao/faceshow/aaspring/manager/a;->w(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    if-gtz p1, :cond_b

    move-object p1, v3

    const/4 p4, 0x0

    .line 13
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge p4, v4, :cond_a

    const/4 v4, 0x0

    .line 14
    :goto_3
    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_8

    .line 15
    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v6

    if-ne v6, p2, :cond_7

    .line 16
    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 17
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    move-object v9, v3

    move-object v3, p1

    move-object p1, v9

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-eqz v3, :cond_9

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_a
    :goto_5
    move-object v9, v3

    move-object v3, p1

    move-object p1, v9

    goto :goto_9

    :cond_b
    const/4 p4, 0x0

    .line 18
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge p4, v4, :cond_d

    .line 19
    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourctTypeId()I

    move-result v4

    if-ne v4, p1, :cond_c

    .line 20
    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    goto :goto_7

    :cond_c
    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    :cond_d
    move-object p1, v3

    :goto_7
    if-nez p1, :cond_e

    const-string p1, "not found"

    .line 21
    invoke-interface {p3, v2, p1, v3, v3}, Lcom/guochao/faceshow/aaspring/manager/a$k;->b(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    return-void

    .line 22
    :cond_e
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object p4

    .line 23
    :goto_8
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_10

    .line 24
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v0

    if-ne p2, v0, :cond_f

    .line 25
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    goto :goto_9

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_10
    :goto_9
    if-nez v3, :cond_11

    .line 26
    invoke-interface {p3, v2, v1, p1, v3}, Lcom/guochao/faceshow/aaspring/manager/a$k;->b(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    return-void

    .line 27
    :cond_11
    invoke-static {p1, v3}, Lcom/guochao/faceshow/aaspring/manager/h;->n(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Lcom/guochao/faceshow/aaspring/manager/h;

    move-result-object p1

    if-eqz p3, :cond_12

    .line 28
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/manager/h;->g(Lcom/guochao/faceshow/aaspring/manager/a$k;)V

    .line 29
    :cond_12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/h;->r()V

    return-void
.end method

.method public k(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/manager/a$k;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            "I",
            "Lcom/guochao/faceshow/aaspring/manager/a$k<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/manager/h;->o(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;I)Lcom/guochao/faceshow/aaspring/manager/h;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p1, p4}, Lcom/guochao/faceshow/aaspring/manager/h;->g(Lcom/guochao/faceshow/aaspring/manager/a$k;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/h;->r()V

    return-void
.end method

.method public l(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/manager/a$k;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            "Lcom/guochao/faceshow/aaspring/manager/a$k<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getModuleCode()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/guochao/faceshow/aaspring/manager/a;->k(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/manager/a$k;)V

    return-void
.end method

.method public onLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/a;->e()V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/manager/a$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/manager/a$a;-><init>(Lcom/guochao/faceshow/aaspring/manager/a;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/manager/a;->s(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    return-void
.end method

.method public p(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/a;->c:Landroid/content/Context;

    .line 2
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lq7/a;->addLanguageListener(Lq7/a$a;)V

    return-void
.end method

.method public q(III)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_8

    :cond_0
    if-gtz p2, :cond_5

    move-object p1, v1

    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_4

    const/4 v3, 0x0

    .line 4
    :goto_1
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v4

    if-ne v4, p3, :cond_1

    .line 6
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_7

    :cond_5
    const/4 p1, 0x0

    .line 8
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_7

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourctTypeId()I

    move-result v3

    if-ne v3, p2, :cond_6

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    goto :goto_5

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    move-object p1, v1

    :goto_5
    if-nez p1, :cond_8

    return v2

    .line 11
    :cond_8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    .line 12
    :goto_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 13
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v3

    if-ne p3, v3, :cond_9

    .line 14
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    goto :goto_7

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    if-nez v1, :cond_b

    return v2

    .line 15
    :cond_b
    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/manager/h;->n(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Lcom/guochao/faceshow/aaspring/manager/h;

    move-result-object p2

    .line 16
    invoke-virtual {p2, p1, v1}, Lcom/guochao/faceshow/aaspring/manager/h;->h(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 v2, 0x1

    :cond_c
    return v2

    .line 17
    :cond_d
    :goto_8
    invoke-virtual {p0, v1, v1, p1}, Lcom/guochao/faceshow/aaspring/manager/a;->w(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;I)V

    return v2
.end method

.method public r(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/manager/h;->n(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Lcom/guochao/faceshow/aaspring/manager/h;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/h;->h(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public s(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/a$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/a$b;-><init>(Lcom/guochao/faceshow/aaspring/manager/a;Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    const-wide/16 v1, 0x3e8

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread(Ljava/lang/Runnable;Ljava/lang/Long;)V

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/a$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/a$c;-><init>(Lcom/guochao/faceshow/aaspring/manager/a;Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    const-wide/16 v1, 0xfa0

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread(Ljava/lang/Runnable;Ljava/lang/Long;)V

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/a$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/a$d;-><init>(Lcom/guochao/faceshow/aaspring/manager/a;Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    const-wide/16 v1, 0x3a98

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread(Ljava/lang/Runnable;Ljava/lang/Long;)V

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/a$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/a$e;-><init>(Lcom/guochao/faceshow/aaspring/manager/a;Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    const-wide/16 p1, 0x61a8

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 12
    invoke-static {v0, p1}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread(Ljava/lang/Runnable;Ljava/lang/Long;)V

    return-void
.end method

.method public t(I)Lcom/guochao/faceshow/bean/BagListBean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/BagListBean;

    return-object p1
.end method

.method public u(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Landroid/util/SparseArray<",
            "Lcom/guochao/faceshow/bean/BagListBean;",
            ">;>;I)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/BagListBean;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setCode(I)V

    .line 4
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 5
    invoke-virtual {v2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setResult(Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :cond_1
    :goto_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v1, "api/token/trade/bag/list/V2"

    invoke-direct {p1, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/a$h;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/guochao/faceshow/aaspring/manager/a$h;-><init>(Lcom/guochao/faceshow/aaspring/manager/a;ZILcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    .line 9
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance p3, Lcom/guochao/faceshow/aaspring/manager/a$g;

    invoke-direct {p3, p0, p2, v0}, Lcom/guochao/faceshow/aaspring/manager/a$g;-><init>(Lcom/guochao/faceshow/aaspring/manager/a;Lcom/guochao/faceshow/aaspring/base/http/callback/c;Z)V

    .line 10
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    sget-object p2, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;->GET:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;

    .line 11
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->method(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method public v(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public w(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;I)V
    .locals 5
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/callback/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;>;>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;-><init>()V

    .line 4
    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setCode(I)V

    .line 5
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 6
    invoke-virtual {v4, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setResult(Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p2, v4, v3}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 9
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v3, Lcom/guochao/faceshow/aaspring/manager/a$f;

    invoke-direct {v3, p0, v1, p2, p3}, Lcom/guochao/faceshow/aaspring/manager/a$f;-><init>(Lcom/guochao/faceshow/aaspring/manager/a;ZLcom/guochao/faceshow/aaspring/base/http/callback/c;I)V

    .line 13
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;-><init>()V

    const-string p3, "tokens/source/newdata"

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/manager/a;->c:Landroid/content/Context;

    .line 14
    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->P(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 15
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->K(Z)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 16
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p2

    invoke-virtual {p2}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p2

    const-string p3, "language"

    invoke-virtual {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const-string p2, "typeArr"

    .line 17
    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 18
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
