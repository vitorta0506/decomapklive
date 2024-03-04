.class public Lcom/google/protobuf/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/f1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/f1$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static b(Lcom/google/protobuf/f1$b;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/f1$b<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/o0;->l(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/google/protobuf/f1$b;->c:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0, p2}, Lcom/google/protobuf/o0;->l(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method static d(Lcom/google/protobuf/p;Lcom/google/protobuf/f1$b;Lcom/google/protobuf/f0;)Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/p;",
            "Lcom/google/protobuf/f1$b<",
            "TK;TV;>;",
            "Lcom/google/protobuf/f0;",
            ")",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/protobuf/f1$b;->b:Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Lcom/google/protobuf/f1$b;->d:Ljava/lang/Object;

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/p;->L()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    .line 4
    iget-object v4, p1, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/WireFormat;->c(II)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 5
    iget-object v2, p1, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static {p0, p2, v2, v0}, Lcom/google/protobuf/f1;->e(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    .line 6
    iget-object v4, p1, Lcom/google/protobuf/f1$b;->c:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/WireFormat;->c(II)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 7
    iget-object v2, p1, Lcom/google/protobuf/f1$b;->c:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static {p0, p2, v2, v1}, Lcom/google/protobuf/f1;->e(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/protobuf/p;->Q(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    :goto_1
    new-instance p0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p0, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method static e(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/p;",
            "Lcom/google/protobuf/f0;",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/f1$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    .line 2
    invoke-static {p0, p2, v1}, Lcom/google/protobuf/o0;->K(Lcom/google/protobuf/p;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Groups are not allowed in maps."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/p;->u()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    check-cast p3, Lcom/google/protobuf/o1;

    invoke-interface {p3}, Lcom/google/protobuf/o1;->toBuilder()Lcom/google/protobuf/o1$a;

    move-result-object p2

    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/p;->C(Lcom/google/protobuf/o1$a;Lcom/google/protobuf/f0;)V

    .line 7
    invoke-interface {p2}, Lcom/google/protobuf/o1$a;->I()Lcom/google/protobuf/o1;

    move-result-object p0

    return-object p0
.end method

.method static f(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/f1$b;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/CodedOutputStream;",
            "Lcom/google/protobuf/f1$b<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/google/protobuf/o0;->N(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 2
    iget-object p1, p1, Lcom/google/protobuf/f1$b;->c:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/o0;->N(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/protobuf/f1;->a:Lcom/google/protobuf/f1$b;

    .line 2
    invoke-static {v0, p2, p3}, Lcom/google/protobuf/f1;->b(Lcom/google/protobuf/f1$b;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    .line 3
    invoke-static {p2}, Lcom/google/protobuf/CodedOutputStream;->E(I)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method c()Lcom/google/protobuf/f1$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/f1$b<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/f1;->a:Lcom/google/protobuf/f1$b;

    return-object v0
.end method
