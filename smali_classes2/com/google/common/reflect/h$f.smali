.class final Lcom/google/common/reflect/h$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v0, p3

    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    const-string v0, "type parameter"

    .line 4
    invoke-static {p3, v0}, Lcom/google/common/reflect/h;->b([Ljava/lang/reflect/Type;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/google/common/reflect/h$f;->a:Ljava/lang/reflect/Type;

    .line 6
    iput-object p2, p0, Lcom/google/common/reflect/h$f;->c:Ljava/lang/Class;

    .line 7
    sget-object p1, Lcom/google/common/reflect/h$d;->e:Lcom/google/common/reflect/h$d;

    invoke-virtual {p1, p3}, Lcom/google/common/reflect/h$d;->e([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/reflect/h$f;->b:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/reflect/h$f;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/reflect/h$f;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/common/reflect/h$f;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/google/common/reflect/h$f;->b:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lcom/google/common/reflect/h;->c(Ljava/util/Collection;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/google/common/reflect/h$f;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/google/common/reflect/h$f;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/h$f;->a:Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/common/reflect/h$f;->b:Lcom/google/common/collect/ImmutableList;

    .line 2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/reflect/h$f;->c:Ljava/lang/Class;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/common/reflect/h$f;->a:Ljava/lang/reflect/Type;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/common/reflect/h$d;->e:Lcom/google/common/reflect/h$d;

    invoke-virtual {v1}, Lcom/google/common/reflect/h$d;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/common/reflect/h$f;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Lcom/google/common/reflect/h$d;->d(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/common/reflect/h$f;->c:Ljava/lang/Class;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Lcom/google/common/reflect/h;->d()Lcom/google/common/base/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/reflect/h$f;->b:Lcom/google/common/collect/ImmutableList;

    sget-object v3, Lcom/google/common/reflect/h$d;->e:Lcom/google/common/reflect/h$d;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/common/reflect/i;

    invoke-direct {v4, v3}, Lcom/google/common/reflect/i;-><init>(Lcom/google/common/reflect/h$d;)V

    invoke-static {v2, v4}, Lcom/google/common/collect/n5;->p(Ljava/lang/Iterable;Lcom/google/common/base/h;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/i;->d(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method