.class public final Lke/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final a:Lde/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "1.13.2"

    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lke/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lde/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lke/c;->a:Lde/b;

    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lke/c;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s:creative:%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lke/c;->a:Lde/b;

    invoke-static {p1}, Lke/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x1

    invoke-static {p1, v1, v2}, Lde/c;->b(Ljava/lang/String;J)Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;

    move-result-object p1

    invoke-interface {v0, p1}, Lde/b;->push(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lke/c;->a:Lde/b;

    invoke-static {p1}, Lke/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lde/c;->c(Ljava/lang/String;J)Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;

    move-result-object p1

    invoke-interface {v0, p1}, Lde/b;->push(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
