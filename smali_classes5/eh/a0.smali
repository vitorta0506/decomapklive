.class final Leh/a0;
.super Leh/l2$a;
.source "SourceFile"


# instance fields
.field private final a:Leh/l2$a$b;

.field private final b:Leh/l2$a$a;

.field private final c:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Leh/l1$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Leh/l2$a$b;Leh/l2$a$a;Lcom/google/common/collect/ImmutableMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/l2$a$b;",
            "Leh/l2$a$a;",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Leh/l1$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Leh/l2$a;-><init>()V

    const-string v0, "Null routeMatch"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Leh/a0;->a:Leh/l2$a$b;

    .line 4
    iput-object p2, p0, Leh/a0;->b:Leh/l2$a$a;

    const-string p1, "Null filterConfigOverrides"

    .line 5
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Leh/a0;->c:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method


# virtual methods
.method b()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Leh/l1$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Leh/a0;->c:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method e()Leh/l2$a$a;
    .locals 1

    iget-object v0, p0, Leh/a0;->b:Leh/l2$a$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Leh/l2$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, Leh/l2$a;

    .line 3
    iget-object v1, p0, Leh/a0;->a:Leh/l2$a$b;

    invoke-virtual {p1}, Leh/l2$a;->f()Leh/l2$a$b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Leh/a0;->b:Leh/l2$a$a;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Leh/l2$a;->e()Leh/l2$a$a;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Leh/l2$a;->e()Leh/l2$a$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Leh/a0;->c:Lcom/google/common/collect/ImmutableMap;

    .line 5
    invoke-virtual {p1}, Leh/l2$a;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method f()Leh/l2$a$b;
    .locals 1

    iget-object v0, p0, Leh/a0;->a:Leh/l2$a$b;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Leh/a0;->a:Leh/l2$a$b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Leh/a0;->b:Leh/l2$a$a;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v1, p0, Leh/a0;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Route{routeMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/a0;->a:Leh/l2$a$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", routeAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/a0;->b:Leh/l2$a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filterConfigOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/a0;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
