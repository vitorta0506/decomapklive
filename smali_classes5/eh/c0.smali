.class final Leh/c0;
.super Leh/l2$a$a$a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

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
.method constructor <init>(Ljava/lang/String;ILcom/google/common/collect/ImmutableMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Leh/l1$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Leh/l2$a$a$a;-><init>()V

    const-string v0, "Null name"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Leh/c0;->a:Ljava/lang/String;

    .line 4
    iput p2, p0, Leh/c0;->b:I

    const-string p1, "Null filterConfigOverrides"

    .line 5
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Leh/c0;->c:Lcom/google/common/collect/ImmutableMap;

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

    iget-object v0, p0, Leh/c0;->c:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leh/c0;->a:Ljava/lang/String;

    return-object v0
.end method

.method d()I
    .locals 1

    iget v0, p0, Leh/c0;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Leh/l2$a$a$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Leh/l2$a$a$a;

    .line 3
    iget-object v1, p0, Leh/c0;->a:Ljava/lang/String;

    invoke-virtual {p1}, Leh/l2$a$a$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Leh/c0;->b:I

    .line 4
    invoke-virtual {p1}, Leh/l2$a$a$a;->d()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Leh/c0;->c:Lcom/google/common/collect/ImmutableMap;

    .line 5
    invoke-virtual {p1}, Leh/l2$a$a$a;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Leh/c0;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget v2, p0, Leh/c0;->b:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v1, p0, Leh/c0;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClusterWeight{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/c0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Leh/c0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", filterConfigOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/c0;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
