.class public Lcom/google/protobuf/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/google/protobuf/a;",
        "BType:",
        "Lcom/google/protobuf/a$a;",
        "IType::",
        "Lcom/google/protobuf/r1;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/a$b;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/protobuf/a$b;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/q2<",
            "TMType;TBType;TIType;>;>;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TMType;>;Z",
            "Lcom/google/protobuf/a$b;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    .line 3
    iput-boolean p2, p0, Lcom/google/protobuf/l2;->c:Z

    .line 4
    iput-object p3, p0, Lcom/google/protobuf/l2;->a:Lcom/google/protobuf/a$b;

    .line 5
    iput-boolean p4, p0, Lcom/google/protobuf/l2;->e:Z

    return-void
.end method

.method private g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/l2;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/l2;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/l2;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/l2;->c:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/protobuf/l2;->c:Z

    :cond_0
    return-void
.end method

.method private i(IZ)Lcom/google/protobuf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TMType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/l2;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/a;

    return-object p1

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 4
    iget-object p2, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/a;

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/q2;->d()Lcom/google/protobuf/a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private j()V
    .locals 0

    return-void
.end method

.method private l()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/l2;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/l2;->a:Lcom/google/protobuf/a$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/a$b;->a()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/protobuf/l2;->e:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/l2;->l()V

    return-void
.end method

.method public b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TMType;>;)",
            "Lcom/google/protobuf/l2<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/a;

    .line 2
    invoke-static {v1}, Lcom/google/protobuf/u0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 3
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 4
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/google/protobuf/l2;->h()V

    if-ltz v0, :cond_3

    .line 8
    iget-object v1, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 9
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 10
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a;

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/protobuf/l2;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/l2;

    goto :goto_1

    .line 12
    :cond_4
    invoke-direct {p0}, Lcom/google/protobuf/l2;->l()V

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/l2;->j()V

    return-object p0
.end method

.method public c(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)TBType;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/l2;->h()V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/l2;->g()V

    .line 3
    new-instance v0, Lcom/google/protobuf/q2;

    iget-boolean v1, p0, Lcom/google/protobuf/l2;->e:Z

    invoke-direct {v0, p1, p0, v1}, Lcom/google/protobuf/q2;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    .line 4
    iget-object p1, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/google/protobuf/l2;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/l2;->l()V

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/l2;->j()V

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/q2;->c()Lcom/google/protobuf/a$a;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/google/protobuf/a;)Lcom/google/protobuf/l2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/google/protobuf/l2<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/u0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/l2;->h()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/google/protobuf/l2;->d:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/l2;->l()V

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/l2;->j()V

    return-object p0
.end method

.method public e()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/protobuf/l2;->e:Z

    .line 2
    iget-boolean v1, p0, Lcom/google/protobuf/l2;->c:Z

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/l2;->d:Ljava/util/List;

    if-nez v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    return-object v0

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 5
    iget-object v3, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/l1;

    .line 6
    iget-object v4, p0, Lcom/google/protobuf/l2;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/q2;

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v4

    if-eq v4, v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    return-object v0

    .line 9
    :cond_3
    invoke-direct {p0}, Lcom/google/protobuf/l2;->h()V

    const/4 v1, 0x0

    .line 10
    :goto_2
    iget-object v3, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 11
    iget-object v3, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/google/protobuf/l2;->i(IZ)Lcom/google/protobuf/a;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    .line 13
    iput-boolean v2, p0, Lcom/google/protobuf/l2;->c:Z

    return-object v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/l2;->a:Lcom/google/protobuf/a$b;

    return-void
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/l2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
