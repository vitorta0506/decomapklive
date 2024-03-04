.class public Lk8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk8/a$b;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static e:Lk8/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk8/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk8/a;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lk8/a;->d:Ljava/util/List;

    return-void
.end method

.method public static c()Lk8/a;
    .locals 2

    .line 1
    sget-object v0, Lk8/a;->e:Lk8/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lk8/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lk8/a;->e:Lk8/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lk8/a;

    invoke-direct {v1}, Lk8/a;-><init>()V

    sput-object v1, Lk8/a;->e:Lk8/a;

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
    sget-object v0, Lk8/a;->e:Lk8/a;

    return-object v0
.end method

.method private g()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_0

    new-array v3, v1, [I

    .line 3
    fill-array-data v3, :array_1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 4
    new-instance v5, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;

    invoke-direct {v5}, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;-><init>()V

    .line 5
    iget-object v6, p0, Lk8/a;->a:Landroid/content/Context;

    aget v7, v3, v4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->setDisplayTitle(Ljava/lang/String;)V

    .line 6
    aget v6, v3, v4

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->setTitleId(I)V

    .line 7
    aget v6, v2, v4

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->setIconId(I)V

    if-eqz v4, :cond_2

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    goto :goto_1

    :cond_0
    const/16 v6, 0x9

    .line 8
    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->setType(I)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x7

    .line 9
    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->setType(I)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x5

    .line 10
    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->setType(I)V

    .line 11
    :goto_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0, v0}, Lk8/a;->h(Ljava/util/List;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0f03ad
        0x7f0f03b0
        0x7f0f03b4
    .end array-data

    :array_1
    .array-data 4
        0x7f120741
        0x7f12074a
        0x7f120740
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk8/a;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lk8/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk8/a$b;

    .line 3
    iget-object v2, p0, Lk8/a;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Lk8/a$b;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(I)Lcom/guochao/faceshow/aaspring/beans/NotificationItem;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lk8/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lk8/a;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->getType()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lk8/a;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;-><init>()V

    return-object p1
.end method

.method public d(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lk8/a;->a:Landroid/content/Context;

    .line 2
    invoke-direct {p0}, Lk8/a;->g()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/message/push/info/findALLReadNumByUserId"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->K(Z)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lk8/a$a;

    invoke-direct {v1, p0}, Lk8/a$a;-><init>(Lk8/a;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->b(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public f(Lcom/guochao/faceshow/aaspring/beans/MessageUnReadNum;)V
    .locals 2

    const/16 v0, 0x9

    .line 1
    invoke-virtual {p0, v0}, Lk8/a;->b(I)Lcom/guochao/faceshow/aaspring/beans/NotificationItem;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MessageUnReadNum;->getAtNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->setUnreadNumber(I)V

    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0}, Lk8/a;->b(I)Lcom/guochao/faceshow/aaspring/beans/NotificationItem;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MessageUnReadNum;->getCommentNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->setUnreadNumber(I)V

    const/4 v0, 0x5

    .line 3
    invoke-virtual {p0, v0}, Lk8/a;->b(I)Lcom/guochao/faceshow/aaspring/beans/NotificationItem;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MessageUnReadNum;->getLikeNum()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->setUnreadNumber(I)V

    .line 4
    invoke-virtual {p0}, Lk8/a;->a()V

    return-void
.end method

.method public h(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/NotificationItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk8/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lk8/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 4
    iget-object v1, p0, Lk8/a;->a:Landroid/content/Context;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lk8/a;->a:Landroid/content/Context;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->getTitleId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->calTextWidth(Landroid/text/TextPaint;Ljava/lang/String;)I

    move-result v3

    .line 8
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x5

    .line 9
    iput v2, p0, Lk8/a;->b:I

    return-void
.end method

.method public registerNotificationListener(Lk8/a$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk8/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lk8/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lk8/a;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Lk8/a$b;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public removeNotificationListener(Lk8/a$b;)V
    .locals 1

    iget-object v0, p0, Lk8/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
