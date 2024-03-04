.class final Leh/d;
.super Leh/j0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/d$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/j0$d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Leh/a1$c;

.field private final c:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Leh/j0$c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/common/collect/ImmutableMap;
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
.method private constructor <init>(Lcom/google/common/collect/ImmutableList;Leh/a1$c;Lcom/google/common/collect/ImmutableMap;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/j0$d;",
            ">;",
            "Leh/a1$c;",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Leh/j0$c;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Leh/j0$a;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Leh/j0$b;-><init>()V

    .line 3
    iput-object p1, p0, Leh/d;->a:Lcom/google/common/collect/ImmutableList;

    .line 4
    iput-object p2, p0, Leh/d;->b:Leh/a1$c;

    .line 5
    iput-object p3, p0, Leh/d;->c:Lcom/google/common/collect/ImmutableMap;

    .line 6
    iput-object p4, p0, Leh/d;->d:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Leh/d;->e:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Leh/d;->f:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ImmutableList;Leh/a1$c;Lcom/google/common/collect/ImmutableMap;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;Leh/d$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Leh/d;-><init>(Lcom/google/common/collect/ImmutableList;Leh/a1$c;Lcom/google/common/collect/ImmutableMap;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method


# virtual methods
.method a()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Leh/j0$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Leh/d;->f:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public c()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Leh/j0$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Leh/d;->c:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leh/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Leh/a1$c;
    .locals 1

    iget-object v0, p0, Leh/d;->b:Leh/a1$c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Leh/j0$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2
    check-cast p1, Leh/j0$b;

    .line 3
    iget-object v1, p0, Leh/d;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Leh/j0$b;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Leh/d;->b:Leh/a1$c;

    .line 4
    invoke-virtual {p1}, Leh/j0$b;->e()Leh/a1$c;

    move-result-object v3

    invoke-virtual {v1, v3}, Leh/a1$c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Leh/d;->c:Lcom/google/common/collect/ImmutableMap;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Leh/j0$b;->c()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Leh/j0$b;->c()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Leh/d;->d:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p1}, Leh/j0$b;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Leh/j0$b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    iget-object v1, p0, Leh/d;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Leh/j0$b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Leh/d;->f:Lcom/google/common/collect/ImmutableMap;

    .line 8
    invoke-virtual {p1}, Leh/j0$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_4
    return v2
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leh/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method g()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/j0$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Leh/d;->a:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Leh/d;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Leh/d;->b:Leh/a1$c;

    invoke-virtual {v2}, Leh/a1$c;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Leh/d;->c:Lcom/google/common/collect/ImmutableMap;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v2, p0, Leh/d;->d:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 5
    iget-object v2, p0, Leh/d;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 6
    iget-object v1, p0, Leh/d;->f:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BootstrapInfo{servers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/d;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/d;->b:Leh/a1$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", certProviders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/d;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serverListenerResourceNameTemplate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clientDefaultListenerResourceNameTemplate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authorities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/d;->f:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
