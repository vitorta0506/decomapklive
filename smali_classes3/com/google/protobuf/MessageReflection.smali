.class Lcom/google/protobuf/MessageReflection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/MessageReflection$c;,
        Lcom/google/protobuf/MessageReflection$b;,
        Lcom/google/protobuf/MessageReflection$MergeTarget;
    }
.end annotation


# direct methods
.method static a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/protobuf/p;Lcom/google/protobuf/d0$c;Lcom/google/protobuf/f0;Lcom/google/protobuf/MessageReflection$MergeTarget;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/protobuf/d0$c;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 2
    iget-object p1, p1, Lcom/google/protobuf/d0$c;->b:Lcom/google/protobuf/l1;

    invoke-interface {p3, p0, p2, v0, p1}, Lcom/google/protobuf/MessageReflection$MergeTarget;->f(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/l1;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-interface {p3, v0, p0}, Lcom/google/protobuf/MessageReflection$MergeTarget;->c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    return-void
.end method

.method static c(Lcom/google/protobuf/r1;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/r1;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    .line 2
    invoke-static {p0, v1, v0}, Lcom/google/protobuf/MessageReflection;->d(Lcom/google/protobuf/r1;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method private static d(Lcom/google/protobuf/r1;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/r1;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/r1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 2
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->F()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Lcom/google/protobuf/r1;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p0}, Lcom/google/protobuf/r1;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_2

    .line 8
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 9
    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 10
    check-cast v4, Lcom/google/protobuf/r1;

    add-int/lit8 v5, v3, 0x1

    .line 11
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/MessageReflection;->j(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v4, v3, p2}, Lcom/google/protobuf/MessageReflection;->d(Lcom/google/protobuf/r1;Ljava/lang/String;Ljava/util/List;)V

    move v3, v5

    goto :goto_2

    .line 13
    :cond_3
    invoke-interface {p0, v2}, Lcom/google/protobuf/r1;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    check-cast v1, Lcom/google/protobuf/r1;

    const/4 v3, -0x1

    .line 15
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/MessageReflection;->j(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v1, v2, p2}, Lcom/google/protobuf/MessageReflection;->d(Lcom/google/protobuf/r1;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method static e(Lcom/google/protobuf/l1;Ljava/util/Map;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/l1;",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/r1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->q()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->z()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v4, v5, :cond_0

    .line 7
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 8
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v3

    check-cast v2, Lcom/google/protobuf/l1;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->F(ILcom/google/protobuf/o1;)I

    move-result v2

    goto :goto_1

    .line 9
    :cond_0
    invoke-static {v3, v2}, Lcom/google/protobuf/o0;->n(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p0}, Lcom/google/protobuf/r1;->getUnknownFields()Lcom/google/protobuf/h3;

    move-result-object p0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/h3;->g()I

    move-result p0

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result p0

    :goto_2
    add-int/2addr v1, p0

    return v1
.end method

.method static f(Lcom/google/protobuf/r1;)Z
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/r1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 2
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->F()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {p0, v1}, Lcom/google/protobuf/r1;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 4
    :cond_1
    invoke-interface {p0}, Lcom/google/protobuf/r1;->getAllFields()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 6
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/l1;

    .line 9
    invoke-interface {v1}, Lcom/google/protobuf/p1;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 10
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l1;

    invoke-interface {v0}, Lcom/google/protobuf/p1;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method static g(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/MessageReflection$MergeTarget;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$b;->q()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Lcom/google/protobuf/WireFormat;->a:I

    if-ne p5, v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/protobuf/MessageReflection;->i(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/MessageReflection$MergeTarget;)V

    return v1

    .line 3
    :cond_0
    invoke-static {p5}, Lcom/google/protobuf/WireFormat;->b(I)I

    move-result v0

    .line 4
    invoke-static {p5}, Lcom/google/protobuf/WireFormat;->a(I)I

    move-result v2

    .line 5
    invoke-virtual {p3, v2}, Lcom/google/protobuf/Descriptors$b;->s(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 6
    instance-of v3, p2, Lcom/google/protobuf/d0;

    if-eqz v3, :cond_5

    .line 7
    move-object v3, p2

    check-cast v3, Lcom/google/protobuf/d0;

    .line 8
    invoke-interface {p4, v3, p3, v2}, Lcom/google/protobuf/MessageReflection$MergeTarget;->b(Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$b;I)Lcom/google/protobuf/d0$c;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v3, p3, Lcom/google/protobuf/d0$c;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 10
    iget-object v4, p3, Lcom/google/protobuf/d0$c;->b:Lcom/google/protobuf/l1;

    if-nez v4, :cond_3

    .line 11
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object p3

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq p3, v5, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Message-typed extension lacked default instance: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    move-object p3, v4

    move-object v4, v3

    goto :goto_2

    .line 14
    :cond_4
    invoke-interface {p4}, Lcom/google/protobuf/MessageReflection$MergeTarget;->g()Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;

    move-result-object v3

    sget-object v5, Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;->MESSAGE:Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;

    if-ne v3, v5, :cond_5

    .line 15
    invoke-virtual {p3, v2}, Lcom/google/protobuf/Descriptors$b;->j(I)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object p3

    move-object v6, v4

    move-object v4, p3

    move-object p3, v6

    goto :goto_2

    :cond_5
    :goto_1
    move-object p3, v4

    :goto_2
    const/4 v3, 0x0

    if-nez v4, :cond_7

    :cond_6
    const/4 v0, 0x0

    const/4 v3, 0x1

    goto :goto_3

    .line 16
    :cond_7
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->e0()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/protobuf/o0;->x(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v5

    if-ne v0, v5, :cond_8

    const/4 v0, 0x0

    goto :goto_3

    .line 17
    :cond_8
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->C()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 18
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->e0()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/google/protobuf/o0;->x(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v5

    if-ne v0, v5, :cond_6

    const/4 v0, 0x1

    :goto_3
    if-eqz v3, :cond_a

    if-eqz p1, :cond_9

    .line 19
    invoke-virtual {p1, p5, p0}, Lcom/google/protobuf/h3$b;->k(ILcom/google/protobuf/p;)Z

    move-result p0

    return p0

    .line 20
    :cond_9
    invoke-virtual {p0, p5}, Lcom/google/protobuf/p;->Q(I)Z

    move-result p0

    return p0

    :cond_a
    if-eqz v0, :cond_10

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/p;->D()I

    move-result p2

    .line 22
    invoke-virtual {p0, p2}, Lcom/google/protobuf/p;->q(I)I

    move-result p2

    .line 23
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->e0()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p3

    sget-object p5, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p3, p5, :cond_e

    .line 24
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/p;->e()I

    move-result p3

    if-lez p3, :cond_f

    .line 25
    invoke-virtual {p0}, Lcom/google/protobuf/p;->u()I

    move-result p3

    .line 26
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->x()Z

    move-result p5

    if-eqz p5, :cond_c

    .line 27
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->q()Lcom/google/protobuf/Descriptors$d;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/google/protobuf/Descriptors$d;->j(I)Lcom/google/protobuf/Descriptors$e;

    move-result-object p3

    .line 28
    invoke-interface {p4, v4, p3}, Lcom/google/protobuf/MessageReflection$MergeTarget;->L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    goto :goto_4

    .line 29
    :cond_c
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->q()Lcom/google/protobuf/Descriptors$d;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/google/protobuf/Descriptors$d;->i(I)Lcom/google/protobuf/Descriptors$e;

    move-result-object p5

    if-nez p5, :cond_d

    if-eqz p1, :cond_b

    .line 30
    invoke-virtual {p1, v2, p3}, Lcom/google/protobuf/h3$b;->r(II)Lcom/google/protobuf/h3$b;

    goto :goto_4

    .line 31
    :cond_d
    invoke-interface {p4, v4, p5}, Lcom/google/protobuf/MessageReflection$MergeTarget;->L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    goto :goto_4

    .line 32
    :cond_e
    :goto_5
    invoke-virtual {p0}, Lcom/google/protobuf/p;->e()I

    move-result p1

    if-lez p1, :cond_f

    .line 33
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->e0()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p1

    invoke-interface {p4, v4}, Lcom/google/protobuf/MessageReflection$MergeTarget;->d(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/WireFormat$b;

    move-result-object p3

    .line 34
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/WireFormat;->d(Lcom/google/protobuf/p;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$b;)Ljava/lang/Object;

    move-result-object p1

    .line 35
    invoke-interface {p4, v4, p1}, Lcom/google/protobuf/MessageReflection$MergeTarget;->L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    goto :goto_5

    .line 36
    :cond_f
    invoke-virtual {p0, p2}, Lcom/google/protobuf/p;->p(I)V

    goto :goto_7

    .line 37
    :cond_10
    sget-object p5, Lcom/google/protobuf/MessageReflection$a;->a:[I

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p5, p5, v0

    if-eq p5, v1, :cond_16

    const/4 v0, 0x2

    if-eq p5, v0, :cond_15

    const/4 p2, 0x3

    if-eq p5, p2, :cond_11

    .line 38
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->e0()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p1

    invoke-interface {p4, v4}, Lcom/google/protobuf/MessageReflection$MergeTarget;->d(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/WireFormat$b;

    move-result-object p2

    .line 39
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/WireFormat;->d(Lcom/google/protobuf/p;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$b;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_6

    .line 40
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/p;->u()I

    move-result p0

    .line 41
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->x()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 42
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->q()Lcom/google/protobuf/Descriptors$d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$d;->j(I)Lcom/google/protobuf/Descriptors$e;

    move-result-object p0

    goto :goto_6

    .line 43
    :cond_12
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->q()Lcom/google/protobuf/Descriptors$d;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/protobuf/Descriptors$d;->i(I)Lcom/google/protobuf/Descriptors$e;

    move-result-object p2

    if-nez p2, :cond_14

    if-eqz p1, :cond_13

    .line 44
    invoke-virtual {p1, v2, p0}, Lcom/google/protobuf/h3$b;->r(II)Lcom/google/protobuf/h3$b;

    :cond_13
    return v1

    :cond_14
    move-object p0, p2

    goto :goto_6

    .line 45
    :cond_15
    invoke-interface {p4, p0, p2, v4, p3}, Lcom/google/protobuf/MessageReflection$MergeTarget;->f(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/l1;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_6

    .line 46
    :cond_16
    invoke-interface {p4, p0, p2, v4, p3}, Lcom/google/protobuf/MessageReflection$MergeTarget;->a(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/l1;)Ljava/lang/Object;

    move-result-object p0

    .line 47
    :goto_6
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 48
    invoke-interface {p4, v4, p0}, Lcom/google/protobuf/MessageReflection$MergeTarget;->L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    goto :goto_7

    .line 49
    :cond_17
    invoke-interface {p4, v4, p0}, Lcom/google/protobuf/MessageReflection$MergeTarget;->c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    :goto_7
    return v1
.end method

.method private static h(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/d0$c;Lcom/google/protobuf/f0;Lcom/google/protobuf/MessageReflection$MergeTarget;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/protobuf/d0$c;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 2
    invoke-interface {p3, v0}, Lcom/google/protobuf/MessageReflection$MergeTarget;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Lcom/google/protobuf/f0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/google/protobuf/w0;

    iget-object p1, p1, Lcom/google/protobuf/d0$c;->b:Lcom/google/protobuf/l1;

    invoke-direct {v1, p1, p2, p0}, Lcom/google/protobuf/w0;-><init>(Lcom/google/protobuf/o1;Lcom/google/protobuf/f0;Lcom/google/protobuf/ByteString;)V

    .line 5
    invoke-interface {p3, v0, v1}, Lcom/google/protobuf/MessageReflection$MergeTarget;->c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/google/protobuf/d0$c;->b:Lcom/google/protobuf/l1;

    .line 7
    invoke-interface {p3, p0, p2, v0, p1}, Lcom/google/protobuf/MessageReflection$MergeTarget;->e(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/l1;)Ljava/lang/Object;

    move-result-object p0

    .line 8
    invoke-interface {p3, v0, p0}, Lcom/google/protobuf/MessageReflection$MergeTarget;->c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    :goto_1
    return-void
.end method

.method private static i(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/MessageReflection$MergeTarget;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/p;->L()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    sget v5, Lcom/google/protobuf/WireFormat;->c:I

    if-ne v4, v5, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/p;->M()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    instance-of v4, p2, Lcom/google/protobuf/d0;

    if-eqz v4, :cond_0

    .line 5
    move-object v3, p2

    check-cast v3, Lcom/google/protobuf/d0;

    .line 6
    invoke-interface {p4, v3, p3, v1}, Lcom/google/protobuf/MessageReflection$MergeTarget;->b(Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$b;I)Lcom/google/protobuf/d0$c;

    move-result-object v3

    goto :goto_0

    .line 7
    :cond_2
    sget v5, Lcom/google/protobuf/WireFormat;->d:I

    if-ne v4, v5, :cond_4

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 8
    invoke-static {}, Lcom/google/protobuf/f0;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-static {p0, v3, p2, p4}, Lcom/google/protobuf/MessageReflection;->b(Lcom/google/protobuf/p;Lcom/google/protobuf/d0$c;Lcom/google/protobuf/f0;Lcom/google/protobuf/MessageReflection$MergeTarget;)V

    move-object v2, v0

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v2

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0, v4}, Lcom/google/protobuf/p;->Q(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 12
    :goto_1
    sget p3, Lcom/google/protobuf/WireFormat;->b:I

    invoke-virtual {p0, p3}, Lcom/google/protobuf/p;->a(I)V

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    if-eqz v3, :cond_5

    .line 13
    invoke-static {v2, v3, p2, p4}, Lcom/google/protobuf/MessageReflection;->h(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/d0$c;Lcom/google/protobuf/f0;Lcom/google/protobuf/MessageReflection$MergeTarget;)V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    .line 14
    invoke-static {}, Lcom/google/protobuf/h3$c;->t()Lcom/google/protobuf/h3$c$a;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/h3$c$a;->e(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/h3$c$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/h3$c$a;->g()Lcom/google/protobuf/h3$c;

    move-result-object p0

    .line 15
    invoke-virtual {p1, v1, p0}, Lcom/google/protobuf/h3$b;->j(ILcom/google/protobuf/h3$c;)Lcom/google/protobuf/h3$b;

    :cond_6
    :goto_2
    return-void
.end method

.method private static j(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->z()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x28

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p0, -0x1

    if-eq p2, p0, :cond_1

    const/16 p0, 0x5b

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p0, 0x2e

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static k(Lcom/google/protobuf/l1;Ljava/util/Map;Lcom/google/protobuf/CodedOutputStream;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/l1;",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/protobuf/CodedOutputStream;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/r1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->q()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz p3, :cond_2

    .line 2
    new-instance p3, Ljava/util/TreeMap;

    invoke-direct {p3, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 3
    invoke-interface {p0}, Lcom/google/protobuf/r1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->m()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 4
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->F()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-interface {p0, v1}, Lcom/google/protobuf/r1;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object p1, p3

    .line 6
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 8
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->z()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v2, v3, :cond_3

    .line 11
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_3

    .line 12
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v1

    check-cast p3, Lcom/google/protobuf/l1;

    invoke-virtual {p2, v1, p3}, Lcom/google/protobuf/CodedOutputStream;->O0(ILcom/google/protobuf/o1;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {v1, p3, p2}, Lcom/google/protobuf/o0;->P(Lcom/google/protobuf/o0$c;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-interface {p0}, Lcom/google/protobuf/r1;->getUnknownFields()Lcom/google/protobuf/h3;

    move-result-object p0

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p0, p2}, Lcom/google/protobuf/h3;->m(Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {p0, p2}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    :goto_2
    return-void
.end method
