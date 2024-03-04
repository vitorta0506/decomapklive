.class Leh/r2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/r2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final b:Ljava/lang/String;

.field final c:Leh/c2$a;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Leh/c2$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Leh/r2$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    xor-int/2addr p1, v1

    const-string v0, "There must be exactly one non-null value in traditionalCluster and pluginConfig"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 4
    iput-object p2, p0, Leh/r2$b;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Leh/r2$b;->c:Leh/c2$a;

    return-void
.end method

.method static synthetic a(Leh/r2$b;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Leh/r2$b;->d()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static b(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)Leh/r2$b;
    .locals 2

    new-instance v0, Leh/r2$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Leh/r2$b;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Leh/c2$a;)V

    return-object v0
.end method

.method static c(Ljava/util/concurrent/atomic/AtomicInteger;Leh/c2$a;)Leh/r2$b;
    .locals 2

    new-instance v0, Leh/r2$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Leh/r2$b;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Leh/c2$a;)V

    return-object v0
.end method

.method private d()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Leh/r2$b;->b:Ljava/lang/String;

    const-string v1, "cluster"

    const-string v2, "cds_experimental"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableMap$b;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$b;-><init>()V

    iget-object v3, p0, Leh/r2$b;->c:Leh/c2$a;

    .line 4
    invoke-virtual {v3}, Leh/c2$a;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    const-string v4, "routeLookupConfig"

    invoke-virtual {v0, v4, v3}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const-string v3, "childPolicy"

    .line 6
    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    const-string v2, "childPolicyConfigTargetFieldName"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const-string v1, "rls_experimental"

    .line 9
    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
