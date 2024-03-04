.class Lcom/google/protobuf/GeneratedMessageV3$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageV3$e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageV3$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

.field private final b:Lcom/google/protobuf/l1;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/GeneratedMessageV3;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/GeneratedMessageV3$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$e$b;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Class;

    const-string p4, "getDefaultInstance"

    .line 3
    invoke-static {p3, p4, p2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3;

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$b;->n(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/g1;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/g1;->j()Lcom/google/protobuf/l1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$e$b;->b:Lcom/google/protobuf/l1;

    return-void
.end method

.method private l(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$b;->b:Lcom/google/protobuf/l1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$b;->b:Lcom/google/protobuf/l1;

    invoke-interface {v0}, Lcom/google/protobuf/l1;->toBuilder()Lcom/google/protobuf/l1$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/protobuf/l1$a;->P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/l1$a;->build()Lcom/google/protobuf/l1;

    move-result-object p1

    return-object p1
.end method

.method private m(Lcom/google/protobuf/GeneratedMessageV3$b;)Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$b;",
            ")",
            "Lcom/google/protobuf/g1<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$b;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/GeneratedMessageV3$b;->M(I)Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1
.end method

.method private n(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3;",
            ")",
            "Lcom/google/protobuf/g1<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$b;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetMapField(I)Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1
.end method

.method private o(Lcom/google/protobuf/GeneratedMessageV3$b;)Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$b;",
            ")",
            "Lcom/google/protobuf/g1<",
            "**>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$b;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/protobuf/GeneratedMessageV3$b;->N(I)Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$b;->c(Lcom/google/protobuf/GeneratedMessageV3;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/GeneratedMessageV3$e$b;->g(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/protobuf/GeneratedMessageV3$b;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$b;->q(Lcom/google/protobuf/GeneratedMessageV3$b;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/GeneratedMessageV3$e$b;->p(Lcom/google/protobuf/GeneratedMessageV3$b;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/google/protobuf/GeneratedMessageV3;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$b;->n(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/g1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/g1;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public d(Lcom/google/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$b;->k(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    .line 2
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3$e$b;->e(Lcom/google/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Lcom/google/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$b;->o(Lcom/google/protobuf/GeneratedMessageV3$b;)Lcom/google/protobuf/g1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/g1;->k()Ljava/util/List;

    move-result-object p1

    check-cast p2, Lcom/google/protobuf/l1;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageV3$e$b;->l(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f(Lcom/google/protobuf/GeneratedMessageV3;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() is not supported for repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$b;->n(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/g1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/g1;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/google/protobuf/GeneratedMessageV3$b;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() is not supported for repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$b;->a(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j()Lcom/google/protobuf/l1$a;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$b;->b:Lcom/google/protobuf/l1;

    invoke-interface {v0}, Lcom/google/protobuf/l1;->newBuilderForType()Lcom/google/protobuf/l1$a;

    move-result-object v0

    return-object v0
.end method

.method public k(Lcom/google/protobuf/GeneratedMessageV3$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$b;->o(Lcom/google/protobuf/GeneratedMessageV3$b;)Lcom/google/protobuf/g1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/g1;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public p(Lcom/google/protobuf/GeneratedMessageV3$b;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$b;->m(Lcom/google/protobuf/GeneratedMessageV3$b;)Lcom/google/protobuf/g1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/g1;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public q(Lcom/google/protobuf/GeneratedMessageV3$b;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$b;->m(Lcom/google/protobuf/GeneratedMessageV3$b;)Lcom/google/protobuf/g1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/g1;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method
