.class final Leh/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Leh/v0;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/u0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leh/v0;->a:Ljava/util/Map;

    return-void
.end method

.method static declared-synchronized b()Leh/v0;
    .locals 5

    const-class v0, Leh/v0;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Leh/v0;->b:Leh/v0;

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Leh/v0;->c()Leh/v0;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Leh/u0;

    const/4 v3, 0x0

    sget-object v4, Leh/c2;->a:Leh/c2;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Leh/v0;->d([Leh/u0;)Leh/v0;

    move-result-object v1

    sput-object v1, Leh/v0;->b:Leh/v0;

    .line 3
    :cond_0
    sget-object v1, Leh/v0;->b:Leh/v0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static c()Leh/v0;
    .locals 1

    new-instance v0, Leh/v0;

    invoke-direct {v0}, Leh/v0;-><init>()V

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Leh/u0;
    .locals 1

    iget-object v0, p0, Leh/v0;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/u0;

    return-object p1
.end method

.method varargs d([Leh/u0;)Leh/v0;
    .locals 9

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 2
    invoke-interface {v3}, Leh/u0;->a()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 3
    iget-object v8, p0, Leh/v0;->a:Ljava/util/Map;

    invoke-interface {v8, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
