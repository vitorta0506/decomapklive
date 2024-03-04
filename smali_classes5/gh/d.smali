.class public final Lgh/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lgh/d;


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lgh/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lgh/d;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static declared-synchronized a()Lgh/d;
    .locals 3

    const-class v0, Lgh/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lgh/d;->b:Lgh/d;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lgh/d;

    invoke-direct {v1}, Lgh/d;-><init>()V

    sput-object v1, Lgh/d;->b:Lgh/d;

    .line 3
    new-instance v2, Lgh/g;

    invoke-direct {v2}, Lgh/g;-><init>()V

    invoke-virtual {v1, v2}, Lgh/d;->b(Lgh/c;)V

    .line 4
    :cond_0
    sget-object v1, Lgh/d;->b:Lgh/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized b(Lgh/c;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "certificateProviderProvider"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lgh/d;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lgh/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
