.class final Ltg/a$d;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ltg/a;


# direct methods
.method private constructor <init>(Ltg/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltg/a$d;->a:Ltg/a;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltg/a;Ltg/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ltg/a$d;-><init>(Ltg/a;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ltg/a$d;->a:Ltg/a;

    invoke-virtual {v0}, Ltg/a;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ltg/a$d;->a:Ltg/a;

    invoke-virtual {v0, p1}, Ltg/a;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    new-instance v0, Ltg/a$d$a;

    invoke-direct {v0, p0}, Ltg/a$d$a;-><init>(Ltg/a$d;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ltg/a$d;->a:Ltg/a;

    invoke-virtual {v0, p1}, Ltg/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ltg/a$d;->a:Ltg/a;

    invoke-virtual {v0}, Ltg/a;->entries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltg/b$a;

    .line 3
    invoke-interface {v2}, Ltg/b$a;->key()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ltg/a$d;->a:Ltg/a;

    invoke-virtual {v0}, Ltg/a;->size()I

    move-result v0

    return v0
.end method
