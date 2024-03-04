.class Lcom/google/common/base/d$h;
.super Lcom/google/common/base/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field final a:Lcom/google/common/base/d;


# direct methods
.method constructor <init>(Lcom/google/common/base/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/d;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/d;

    iput-object p1, p0, Lcom/google/common/base/d$h;->a:Lcom/google/common/base/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/d;->c(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public j(C)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/d$h;->a:Lcom/google/common/base/d;

    invoke-virtual {v0, p1}, Lcom/google/common/base/d;->j(C)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public k(Ljava/lang/CharSequence;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/d$h;->a:Lcom/google/common/base/d;

    invoke-virtual {v0, p1}, Lcom/google/common/base/d;->l(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public l(Ljava/lang/CharSequence;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/d$h;->a:Lcom/google/common/base/d;

    invoke-virtual {v0, p1}, Lcom/google/common/base/d;->k(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public m()Lcom/google/common/base/d;
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/d$h;->a:Lcom/google/common/base/d;

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/base/d$h;->m()Lcom/google/common/base/d;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/common/base/d$h;->a:Lcom/google/common/base/d;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".negate()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
