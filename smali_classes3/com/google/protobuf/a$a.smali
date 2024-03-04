.class public abstract Lcom/google/protobuf/a$a;
.super Lcom/google/protobuf/b$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/l1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/google/protobuf/a$a<",
        "TBuilderType;>;>",
        "Lcom/google/protobuf/b$a;",
        "Lcom/google/protobuf/l1$a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/b$a;-><init>()V

    return-void
.end method

.method protected static A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;
    .locals 1

    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-static {p0}, Lcom/google/protobuf/MessageReflection;->c(Lcom/google/protobuf/r1;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/protobuf/UninitializedMessageException;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic A0(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a$a;->s(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic E0([B)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a$a;->x([B)Lcom/google/protobuf/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

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

    invoke-virtual {p0}, Lcom/google/protobuf/a$a;->n()Lcom/google/protobuf/a$a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic e(Lcom/google/protobuf/b;)Lcom/google/protobuf/b$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a$a;->p(Lcom/google/protobuf/b;)Lcom/google/protobuf/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a$a;->u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Lcom/google/protobuf/p;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a$a;->t(Lcom/google/protobuf/p;)Lcom/google/protobuf/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a$a;->u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k([B)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a$a;->x([B)Lcom/google/protobuf/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l([BII)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/a$a;->y([BII)Lcom/google/protobuf/a$a;

    move-result-object p1

    return-object p1
.end method

.method public n()Lcom/google/protobuf/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clone() should be implemented in subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method o()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected p(Lcom/google/protobuf/b;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/b;",
            ")TBuilderType;"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/l1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    move-result-object p1

    return-object p1
.end method

.method q()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/protobuf/b$a;->f(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/b$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/a$a;

    return-object p1
.end method

.method public s(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/f0;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/b$a;->g(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/a$a;

    return-object p1
.end method

.method public t(Lcom/google/protobuf/p;)Lcom/google/protobuf/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/p;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/d0;->i()Lcom/google/protobuf/d0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a$a;->u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/TextFormat;->o()Lcom/google/protobuf/TextFormat$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$b;->j(Lcom/google/protobuf/r1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/p;",
            "Lcom/google/protobuf/f0;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/google/protobuf/r1;->getUnknownFields()Lcom/google/protobuf/h3;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/h3;->i(Lcom/google/protobuf/h3;)Lcom/google/protobuf/h3$b;

    move-result-object v0

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance v5, Lcom/google/protobuf/MessageReflection$b;

    invoke-direct {v5, p0}, Lcom/google/protobuf/MessageReflection$b;-><init>(Lcom/google/protobuf/l1$a;)V

    .line 5
    invoke-interface {p0}, Lcom/google/protobuf/l1$a;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v4

    move-object v1, p1

    move-object v2, v0

    move-object v3, p2

    .line 6
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/MessageReflection;->g(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/MessageReflection$MergeTarget;I)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/protobuf/l1$a;->f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;

    :cond_3
    return-object p0
.end method

.method public v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/l1;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/r1;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a$a;->w(Lcom/google/protobuf/l1;Ljava/util/Map;)Lcom/google/protobuf/a$a;

    move-result-object p1

    return-object p1
.end method

.method w(Lcom/google/protobuf/l1;Ljava/util/Map;)Lcom/google/protobuf/a$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/l1;",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/r1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/protobuf/l1$a;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 4
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-interface {p0, v1, v2}, Lcom/google/protobuf/l1$a;->L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_3

    .line 8
    invoke-interface {p0, v1}, Lcom/google/protobuf/r1;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/l1;

    .line 9
    invoke-interface {v2}, Lcom/google/protobuf/r1;->getDefaultInstanceForType()Lcom/google/protobuf/l1;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/google/protobuf/l1$a;->c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {v2}, Lcom/google/protobuf/l1;->newBuilderForType()Lcom/google/protobuf/l1$a;

    move-result-object v3

    .line 12
    invoke-interface {v3, v2}, Lcom/google/protobuf/l1$a;->P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;

    move-result-object v2

    .line 13
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l1;

    invoke-interface {v2, v0}, Lcom/google/protobuf/l1$a;->P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Lcom/google/protobuf/l1$a;->build()Lcom/google/protobuf/l1;

    move-result-object v0

    .line 15
    invoke-interface {p0, v1, v0}, Lcom/google/protobuf/l1$a;->c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;

    goto :goto_0

    .line 16
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/google/protobuf/l1$a;->c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;

    goto :goto_0

    .line 17
    :cond_4
    invoke-interface {p1}, Lcom/google/protobuf/r1;->getUnknownFields()Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a$a;->z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;

    return-object p0

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic w0(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/l1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a$a;->r(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/a$a;

    move-result-object p1

    return-object p1
.end method

.method public x([B)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/protobuf/b$a;->k([B)Lcom/google/protobuf/b$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/a$a;

    return-object p1
.end method

.method public y([BII)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/b$a;->l([BII)Lcom/google/protobuf/b$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/a$a;

    return-object p1
.end method

.method public z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/h3;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/r1;->getUnknownFields()Lcom/google/protobuf/h3;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/h3;->i(Lcom/google/protobuf/h3;)Lcom/google/protobuf/h3$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3$b;->p(Lcom/google/protobuf/h3;)Lcom/google/protobuf/h3$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Lcom/google/protobuf/l1$a;->f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;

    return-object p0
.end method
