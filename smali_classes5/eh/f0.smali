.class final Leh/f0;
.super Leh/l2$a$b;
.source "SourceFile"


# instance fields
.field private final a:Leh/l2$a$b$a;

.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lfh/i;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lfh/h;


# direct methods
.method constructor <init>(Leh/l2$a$b$a;Lcom/google/common/collect/ImmutableList;Lfh/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/l2$a$b$a;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lfh/i;",
            ">;",
            "Lfh/h;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Leh/l2$a$b;-><init>()V

    const-string v0, "Null pathMatcher"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Leh/f0;->a:Leh/l2$a$b$a;

    const-string p1, "Null headerMatchers"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Leh/f0;->b:Lcom/google/common/collect/ImmutableList;

    .line 6
    iput-object p3, p0, Leh/f0;->c:Lfh/h;

    return-void
.end method


# virtual methods
.method b()Lfh/h;
    .locals 1

    iget-object v0, p0, Leh/f0;->c:Lfh/h;

    return-object v0
.end method

.method c()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lfh/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Leh/f0;->b:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method d()Leh/l2$a$b$a;
    .locals 1

    iget-object v0, p0, Leh/f0;->a:Leh/l2$a$b$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Leh/l2$a$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, Leh/l2$a$b;

    .line 3
    iget-object v1, p0, Leh/f0;->a:Leh/l2$a$b$a;

    invoke-virtual {p1}, Leh/l2$a$b;->d()Leh/l2$a$b$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Leh/f0;->b:Lcom/google/common/collect/ImmutableList;

    .line 4
    invoke-virtual {p1}, Leh/l2$a$b;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Leh/f0;->c:Lfh/h;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Leh/l2$a$b;->b()Lfh/h;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Leh/l2$a$b;->b()Lfh/h;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Leh/f0;->a:Leh/l2$a$b$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Leh/f0;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v1, p0, Leh/f0;->c:Lfh/h;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RouteMatch{pathMatcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/f0;->a:Leh/l2$a$b$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headerMatchers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/f0;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fractionMatcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/f0;->c:Lfh/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
