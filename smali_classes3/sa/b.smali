.class public Lsa/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsa/b$e;
    }
.end annotation


# static fields
.field private static j:I = 0x7f0a0692

.field private static k:I = 0x7f0a0dfb

.field private static l:I = 0x7f0a0e05

.field private static final m:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lsa/d;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/gift/data/AnimFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/gift/data/AnimFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/view/ViewGroup;

.field final h:Landroid/os/Handler;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lsa/b;->m:Landroid/util/ArrayMap;

    const/16 v1, 0x78

    .line 2
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f0f053f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x30

    .line 3
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f0f0535

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x31

    .line 4
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f0f0536

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x32

    .line 5
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f0f0537

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x33

    .line 6
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f0f0538

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x34

    .line 7
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f0f0539

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x35

    .line 8
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f0f053a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x36

    .line 9
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f0f053b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x37

    .line 10
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f0f053c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x38

    .line 11
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f0f053d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x39

    .line 12
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f0f053e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lsa/b;->h:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lsa/b;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lsa/b;->g:Landroid/view/ViewGroup;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lsa/b;->c:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lsa/b;->d:Ljava/util/List;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lsa/b;->e:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lsa/b;->f:Ljava/util/HashMap;

    .line 9
    new-instance p1, Lsa/d;

    invoke-direct {p1}, Lsa/d;-><init>()V

    iput-object p1, p0, Lsa/b;->a:Lsa/d;

    return-void
.end method

.method static synthetic a(Lsa/b;)Lsa/d;
    .locals 0

    iget-object p0, p0, Lsa/b;->a:Lsa/d;

    return-object p0
.end method

.method static synthetic b(Lsa/b;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lsa/b;->g:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic c(Lsa/b;Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lsa/b;->t(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic d(Lsa/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lsa/b;->g(Z)V

    return-void
.end method

.method private e(Lcom/guochao/faceshow/gift/data/AnimFlag;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lsa/b;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lsa/b;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/gift/data/AnimFlag;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v3, Lcom/guochao/faceshow/gift/data/AnimFlag;

    invoke-virtual {v1, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/gift/data/AnimFlag;

    .line 5
    iput v2, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->x:I

    .line 6
    iget-object v1, p0, Lsa/b;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->p:J

    .line 8
    iget-object v0, p0, Lsa/b;->g:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lsa/b;->l(Lcom/guochao/faceshow/gift/data/AnimFlag;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LiveGiftTipsShowController:giftViewNoReward\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 10
    invoke-direct {p0, v2, p1, v0}, Lsa/b;->n(ZLcom/guochao/faceshow/gift/data/AnimFlag;Landroid/view/View;)V

    goto :goto_2

    .line 11
    :cond_2
    iget-object v0, p0, Lsa/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lsa/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_3
    iget v0, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    iget v1, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->m:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    .line 14
    :goto_1
    invoke-direct {p0, v2}, Lsa/b;->g(Z)V

    :goto_2
    return-void
.end method

.method private f(Lcom/guochao/faceshow/gift/data/AnimFlag;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsa/b;->g:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lsa/b;->k(Lcom/guochao/faceshow/gift/data/AnimFlag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LiveGiftTipsShowController:giftView\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v1, p1, v0}, Lsa/b;->n(ZLcom/guochao/faceshow/gift/data/AnimFlag;Landroid/view/View;)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lsa/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lsa/b;->e:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "LiveGiftTipsShowController:mPipeAnimList\u961f\u5217\u91cc\u5df2\u7ecf\u6709\u4e86\uff1asendCount+1"

    .line 6
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 7
    iget v0, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    iget v2, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->m:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    .line 8
    :goto_0
    invoke-direct {p0, v1}, Lsa/b;->g(Z)V

    :goto_1
    return-void
.end method

.method private g(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lsa/b;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsa/b;->e:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-object v0, p0, Lsa/b;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lsa/b;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/gift/data/AnimFlag;

    invoke-direct {p0, v1}, Lsa/b;->k(Lcom/guochao/faceshow/gift/data/AnimFlag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lsa/b;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v0, v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lsa/b;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v0, v1, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-direct {p0}, Lsa/b;->h()Lcom/guochao/faceshow/gift/data/AnimFlag;

    move-result-object v0

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\u627e\u5230\u666e\u901a\u793c\u7269:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Lsa/b;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/gift/data/AnimFlag;

    :goto_0
    if-nez v0, :cond_5

    .line 9
    invoke-direct {p0, v2}, Lsa/b;->g(Z)V

    return-void

    .line 10
    :cond_5
    iget-object v3, p0, Lsa/b;->g:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lsa/b;->k(Lcom/guochao/faceshow/gift/data/AnimFlag;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\u67e5\u627e\u662f\u5426\u5728\u539f\u6709\u7684\u57fa\u7840\u4e0a\u7d2f\u52a0:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    if-nez v3, :cond_6

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":giftAddNewAction:isLuckyGiftRewardMessage:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/gift/data/AnimFlag;->a()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, v0}, Lsa/b;->m(Lcom/guochao/faceshow/gift/data/AnimFlag;)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x1

    .line 14
    invoke-direct {p0, v2, v0, p1}, Lsa/b;->n(ZLcom/guochao/faceshow/gift/data/AnimFlag;Landroid/view/View;)V

    goto :goto_1

    :cond_6
    if-nez p1, :cond_7

    .line 15
    sget p1, Lsa/b;->j:I

    invoke-virtual {v3, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/gift/data/AnimFlag;

    .line 16
    invoke-direct {p0, v2, p1, v3}, Lsa/b;->n(ZLcom/guochao/faceshow/gift/data/AnimFlag;Landroid/view/View;)V

    .line 17
    :cond_7
    :goto_1
    iget-object p1, p0, Lsa/b;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge p1, v1, :cond_8

    .line 18
    iget-object p1, p0, Lsa/b;->h:Landroid/os/Handler;

    invoke-direct {p0}, Lsa/b;->i()Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_2
    return-void
.end method

.method private h()Lcom/guochao/faceshow/gift/data/AnimFlag;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lsa/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lsa/b;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/gift/data/AnimFlag;

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/gift/data/AnimFlag;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lsa/b;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/gift/data/AnimFlag;

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private i()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lsa/b$d;

    invoke-direct {v0, p0}, Lsa/b$d;-><init>(Lsa/b;)V

    return-object v0
.end method

.method private j(Landroid/view/View;Z)Ljava/lang/Runnable;
    .locals 1

    if-eqz p2, :cond_1

    const p2, 0x7f0a0966

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lsa/b$b;

    invoke-direct {v0, p0, p1}, Lsa/b$b;-><init>(Lsa/b;Landroid/view/View;)V

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0

    .line 4
    :cond_1
    new-instance p2, Lsa/b$c;

    invoke-direct {p2, p0, p1}, Lsa/b$c;-><init>(Lsa/b;Landroid/view/View;)V

    return-object p2
.end method

.method private k(Lcom/guochao/faceshow/gift/data/AnimFlag;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsa/b;->l(Lcom/guochao/faceshow/gift/data/AnimFlag;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private l(Lcom/guochao/faceshow/gift/data/AnimFlag;Z)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->w:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->x:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private m(Lcom/guochao/faceshow/gift/data/AnimFlag;)Landroid/view/View;
    .locals 9

    .line 1
    iget v0, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->h:I

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/gift/data/AnimFlag;->a()Z

    move-result p1

    const v0, 0x7f0a00f0

    const v1, 0x7f0a0104

    const v2, 0x7f0a0693

    const v3, 0x7f0a0697

    const v4, 0x7f0a0695

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lsa/b;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v7, 0x7f0d03ac

    iget-object v8, p0, Lsa/b;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance v6, Lsa/b$e;

    invoke-direct {v6, v5}, Lsa/b$e;-><init>(Lsa/b$a;)V

    .line 5
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v6, Lsa/b$e;->a:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lsa/b$e;->e:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v6, Lsa/b$e;->f:Landroid/widget/ImageView;

    const v2, 0x7f0a0985

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/gift/view/NumberIconTextView;

    iput-object v2, v6, Lsa/b$e;->i:Lcom/guochao/faceshow/gift/view/NumberIconTextView;

    const v2, 0x7f0a0e6d

    .line 9
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v6, Lsa/b$e;->j:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v6, Lsa/b$e;->k:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lsa/b$e;->c:Landroid/widget/ImageView;

    .line 12
    sget v0, Lsa/b;->l:I

    invoke-virtual {p1, v0, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lsa/b;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v7, 0x7f0d03ad

    iget-object v8, p0, Lsa/b;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 14
    new-instance v6, Lsa/b$e;

    invoke-direct {v6, v5}, Lsa/b$e;-><init>(Lsa/b$a;)V

    const v5, 0x7f0a0694

    .line 15
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lsa/b$e;->b:Landroid/widget/TextView;

    const v5, 0x7f0a06bd

    .line 16
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lsa/b$e;->d:Landroid/widget/TextView;

    .line 17
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v6, Lsa/b$e;->a:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lsa/b$e;->e:Landroid/widget/TextView;

    .line 19
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v6, Lsa/b$e;->f:Landroid/widget/ImageView;

    const v2, 0x7f0a09fe

    .line 20
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v6, Lsa/b$e;->g:Landroid/view/View;

    const v2, 0x7f0a09a1

    .line 21
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v6, Lsa/b$e;->h:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v6, Lsa/b$e;->k:Landroid/widget/ImageView;

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lsa/b$e;->c:Landroid/widget/ImageView;

    .line 24
    sget v0, Lsa/b;->k:I

    invoke-virtual {p1, v0, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method private n(ZLcom/guochao/faceshow/gift/data/AnimFlag;Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LiveGiftTipsShowController,fristLayout:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 2
    iget-object v4, v0, Lsa/b;->e:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LiveGiftTipsShowController,mPipeAnimList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lsa/b;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/gift/data/AnimFlag;->a()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5
    iget-object v4, v0, Lsa/b;->e:Ljava/util/List;

    invoke-direct {v0, v4, v2}, Lsa/b;->p(Ljava/util/List;Lcom/guochao/faceshow/gift/data/AnimFlag;)Ljava/util/List;

    move-result-object v4

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LiveGiftTipsShowController,hasList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/gift/data/AnimFlag;

    .line 9
    iget v6, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    iget v5, v5, Lcom/guochao/faceshow/gift/data/AnimFlag;->m:I

    add-int/2addr v6, v5

    iput v6, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->j:J

    .line 11
    invoke-direct {v0, v2}, Lsa/b;->k(Lcom/guochao/faceshow/gift/data/AnimFlag;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    sget v4, Lsa/b;->j:I

    invoke-virtual {v3, v4, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/gift/data/AnimFlag;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 14
    sget v4, Lsa/b;->l:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsa/b$e;

    goto :goto_1

    .line 15
    :cond_2
    sget v4, Lsa/b;->k:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsa/b$e;

    .line 16
    :goto_1
    iget-object v5, v4, Lsa/b$e;->a:Landroid/widget/ImageView;

    .line 17
    iget-object v6, v4, Lsa/b$e;->d:Landroid/widget/TextView;

    .line 18
    iget-object v7, v4, Lsa/b$e;->e:Landroid/widget/TextView;

    .line 19
    iget-object v8, v4, Lsa/b$e;->f:Landroid/widget/ImageView;

    .line 20
    iget-object v9, v4, Lsa/b$e;->i:Lcom/guochao/faceshow/gift/view/NumberIconTextView;

    .line 21
    iget-object v10, v4, Lsa/b$e;->k:Landroid/widget/ImageView;

    .line 22
    iget-object v11, v4, Lsa/b$e;->c:Landroid/widget/ImageView;

    .line 23
    iget-object v12, v4, Lsa/b$e;->b:Landroid/widget/TextView;

    if-eqz v12, :cond_4

    .line 24
    iget-object v12, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->A:Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isHandyGiftMessage()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 25
    iget-object v12, v4, Lsa/b$e;->b:Landroid/widget/TextView;

    const v13, 0x7f1203eb

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 26
    :cond_3
    iget-object v12, v4, Lsa/b$e;->b:Landroid/widget/TextView;

    const v13, 0x7f1207dc

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 27
    :cond_4
    :goto_2
    iget-object v12, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->q:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    const/4 v13, 0x0

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getDressHead()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 28
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object v12, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->q:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getDressHead()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const/4 v12, 0x4

    .line 30
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/gift/data/AnimFlag;->a()Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_c

    .line 32
    iget-object v11, v4, Lsa/b$e;->a:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 33
    iget v14, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->y:I

    if-eqz v14, :cond_a

    const/high16 v15, 0x3fc00000    # 1.5f

    if-eq v14, v12, :cond_8

    const/4 v12, 0x2

    if-eq v14, v12, :cond_6

    goto :goto_4

    .line 34
    :cond_6
    invoke-static {v15}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 35
    iget-object v4, v4, Lsa/b$e;->j:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    const v11, 0x7f0f047a

    .line 36
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    const v4, 0x7f080284

    .line 37
    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 38
    :cond_8
    invoke-static {v15}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 39
    iget-object v4, v4, Lsa/b$e;->j:Landroid/widget/ImageView;

    if-eqz v4, :cond_9

    const v11, 0x7f0f0479

    .line 40
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_9
    const v4, 0x7f080283

    .line 41
    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 42
    :cond_a
    invoke-virtual {v11, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 43
    iget-object v4, v4, Lsa/b$e;->j:Landroid/widget/ImageView;

    if-eqz v4, :cond_b

    const v11, 0x7f0f047b

    .line 44
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_b
    const v4, 0x7f080285

    .line 45
    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 46
    :cond_c
    iget v4, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->h:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_e

    .line 47
    iget v4, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    const/16 v10, 0xa

    if-lt v4, v10, :cond_d

    const v4, 0x7f080463

    .line 48
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_d
    const v4, 0x7f080462

    .line 49
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    :cond_e
    :goto_4
    iget-object v4, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->i:Ljava/lang/String;

    const v10, 0x7f0f0089

    invoke-static {v5, v4, v10}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 51
    iget-object v4, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->g:Ljava/lang/String;

    invoke-static {v8, v4}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    iget v8, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->h:I

    mul-int v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/gift/data/AnimFlag;->a()Z

    move-result v5

    if-nez v5, :cond_f

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":giftItemFlag.addCountOri:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->m:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 55
    iget v5, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    iget v8, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->m:I

    add-int/2addr v5, v8

    iput v5, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    .line 56
    :cond_f
    iget v5, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    iget v8, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->h:I

    mul-int v5, v5, v8

    if-nez v5, :cond_10

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":giftItemFlag.sendCount:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    :cond_10
    if-eqz v6, :cond_11

    .line 58
    invoke-direct {v0, v6, v4}, Lsa/b;->u(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 59
    :cond_11
    iget v4, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->h:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_12

    const/4 v10, 0x1

    goto :goto_5

    :cond_12
    const/4 v10, 0x0

    .line 60
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/gift/data/AnimFlag;->a()Z

    move-result v4

    if-eqz v4, :cond_14

    if-eqz v9, :cond_14

    .line 61
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v5

    invoke-virtual {v5}, Lq7/a;->j()Z

    move-result v5

    const-string v6, "x"

    const v8, 0x7f120550

    if-eqz v5, :cond_13

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/text/StringsKt;->reversed(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v11, v13

    invoke-virtual {v6, v8, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/guochao/faceshow/gift/view/NumberIconTextView;->setSpanText(Ljava/lang/String;)V

    goto :goto_6

    :cond_13
    const/4 v11, 0x1

    .line 64
    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->x:I

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v13

    invoke-virtual {v5, v8, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/guochao/faceshow/gift/view/NumberIconTextView;->setSpanText(Ljava/lang/String;)V

    .line 65
    :cond_14
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->j:J

    const/16 v5, 0x8

    .line 66
    iget-object v6, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->d:Ljava/lang/String;

    invoke-static {v7, v5, v6}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setMaxEcplise(Landroid/widget/TextView;ILjava/lang/String;)V

    if-eqz v1, :cond_17

    .line 67
    iget-object v1, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->a:Landroid/view/animation/Animation;

    if-nez v1, :cond_15

    .line 68
    invoke-direct/range {p0 .. p0}, Lsa/b;->r()Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->a:Landroid/view/animation/Animation;

    .line 69
    :cond_15
    invoke-direct {v0, v3, v4}, Lsa/b;->j(Landroid/view/View;Z)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->k:Ljava/lang/Runnable;

    .line 70
    iget-object v1, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 71
    iget-object v1, v0, Lsa/b;->h:Landroid/os/Handler;

    new-instance v4, Lsa/b$a;

    invoke-direct {v4, v0, v3, v10, v2}, Lsa/b$a;-><init>(Lsa/b;Landroid/view/View;ZLcom/guochao/faceshow/gift/data/AnimFlag;)V

    iget-object v5, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->a:Landroid/view/animation/Animation;

    .line 72
    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    .line 73
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 75
    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_16

    .line 76
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const-string v1, "LiveGiftTipsShowController.removeView"

    .line 77
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 78
    :cond_16
    iget-object v1, v0, Lsa/b;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    iget-object v1, v0, Lsa/b;->b:Landroid/content/Context;

    instance-of v4, v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v4, :cond_19

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-boolean v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->j:Z

    if-eqz v1, :cond_19

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->clearAnimation()V

    .line 81
    iget-object v1, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->a:Landroid/view/animation/Animation;

    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7

    :cond_17
    if-nez v4, :cond_19

    .line 82
    iget-object v1, v0, Lsa/b;->h:Landroid/os/Handler;

    iget-object v5, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    iget-object v1, v0, Lsa/b;->a:Lsa/d;

    if-eqz v1, :cond_18

    .line 84
    invoke-virtual {v1, v3, v10}, Lsa/d;->a(Landroid/view/View;Z)V

    .line 85
    :cond_18
    invoke-direct {v0, v3, v4}, Lsa/b;->j(Landroid/view/View;Z)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->k:Ljava/lang/Runnable;

    .line 86
    iget-object v2, v0, Lsa/b;->h:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    :goto_7
    return-void
.end method

.method private o(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getCurrentReward()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isSelfSend()Z

    move-result v2

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lsa/b;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    invoke-direct {p0, p1}, Lsa/b;->x(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)Ljava/util/List;

    move-result-object v0

    .line 5
    iget-object v3, p0, Lsa/b;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-direct {p0, v1}, Lsa/b;->g(Z)V

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    if-nez v2, :cond_2

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    .line 8
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->setLuckyGiftResults(Ljava/util/List;)V

    :cond_2
    return-object p1
.end method

.method private p(Ljava/util/List;Lcom/guochao/faceshow/gift/data/AnimFlag;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/gift/data/AnimFlag;",
            ">;",
            "Lcom/guochao/faceshow/gift/data/AnimFlag;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/gift/data/AnimFlag;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_2

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/gift/data/AnimFlag;

    .line 4
    invoke-virtual {v2}, Lcom/guochao/faceshow/gift/data/AnimFlag;->a()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->d:Ljava/lang/String;

    iget-object v4, p2, Lcom/guochao/faceshow/gift/data/AnimFlag;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcom/guochao/faceshow/gift/data/AnimFlag;->f:Ljava/lang/String;

    iget-object v4, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p2, Lcom/guochao/faceshow/gift/data/AnimFlag;->h:I

    iget v4, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->h:I

    if-ne v3, v4, :cond_1

    iget-object v3, p2, Lcom/guochao/faceshow/gift/data/AnimFlag;->u:Ljava/lang/String;

    iget-object v4, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->u:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p2, Lcom/guochao/faceshow/gift/data/AnimFlag;->w:I

    iget v2, v2, Lcom/guochao/faceshow/gift/data/AnimFlag;->w:I

    if-ne v3, v2, :cond_1

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/gift/data/AnimFlag;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private r()Landroid/view/animation/Animation;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lsa/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lsa/b;->b:Landroid/content/Context;

    const v1, 0x7f010039

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private t(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 3
    :cond_2
    sget v0, Lsa/b;->j:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/gift/data/AnimFlag;

    .line 4
    iget-object v1, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->b:Landroid/view/animation/Animation;

    if-nez v1, :cond_3

    .line 5
    iget-object v1, p0, Lsa/b;->b:Landroid/content/Context;

    const v2, 0x7f010050

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->b:Landroid/view/animation/Animation;

    .line 6
    :cond_3
    iget-object v1, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->b:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    if-eqz p3, :cond_4

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 8
    :cond_4
    iget-object p3, p0, Lsa/b;->h:Landroid/os/Handler;

    invoke-direct {p0}, Lsa/b;->i()Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->b:Landroid/view/animation/Animation;

    .line 9
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    .line 10
    invoke-virtual {p3, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 12
    iget-object p3, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->b:Landroid/view/animation/Animation;

    invoke-virtual {p2, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    sget p1, Lsa/b;->j:I

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/gift/data/AnimFlag;

    if-nez p1, :cond_5

    return-void

    .line 15
    :cond_5
    invoke-virtual {p1}, Lcom/guochao/faceshow/gift/data/AnimFlag;->a()Z

    move-result p1

    const/16 p3, 0x14

    if-eqz p1, :cond_6

    .line 16
    iget-object p1, p0, Lsa/b;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, p3, :cond_7

    .line 17
    iget-object p1, p0, Lsa/b;->d:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_6
    iget-object p1, p0, Lsa/b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, p3, :cond_7

    .line 19
    iget-object p1, p0, Lsa/b;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_0
    return-void
.end method

.method private u(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 4
    aget-char v3, p2, v2

    .line 5
    sget-object v4, Lsa/b;->m:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 6
    iget-object v4, p0, Lsa/b;->b:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    new-instance v4, Lcom/guochao/faceshow/views/r;

    invoke-direct {v4, v3}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v3, v2, 0x1

    const/16 v5, 0x21

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private x(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/gift/data/AnimFlag;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getLuckyGiftResults()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 5
    new-instance v3, Lcom/guochao/faceshow/gift/data/AnimFlag;

    invoke-direct {v3}, Lcom/guochao/faceshow/gift/data/AnimFlag;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getGiftTypeId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getGiftId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->f:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getGiftNum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->h:I

    .line 10
    iget-object v4, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->giftImg:Ljava/lang/String;

    iput-object v4, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->g:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserAvatar()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->i:Ljava/lang/String;

    .line 12
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;->getAccountId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->u:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getIsGiftAllSend()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getGiftSendList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    goto :goto_1

    .line 15
    :cond_0
    iput v5, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    .line 16
    :goto_1
    iget v4, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    iput v4, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->m:I

    .line 17
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getIsGiftAllSend()I

    move-result v4

    iput v4, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->w:I

    .line 18
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;->getAwardMultiple()I

    move-result v4

    iput v4, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->x:I

    .line 19
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getCurrentRewardType()I

    move-result v4

    iput v4, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->y:I

    .line 20
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isSelfSend()Z

    move-result v4

    iput-boolean v4, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->z:Z

    .line 21
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v5

    invoke-interface {v5}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 22
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v4

    invoke-interface {v4}, Lb8/d;->c()Lb8/a;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v4

    iput-object v4, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->q:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    goto :goto_2

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v4

    iput-object v4, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->q:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 24
    :goto_2
    iget v4, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->x:I

    if-lez v4, :cond_2

    .line 25
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lsa/b;->i:Z

    return v0
.end method

.method public s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsa/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lsa/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lsa/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lsa/b;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lsa/b;->g:Landroid/view/ViewGroup;

    invoke-static {v0}, Lsa/c;->r(Landroid/view/ViewGroup;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lsa/b;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object v0, p0, Lsa/b;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public v(Z)V
    .locals 0

    iput-boolean p1, p0, Lsa/b;->i:Z

    return-void
.end method

.method public w(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p7

    .line 1
    invoke-static/range {p6 .. p6}, Lta/a;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v5, v0, Lsa/b;->g:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    invoke-direct/range {p0 .. p1}, Lsa/b;->o(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v5, v0, Lsa/b;->f:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    const/4 v6, 0x0

    .line 5
    iget-object v7, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getIsGiftAllSend()I

    move-result v8

    .line 7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":mPendingToRemove.size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 8
    iget-object v9, v0, Lsa/b;->f:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 9
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 10
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 11
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":entry.getKey():"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/guochao/faceshow/gift/data/AnimFlag;

    iget-wide v14, v11, Lcom/guochao/faceshow/gift/data/AnimFlag;->p:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x13ec

    cmp-long v11, v12, v14

    if-lez v11, :cond_2

    .line 13
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 14
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":key:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 17
    iget-object v8, v0, Lsa/b;->f:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 18
    iget-object v6, v0, Lsa/b;->f:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/gift/data/AnimFlag;

    :cond_4
    if-nez v6, :cond_7

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "newAnimFlag\u65b0\u521b\u5efa"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 20
    new-instance v6, Lcom/guochao/faceshow/gift/data/AnimFlag;

    invoke-direct {v6}, Lcom/guochao/faceshow/gift/data/AnimFlag;-><init>()V

    .line 21
    iput-object v3, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->d:Ljava/lang/String;

    move-object/from16 v3, p6

    .line 22
    iput-object v3, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->e:Ljava/lang/String;

    .line 23
    iput-object v2, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->f:Ljava/lang/String;

    .line 24
    iput v4, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->h:I

    move-object/from16 v2, p3

    .line 25
    iput-object v2, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->g:Ljava/lang/String;

    move-object/from16 v2, p4

    .line 26
    iput-object v2, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->i:Ljava/lang/String;

    .line 27
    iput-object v7, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->u:Ljava/lang/String;

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getIsGiftAllSend()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getGiftSendList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    goto :goto_1

    .line 30
    :cond_5
    iput v3, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    .line 31
    :goto_1
    iget v2, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    iput v2, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->m:I

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getIsGiftAllSend()I

    move-result v2

    iput v2, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->w:I

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getCurrentReward()I

    move-result v2

    iput v2, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->x:I

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getCurrentRewardType()I

    move-result v2

    iput v2, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->y:I

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isSelfSend()Z

    move-result v2

    iput-boolean v2, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->z:Z

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v3

    invoke-interface {v3}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 37
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->c()Lb8/a;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v2

    iput-object v2, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->q:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    goto :goto_2

    .line 38
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v2

    iput-object v2, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->q:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    goto :goto_2

    .line 39
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "newAnimFlag\u4ece\u56de\u6536\u7ad9\u4e2d\u83b7\u53d6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u4e0a\u6b21\u56de\u6536\u7684anim\u7684\u7d2f\u8ba1\u6b21\u6570\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 41
    :goto_2
    iput-object v1, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->A:Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/guochao/faceshow/gift/data/AnimFlag;->p:J

    .line 43
    invoke-virtual {v6}, Lcom/guochao/faceshow/gift/data/AnimFlag;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isSelfSend()Z

    move-result v1

    if-nez v1, :cond_9

    .line 45
    invoke-direct {v0, v6}, Lsa/b;->e(Lcom/guochao/faceshow/gift/data/AnimFlag;)V

    goto :goto_3

    .line 46
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":checkMessageNormal\u6b21\u6570"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 47
    iget-object v1, v0, Lsa/b;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-direct {v0, v6}, Lsa/b;->f(Lcom/guochao/faceshow/gift/data/AnimFlag;)V

    :cond_9
    :goto_3
    return-void
.end method
