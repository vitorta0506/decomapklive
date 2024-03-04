.class public abstract Lcom/google/protobuf/GeneratedMessageV3$b;
.super Lcom/google/protobuf/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessageV3$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "TBuilderType;>;>",
        "Lcom/google/protobuf/a$a<",
        "TBuilderType;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/protobuf/GeneratedMessageV3$c;

.field private b:Lcom/google/protobuf/GeneratedMessageV3$b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageV3$b<",
            "TBuilderType;>.a;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/google/protobuf/h3;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/a$a;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/protobuf/h3;->d()Lcom/google/protobuf/h3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$b;->d:Lcom/google/protobuf/h3;

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$b;->a:Lcom/google/protobuf/GeneratedMessageV3$c;

    return-void
.end method

.method static synthetic B(Lcom/google/protobuf/GeneratedMessageV3$b;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->E()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private E()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->K()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3$e;->a(Lcom/google/protobuf/GeneratedMessageV3$e;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->m()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 6
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m()Lcom/google/protobuf/Descriptors$i;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$i;->l()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    .line 8
    invoke-virtual {p0, v4}, Lcom/google/protobuf/GeneratedMessageV3$b;->J(Lcom/google/protobuf/Descriptors$i;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/protobuf/GeneratedMessageV3$b;->G(Lcom/google/protobuf/Descriptors$i;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v3

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {p0, v3}, Lcom/google/protobuf/GeneratedMessageV3$b;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 13
    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/protobuf/GeneratedMessageV3$b;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/protobuf/GeneratedMessageV3$b;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private U(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/h3;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$b;->d:Lcom/google/protobuf/h3;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method


# virtual methods
.method public C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->K()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e;->c(Lcom/google/protobuf/GeneratedMessageV3$e;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$e$a;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/GeneratedMessageV3$e$a;->e(Lcom/google/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V

    return-object p0
.end method

.method public D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/r1;->getDefaultInstanceForType()Lcom/google/protobuf/l1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/l1;->newBuilderForType()Lcom/google/protobuf/l1$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageV3$b;

    .line 2
    invoke-interface {p0}, Lcom/google/protobuf/l1$a;->I()Lcom/google/protobuf/l1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object v0
.end method

.method public F0(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/l1$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->K()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e;->c(Lcom/google/protobuf/GeneratedMessageV3$e;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$e$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/GeneratedMessageV3$e$a;->j()Lcom/google/protobuf/l1$a;

    move-result-object p1

    return-object p1
.end method

.method public G(Lcom/google/protobuf/Descriptors$i;)Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->K()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e;->b(Lcom/google/protobuf/GeneratedMessageV3$e;Lcom/google/protobuf/Descriptors$i;)Lcom/google/protobuf/GeneratedMessageV3$e$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/GeneratedMessageV3$e$c;->a(Lcom/google/protobuf/GeneratedMessageV3$b;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    return-object p1
.end method

.method protected H()Lcom/google/protobuf/GeneratedMessageV3$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$b;->b:Lcom/google/protobuf/GeneratedMessageV3$b$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/GeneratedMessageV3$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/GeneratedMessageV3$b$a;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/protobuf/GeneratedMessageV3$a;)V

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$b;->b:Lcom/google/protobuf/GeneratedMessageV3$b$a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$b;->b:Lcom/google/protobuf/GeneratedMessageV3$b$a;

    return-object v0
.end method

.method public J(Lcom/google/protobuf/Descriptors$i;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->K()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e;->b(Lcom/google/protobuf/GeneratedMessageV3$e;Lcom/google/protobuf/Descriptors$i;)Lcom/google/protobuf/GeneratedMessageV3$e$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/GeneratedMessageV3$e$c;->c(Lcom/google/protobuf/GeneratedMessageV3$b;)Z

    move-result p1

    return p1
.end method

.method protected abstract K()Lcom/google/protobuf/GeneratedMessageV3$e;
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    return-object p1
.end method

.method protected M(I)Lcom/google/protobuf/g1;
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No map fields found in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected N(I)Lcom/google/protobuf/g1;
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No map fields found in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected O()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$b;->c:Z

    return v0
.end method

.method public P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/h3;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$b;->d:Lcom/google/protobuf/h3;

    .line 2
    invoke-static {v0}, Lcom/google/protobuf/h3;->i(Lcom/google/protobuf/h3;)Lcom/google/protobuf/h3$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3$b;->p(Lcom/google/protobuf/h3;)Lcom/google/protobuf/h3$b;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    return-object p1
.end method

.method protected Q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$b;->a:Lcom/google/protobuf/GeneratedMessageV3$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->q()V

    :cond_0
    return-void
.end method

.method protected final R()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$b;->a:Lcom/google/protobuf/GeneratedMessageV3$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/a$b;->a()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$b;->c:Z

    :cond_0
    return-void
.end method

.method public S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->K()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e;->c(Lcom/google/protobuf/GeneratedMessageV3$e;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$e$a;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/GeneratedMessageV3$e$a;->d(Lcom/google/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V

    return-object p0
.end method

.method public T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/h3;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->U(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    return-object p1
.end method

.method protected V(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/h3;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->U(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    return-object p1
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->E()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->K()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3$e;->a(Lcom/google/protobuf/GeneratedMessageV3$e;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->K()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e;->c(Lcom/google/protobuf/GeneratedMessageV3$e;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$e$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3$e$a;->b(Lcom/google/protobuf/GeneratedMessageV3$b;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$b;->d:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->K()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e;->c(Lcom/google/protobuf/GeneratedMessageV3$e;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$e$a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/GeneratedMessageV3$e$a;->h(Lcom/google/protobuf/GeneratedMessageV3$b;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    return-object v0
.end method

.method o()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$b;->a:Lcom/google/protobuf/GeneratedMessageV3$c;

    return-void
.end method

.method protected q()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$b;->c:Z

    return-void
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    return-object p1
.end method
