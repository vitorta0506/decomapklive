.class public abstract Lcom/google/protobuf/GeneratedMessage;
.super Lcom/google/protobuf/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessage$k;,
        Lcom/google/protobuf/GeneratedMessage$l;,
        Lcom/google/protobuf/GeneratedMessage$h;,
        Lcom/google/protobuf/GeneratedMessage$j;,
        Lcom/google/protobuf/GeneratedMessage$i;,
        Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;,
        Lcom/google/protobuf/GeneratedMessage$f;,
        Lcom/google/protobuf/GeneratedMessage$g;
    }
.end annotation


# static fields
.field protected static alwaysUseFieldBuilders:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected unknownFields:Lcom/google/protobuf/h3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/a;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/h3;->d()Lcom/google/protobuf/h3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage;->unknownFields:Lcom/google/protobuf/h3;

    return-void
.end method

.method protected constructor <init>(Lcom/google/protobuf/GeneratedMessage$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$f<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/a;-><init>()V

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method static synthetic access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/protobuf/c0;)Lcom/google/protobuf/Extension;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessage;->checkNotLite(Lcom/google/protobuf/c0;)Lcom/google/protobuf/Extension;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/protobuf/GeneratedMessage;Z)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static checkNotLite(Lcom/google/protobuf/c0;)Lcom/google/protobuf/Extension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<",
            "TMessageType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/c0<",
            "TMessageType;TT;>;)",
            "Lcom/google/protobuf/Extension<",
            "TMessageType;TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/c0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/protobuf/Extension;

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected non-lite extension."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static computeStringSize(ILjava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->V(ILjava/lang/String;)I

    move-result p0

    return p0

    .line 3
    :cond_0
    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->h(ILcom/google/protobuf/ByteString;)I

    move-result p0

    return p0
.end method

.method protected static computeStringSizeNoTag(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->W(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 3
    :cond_0
    check-cast p0, Lcom/google/protobuf/ByteString;

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->i(Lcom/google/protobuf/ByteString;)I

    move-result p0

    return p0
.end method

.method static enableAlwaysUseFieldBuildersForTesting()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return-void
.end method

.method private getAllFieldsMutable(Z)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
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
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$k;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessage$k;->a(Lcom/google/protobuf/GeneratedMessage$k;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->m()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

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
    invoke-virtual {p0, v4}, Lcom/google/protobuf/GeneratedMessage;->hasOneof(Lcom/google/protobuf/Descriptors$i;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/protobuf/GeneratedMessage;->getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$i;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v3

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {p0, v3}, Lcom/google/protobuf/GeneratedMessage;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 13
    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/protobuf/GeneratedMessage;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_4

    .line 16
    invoke-virtual {p0, v3}, Lcom/google/protobuf/GeneratedMessage;->getFieldRaw(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/protobuf/GeneratedMessage;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generated message class \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" missing method \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 4
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 5
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 7
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/l1;",
            "Type:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Lcom/google/protobuf/l1;",
            ")",
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$l;

    sget-object v1, Lcom/google/protobuf/Extension$ExtensionType;->IMMUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, p1, v1}, Lcom/google/protobuf/GeneratedMessage$l;-><init>(Lcom/google/protobuf/GeneratedMessage$j;Ljava/lang/Class;Lcom/google/protobuf/l1;Lcom/google/protobuf/Extension$ExtensionType;)V

    return-object v0
.end method

.method public static newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/GeneratedMessage$l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/l1;",
            "Type:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Lcom/google/protobuf/l1;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$l;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$d;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/protobuf/GeneratedMessage$d;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/google/protobuf/Extension$ExtensionType;->MUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$l;-><init>(Lcom/google/protobuf/GeneratedMessage$j;Ljava/lang/Class;Lcom/google/protobuf/l1;Lcom/google/protobuf/Extension$ExtensionType;)V

    return-object v0
.end method

.method public static newMessageScopedGeneratedExtension(Lcom/google/protobuf/l1;ILjava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/l1;",
            "Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/l1;",
            "I",
            "Ljava/lang/Class;",
            "Lcom/google/protobuf/l1;",
            ")",
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$l;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$b;

    invoke-direct {v1, p0, p1}, Lcom/google/protobuf/GeneratedMessage$b;-><init>(Lcom/google/protobuf/l1;I)V

    sget-object p0, Lcom/google/protobuf/Extension$ExtensionType;->IMMUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    invoke-direct {v0, v1, p2, p3, p0}, Lcom/google/protobuf/GeneratedMessage$l;-><init>(Lcom/google/protobuf/GeneratedMessage$j;Ljava/lang/Class;Lcom/google/protobuf/l1;Lcom/google/protobuf/Extension$ExtensionType;)V

    return-object v0
.end method

.method public static newMessageScopedGeneratedExtension(Lcom/google/protobuf/l1;Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/l1;",
            "Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/l1;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Lcom/google/protobuf/l1;",
            ")",
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$l;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$c;

    invoke-direct {v1, p0, p1}, Lcom/google/protobuf/GeneratedMessage$c;-><init>(Lcom/google/protobuf/l1;Ljava/lang/String;)V

    sget-object p0, Lcom/google/protobuf/Extension$ExtensionType;->MUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    invoke-direct {v0, v1, p2, p3, p0}, Lcom/google/protobuf/GeneratedMessage$l;-><init>(Lcom/google/protobuf/GeneratedMessage$j;Ljava/lang/Class;Lcom/google/protobuf/l1;Lcom/google/protobuf/Extension$ExtensionType;)V

    return-object v0
.end method

.method protected static parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/l1;",
            ">(",
            "Lcom/google/protobuf/e2<",
            "TM;>;",
            "Ljava/io/InputStream;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/protobuf/e2;->e(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/l1;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method protected static parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/l1;",
            ">(",
            "Lcom/google/protobuf/e2<",
            "TM;>;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/f0;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/e2;->h(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/l1;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method protected static parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/l1;",
            ">(",
            "Lcom/google/protobuf/e2<",
            "TM;>;",
            "Lcom/google/protobuf/p;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/protobuf/e2;->d(Lcom/google/protobuf/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/l1;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method protected static parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/l1;",
            ">(",
            "Lcom/google/protobuf/e2<",
            "TM;>;",
            "Lcom/google/protobuf/p;",
            "Lcom/google/protobuf/f0;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/e2;->i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/l1;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method protected static parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/l1;",
            ">(",
            "Lcom/google/protobuf/e2<",
            "TM;>;",
            "Ljava/io/InputStream;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/protobuf/e2;->j(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/l1;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method protected static parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/l1;",
            ">(",
            "Lcom/google/protobuf/e2<",
            "TM;>;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/f0;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/e2;->k(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/l1;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method protected static writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->Z0(ILjava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->r0(ILcom/google/protobuf/ByteString;)V

    :goto_0
    return-void
.end method

.method protected static writeStringNoTag(Lcom/google/protobuf/CodedOutputStream;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->a1(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->s0(Lcom/google/protobuf/ByteString;)V

    :goto_0
    return-void
.end method


# virtual methods
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

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessage;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getAllFieldsRaw()Ljava/util/Map;
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

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessage;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$k;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessage$k;->a(Lcom/google/protobuf/GeneratedMessage$k;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$k;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$k;->c(Lcom/google/protobuf/GeneratedMessage$k;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessage$k$a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/GeneratedMessage$k$a;->b(Lcom/google/protobuf/GeneratedMessage;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getFieldRaw(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$k;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$k;->c(Lcom/google/protobuf/GeneratedMessage$k;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessage$k$a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/GeneratedMessage$k$a;->d(Lcom/google/protobuf/GeneratedMessage;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$i;)Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$k;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$k;->b(Lcom/google/protobuf/GeneratedMessage$k;Lcom/google/protobuf/Descriptors$i;)Lcom/google/protobuf/GeneratedMessage$k$b;

    throw v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "+",
            "Lcom/google/protobuf/GeneratedMessage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$k;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$k;->c(Lcom/google/protobuf/GeneratedMessage$k;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessage$k$a;

    move-result-object p1

    .line 2
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/GeneratedMessage$k$a;->a(Lcom/google/protobuf/GeneratedMessage;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$k;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$k;->c(Lcom/google/protobuf/GeneratedMessage$k;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessage$k$a;

    move-result-object p1

    .line 2
    invoke-interface {p1, p0}, Lcom/google/protobuf/GeneratedMessage$k$a;->e(Lcom/google/protobuf/GeneratedMessage;)I

    move-result p1

    return p1
.end method

.method public getSerializedSize()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getAllFieldsRaw()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lcom/google/protobuf/MessageReflection;->e(Lcom/google/protobuf/l1;Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getUnknownFields()Lcom/google/protobuf/h3;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$k;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$k;->c(Lcom/google/protobuf/GeneratedMessage$k;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessage$k$a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/GeneratedMessage$k$a;->c(Lcom/google/protobuf/GeneratedMessage;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/google/protobuf/Descriptors$i;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$k;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$k;->b(Lcom/google/protobuf/GeneratedMessage$k;Lcom/google/protobuf/Descriptors$i;)Lcom/google/protobuf/GeneratedMessage$k$b;

    throw v0
.end method

.method protected abstract internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$k;
.end method

.method protected internalGetMapField(I)Lcom/google/protobuf/g1;
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

.method public isInitialized()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 2
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->F()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessage;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 4
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v4, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessage;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/l1;

    .line 8
    invoke-interface {v2}, Lcom/google/protobuf/p1;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    .line 9
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessage;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessage;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/l1;

    invoke-interface {v1}, Lcom/google/protobuf/p1;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method protected makeExtensionsImmutable()V
    .locals 0

    return-void
.end method

.method public abstract synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
.end method

.method protected abstract newBuilderForType(Lcom/google/protobuf/GeneratedMessage$g;)Lcom/google/protobuf/l1$a;
.end method

.method protected newBuilderForType(Lcom/google/protobuf/a$b;)Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$a;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage$a;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/a$b;)V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessage;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$g;)Lcom/google/protobuf/l1$a;

    move-result-object p1

    return-object p1
.end method

.method public abstract synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
.end method

.method protected parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2, p4, p1}, Lcom/google/protobuf/h3$b;->k(ILcom/google/protobuf/p;)Z

    move-result p1

    return p1
.end method

.method public abstract synthetic toBuilder()Lcom/google/protobuf/l1$a;
.end method

.method public abstract synthetic toBuilder()Lcom/google/protobuf/o1$a;
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;-><init>(Lcom/google/protobuf/o1;)V

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getAllFieldsRaw()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/google/protobuf/MessageReflection;->k(Lcom/google/protobuf/l1;Ljava/util/Map;Lcom/google/protobuf/CodedOutputStream;Z)V

    return-void
.end method
