.class public final Lih/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lih/c$a;,
        Lih/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V::",
        "Lih/b;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lih/c$a<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final b:Lih/c$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lih/c$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lih/c$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lih/c$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lih/c;->a:Ljava/util/Map;

    const-string v0, "valueFactory"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lih/c;->b:Lih/c$b;

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/Object;Lih/b;)Lih/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lih/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lih/c$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "No cached instance found for %s"

    .line 2
    invoke-static {v3, v4, p1}, Lcom/google/common/base/o;->m(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v3, v0, Lih/c$a;->a:Lih/b;

    if-ne p2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string p2, "Releasing the wrong instance"

    invoke-static {v1, p2}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lih/c$a;->a()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_2

    .line 5
    :try_start_1
    iget-object p2, v0, Lih/c$a;->a:Lih/b;

    invoke-interface {p2}, Lih/b;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    iget-object p2, p0, Lih/c;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p2

    iget-object v0, p0, Lih/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_2
    const/4 p1, 0x0

    .line 7
    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lih/b;)Lih/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1, p2}, Lih/c;->b(Ljava/lang/Object;Lih/b;)Lih/b;

    move-result-object p1

    return-object p1
.end method
