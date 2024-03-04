.class final Leh/d$b;
.super Leh/j0$b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/j0$d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Leh/a1$c;

.field private c:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Leh/j0$c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Leh/j0$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leh/j0$b$a;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/util/Map;)Leh/j0$b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/j0$a;",
            ">;)",
            "Leh/j0$b$a;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Leh/d$b;->f:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method

.method b()Leh/j0$b;
    .locals 9

    .line 1
    iget-object v1, p0, Leh/d$b;->a:Lcom/google/common/collect/ImmutableList;

    if-eqz v1, :cond_1

    iget-object v2, p0, Leh/d$b;->b:Leh/a1$c;

    if-eqz v2, :cond_1

    iget-object v5, p0, Leh/d$b;->e:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v6, p0, Leh/d$b;->f:Lcom/google/common/collect/ImmutableMap;

    if-nez v6, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v8, Leh/d;

    iget-object v3, p0, Leh/d$b;->c:Lcom/google/common/collect/ImmutableMap;

    iget-object v4, p0, Leh/d$b;->d:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Leh/d;-><init>(Lcom/google/common/collect/ImmutableList;Leh/a1$c;Lcom/google/common/collect/ImmutableMap;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;Leh/d$a;)V

    return-object v8

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p0, Leh/d$b;->a:Lcom/google/common/collect/ImmutableList;

    if-nez v1, :cond_2

    const-string v1, " servers"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_2
    iget-object v1, p0, Leh/d$b;->b:Leh/a1$c;

    if-nez v1, :cond_3

    const-string v1, " node"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_3
    iget-object v1, p0, Leh/d$b;->e:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, " clientDefaultListenerResourceNameTemplate"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_4
    iget-object v1, p0, Leh/d$b;->f:Lcom/google/common/collect/ImmutableMap;

    if-nez v1, :cond_5

    const-string v1, " authorities"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method c(Ljava/util/Map;)Leh/j0$b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/j0$c;",
            ">;)",
            "Leh/j0$b$a;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Leh/d$b;->c:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method

.method d(Ljava/lang/String;)Leh/j0$b$a;
    .locals 1

    const-string v0, "Null clientDefaultListenerResourceNameTemplate"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Leh/d$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method e(Leh/a1$c;)Leh/j0$b$a;
    .locals 1

    const-string v0, "Null node"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Leh/d$b;->b:Leh/a1$c;

    return-object p0
.end method

.method f(Ljava/lang/String;)Leh/j0$b$a;
    .locals 0

    iput-object p1, p0, Leh/d$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method g(Ljava/util/List;)Leh/j0$b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leh/j0$d;",
            ">;)",
            "Leh/j0$b$a;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Leh/d$b;->a:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method
