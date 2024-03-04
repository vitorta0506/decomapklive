.class public final Lcom/tencent/liteav/audio/route/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/tencent/liteav/audio/route/b$a;


# instance fields
.field final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/tencent/liteav/audio/route/b$a;",
            "Lcom/tencent/liteav/audio/route/b;",
            ">;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/liteav/audio/route/b$a;->c:Lcom/tencent/liteav/audio/route/b$a;

    sput-object v0, Lcom/tencent/liteav/audio/route/m;->a:Lcom/tencent/liteav/audio/route/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/route/m;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/route/m;->c:Z

    return-void
.end method

.method private static a(Lcom/tencent/liteav/audio/route/b$a;)Z
    .locals 1

    .line 8
    sget-object v0, Lcom/tencent/liteav/audio/route/b$a;->d:Lcom/tencent/liteav/audio/route/b$a;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/tencent/liteav/audio/route/b$a;->e:Lcom/tencent/liteav/audio/route/b$a;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private b(Lcom/tencent/liteav/audio/route/b$a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/m;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/route/b;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AudioRouteSupervisor"

    const-string v1, "error in promoteRoutePriority, route(%s) is not existed"

    .line 2
    invoke-static {p1, v1, v0}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget v2, v0, Lcom/tencent/liteav/audio/route/b;->c:I

    .line 4
    iget-object v3, p0, Lcom/tencent/liteav/audio/route/m;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/tencent/liteav/audio/route/m;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .line 6
    iput v3, v0, Lcom/tencent/liteav/audio/route/b;->c:I

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/m;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/audio/route/b;

    .line 9
    iget-object v3, v1, Lcom/tencent/liteav/audio/route/b;->a:Lcom/tencent/liteav/audio/route/b$a;

    if-eq p1, v3, :cond_2

    .line 10
    iget v3, v1, Lcom/tencent/liteav/audio/route/b;->c:I

    if-lt v3, v2, :cond_2

    add-int/lit8 v3, v3, -0x1

    .line 11
    iput v3, v1, Lcom/tencent/liteav/audio/route/b;->c:I

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/liteav/audio/route/b$a;Z)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/route/m;->c:Z

    const-string v1, "AudioRouteSupervisor"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "error in updateRouteAvailability(), it\'s not been initialized yet"

    .line 2
    invoke-static {v1, p2, p1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/m;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/route/b;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string/jumbo p1, "updateRouteAvailability failed, name: %s"

    .line 4
    invoke-static {v1, p1, p2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 5
    :cond_1
    iput-boolean p2, v0, Lcom/tencent/liteav/audio/route/b;->b:Z

    if-eqz p2, :cond_2

    .line 6
    invoke-static {p1}, Lcom/tencent/liteav/audio/route/m;->a(Lcom/tencent/liteav/audio/route/b$a;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/route/m;->b(Lcom/tencent/liteav/audio/route/b$a;)V

    :cond_2
    return v3
.end method
