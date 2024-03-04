.class public Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->c:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->h(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;Lcom/android/billingclient/api/e;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->g(Lcom/android/billingclient/api/e;Ljava/util/List;)V

    return-void
.end method

.method public static e()Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->d:Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->d:Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->d:Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;

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
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->d:Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;

    return-object v0
.end method

.method private synthetic g(Lcom/android/billingclient/api/e;Ljava/util/List;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r0(Ljava/util/List;)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->f()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->a:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->j()V

    :cond_3
    return-void
.end method

.method private synthetic h(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/g;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->V(Lcom/android/billingclient/api/m;)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->I0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x2bf20

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/h;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->u0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->c:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
