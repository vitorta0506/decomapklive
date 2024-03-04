.class public Lu7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lu7/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lu7/b;->a(Landroid/content/Context;)Lu7/b;

    move-result-object v0

    iput-object v0, p0, Lu7/a;->a:Lu7/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->u:Ljava/lang/String;

    new-instance v1, Lu7/a$b;

    invoke-direct {v1, p0}, Lu7/a$b;-><init>(Lu7/a;)V

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
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    .line 7
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSignture()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSigntureData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->u:Ljava/lang/String;

    invoke-static {v2, p1, v1}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->u:Ljava/lang/String;

    new-instance v1, Lu7/a$a;

    invoke-direct {v1, p0}, Lu7/a$a;-><init>(Lu7/a;)V

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
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSignture()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p4, :cond_1

    .line 8
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSigntureData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 9
    :cond_2
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;-><init>()V

    .line 10
    invoke-virtual {v1, p3}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->setSignture(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p4}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->setSigntureData(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, p2}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->setUserId(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, p5, p6}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->setTimeStamp(J)V

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getScene()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->setScene(I)V

    .line 15
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->u:Ljava/lang/String;

    invoke-static {v2, p1, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
