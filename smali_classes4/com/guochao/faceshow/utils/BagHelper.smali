.class public final Lcom/guochao/faceshow/utils/BagHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006H\u0002J\u0014\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006J\"\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/guochao/faceshow/utils/BagHelper;",
        "",
        "()V",
        "getBagResource",
        "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
        "tempAllList",
        "",
        "isShowBag",
        "",
        "resourceCategoryItems",
        "mergeData",
        "",
        "data",
        "Landroid/util/SparseArray;",
        "Lcom/guochao/faceshow/bean/BagListBean;",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/utils/BagHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/utils/BagHelper;

    invoke-direct {v0}, Lcom/guochao/faceshow/utils/BagHelper;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/utils/BagHelper;->INSTANCE:Lcom/guochao/faceshow/utils/BagHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getBagResource(Ljava/util/List;)Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getChildCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bag"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final isShowBag(Ljava/util/List;)Z
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "resourceCategoryItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getChildCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bag"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final mergeData(Landroid/util/SparseArray;Ljava/util/List;)V
    .locals 10
    .param p1    # Landroid/util/SparseArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/guochao/faceshow/bean/BagListBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tempAllList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_b

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_b

    .line 3
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/utils/BagHelper;->getBagResource(Ljava/util/List;)Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    move-result-object v0

    const/16 v3, 0xe

    .line 4
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/BagListBean;

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/BagListBean;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/bean/BagBean;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 9
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 10
    invoke-virtual {v5}, Lcom/guochao/faceshow/bean/BagBean;->getGiftId()I

    move-result v8

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v8

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-class v9, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v8, v7, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 12
    invoke-virtual {v5}, Lcom/guochao/faceshow/bean/BagBean;->getExpireDay()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->setDateLimit(J)V

    .line 13
    invoke-virtual {v5}, Lcom/guochao/faceshow/bean/BagBean;->getNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->setNumber(I)V

    .line 14
    invoke-virtual {v5}, Lcom/guochao/faceshow/bean/BagBean;->getFreezeNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->setFreezeNumber(I)V

    .line 15
    invoke-virtual {v5}, Lcom/guochao/faceshow/bean/BagBean;->getBagAttribute()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->setBagAttribute(I)V

    .line 16
    invoke-virtual {v7, v3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->setItemType(I)V

    .line 17
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_4
    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    if-eqz v0, :cond_6

    .line 20
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_8

    .line 21
    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 23
    invoke-virtual {v4, v3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->setItemType(I)V

    .line 24
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getNumber()I

    move-result v4

    if-gtz v4, :cond_7

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    .line 26
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_b

    .line 27
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 28
    :cond_a
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 30
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getChildCode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "bag"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_b
    return-void
.end method
