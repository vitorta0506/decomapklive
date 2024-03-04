.class public Lcom/google/protobuf/e1$b;
.super Lcom/google/protobuf/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/a$a<",
        "Lcom/google/protobuf/e1$b<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/e1$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e1$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/google/protobuf/e1$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/e1$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3
    iget-object v2, p1, Lcom/google/protobuf/f1$b;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/protobuf/f1$b;->d:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/e1$b;-><init>(Lcom/google/protobuf/e1$c;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/e1$c;Lcom/google/protobuf/e1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/e1$b;-><init>(Lcom/google/protobuf/e1$c;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/e1$c;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/e1$c<",
            "TK;TV;>;TK;TV;ZZ)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/a$a;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/protobuf/e1$b;->a:Lcom/google/protobuf/e1$c;

    .line 6
    iput-object p2, p0, Lcom/google/protobuf/e1$b;->b:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/google/protobuf/e1$b;->c:Ljava/lang/Object;

    .line 8
    iput-boolean p4, p0, Lcom/google/protobuf/e1$b;->d:Z

    .line 9
    iput-boolean p5, p0, Lcom/google/protobuf/e1$b;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/e1$c;Ljava/lang/Object;Ljava/lang/Object;ZZLcom/google/protobuf/e1$a;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/google/protobuf/e1$b;-><init>(Lcom/google/protobuf/e1$c;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private E(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->o()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/e1$b;->a:Lcom/google/protobuf/e1$c;

    iget-object v1, v1, Lcom/google/protobuf/e1$c;->e:Lcom/google/protobuf/Descriptors$b;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong FieldDescriptor \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" used in message \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/protobuf/e1$b;->a:Lcom/google/protobuf/e1$c;

    iget-object p1, p1, Lcom/google/protobuf/e1$c;->e:Lcom/google/protobuf/Descriptors$b;

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public B(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/e1$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/e1$b<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "There is no repeated field in a map entry message."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C()Lcom/google/protobuf/e1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e1<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/e1$b;->D()Lcom/google/protobuf/e1;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/e1;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public D()Lcom/google/protobuf/e1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e1<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/e1;

    iget-object v1, p0, Lcom/google/protobuf/e1$b;->a:Lcom/google/protobuf/e1$c;

    iget-object v2, p0, Lcom/google/protobuf/e1$b;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/protobuf/e1$b;->c:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/e1;-><init>(Lcom/google/protobuf/e1$c;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/protobuf/e1$a;)V

    return-object v0
.end method

.method public F0(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/l1$a;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/e1$b;->E(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/protobuf/e1$b;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/l1;

    invoke-interface {p1}, Lcom/google/protobuf/l1;->newBuilderForType()Lcom/google/protobuf/l1$a;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not a message value field."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public G()Lcom/google/protobuf/e1$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e1$b<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v6, Lcom/google/protobuf/e1$b;

    iget-object v1, p0, Lcom/google/protobuf/e1$b;->a:Lcom/google/protobuf/e1$c;

    iget-object v2, p0, Lcom/google/protobuf/e1$b;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/protobuf/e1$b;->c:Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/google/protobuf/e1$b;->d:Z

    iget-boolean v5, p0, Lcom/google/protobuf/e1$b;->e:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/e1$b;-><init>(Lcom/google/protobuf/e1$c;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-object v6
.end method

.method public H()Lcom/google/protobuf/e1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e1<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/e1;

    iget-object v1, p0, Lcom/google/protobuf/e1$b;->a:Lcom/google/protobuf/e1$c;

    iget-object v2, v1, Lcom/google/protobuf/f1$b;->b:Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/protobuf/f1$b;->d:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/e1;-><init>(Lcom/google/protobuf/e1$c;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/protobuf/e1$a;)V

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/e1$b;->D()Lcom/google/protobuf/e1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/e1$b;->D()Lcom/google/protobuf/e1;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/e1$b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public K()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/e1$b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/e1$b;->B(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object p1

    return-object p1
.end method

.method public M(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/e1$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/e1$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/e1$b;->E(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/protobuf/e1$b;->N(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_1

    .line 5
    check-cast p2, Lcom/google/protobuf/Descriptors$e;

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$e;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p1

    sget-object v0, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    .line 7
    iget-object p1, p0, Lcom/google/protobuf/e1$b;->a:Lcom/google/protobuf/e1$c;

    iget-object p1, p1, Lcom/google/protobuf/f1$b;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/google/protobuf/e1$b;->a:Lcom/google/protobuf/e1$c;

    iget-object p1, p1, Lcom/google/protobuf/f1$b;->d:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/l1;

    .line 9
    invoke-interface {p1}, Lcom/google/protobuf/l1;->toBuilder()Lcom/google/protobuf/l1$a;

    move-result-object p1

    check-cast p2, Lcom/google/protobuf/l1;

    invoke-interface {p1, p2}, Lcom/google/protobuf/l1$a;->P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/l1$a;->build()Lcom/google/protobuf/l1;

    move-result-object p2

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/protobuf/e1$b;->P(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    :goto_1
    return-object p0
.end method

.method public N(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/protobuf/e1$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/e1$b;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/protobuf/e1$b;->d:Z

    return-object p0
.end method

.method public O(Lcom/google/protobuf/h3;)Lcom/google/protobuf/e1$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/h3;",
            ")",
            "Lcom/google/protobuf/e1$b<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public P(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/google/protobuf/e1$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/e1$b;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/protobuf/e1$b;->e:Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/e1$b;->C()Lcom/google/protobuf/e1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/e1$b;->C()Lcom/google/protobuf/e1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/e1$b;->M(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

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

    invoke-virtual {p0}, Lcom/google/protobuf/e1$b;->G()Lcom/google/protobuf/e1$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/e1$b;->O(Lcom/google/protobuf/h3;)Lcom/google/protobuf/e1$b;

    move-result-object p1

    return-object p1
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 4
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
    iget-object v1, p0, Lcom/google/protobuf/e1$b;->a:Lcom/google/protobuf/e1$c;

    iget-object v1, v1, Lcom/google/protobuf/e1$c;->e:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/protobuf/e1$b;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Lcom/google/protobuf/e1$b;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/e1$b;->H()Lcom/google/protobuf/e1;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/e1$b;->a:Lcom/google/protobuf/e1$c;

    iget-object v0, v0, Lcom/google/protobuf/e1$c;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/e1$b;->E(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/e1$b;->J()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/e1$b;->K()Ljava/lang/Object;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->q()Lcom/google/protobuf/Descriptors$d;

    move-result-object p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/Descriptors$d;->j(I)Lcom/google/protobuf/Descriptors$e;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/h3;->d()Lcom/google/protobuf/h3;

    move-result-object v0

    return-object v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/e1$b;->E(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/google/protobuf/e1$b;->d:Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/google/protobuf/e1$b;->e:Z

    :goto_0
    return p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/e1$b;->G()Lcom/google/protobuf/e1$b;

    move-result-object v0

    return-object v0
.end method
