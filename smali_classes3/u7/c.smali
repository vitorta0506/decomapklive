.class public Lu7/c;
.super Lu7/a;
.source "SourceFile"


# static fields
.field private static b:Lu7/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu7/a;-><init>()V

    return-void
.end method

.method public static c()Lu7/c;
    .locals 2

    .line 1
    sget-object v0, Lu7/c;->b:Lu7/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lu7/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lu7/c;->b:Lu7/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lu7/c;

    invoke-direct {v1}, Lu7/c;-><init>()V

    sput-object v1, Lu7/c;->b:Lu7/c;

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
    sget-object v0, Lu7/c;->b:Lu7/c;

    return-object v0
.end method


# virtual methods
.method public d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->u:Ljava/lang/String;

    new-instance v1, Lu7/c$b;

    invoke-direct {v1, p0}, Lu7/c$b;-><init>(Lu7/c;)V

    .line 2
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "googlePlay"

    .line 3
    invoke-static {v2, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->u:Ljava/lang/String;

    new-instance v1, Lu7/c$a;

    invoke-direct {v1, p0}, Lu7/c$a;-><init>(Lu7/c;)V

    .line 2
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "googlePlay"

    .line 3
    invoke-static {v2, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    .line 8
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSigntureData()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSigntureData()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->u:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3
.end method
