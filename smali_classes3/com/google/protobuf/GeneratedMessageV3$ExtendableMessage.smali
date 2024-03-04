.class public abstract Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;",
        ">",
        "Lcom/google/protobuf/GeneratedMessageV3;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final extensions:Lcom/google/protobuf/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/o0;->J()Lcom/google/protobuf/o0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->extensions:Lcom/google/protobuf/o0;

    return-void
.end method

.method protected constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$d<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3$d;->W(Lcom/google/protobuf/GeneratedMessageV3$d;)Lcom/google/protobuf/o0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->extensions:Lcom/google/protobuf/o0;

    return-void
.end method

.method static synthetic access$600(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;)Lcom/google/protobuf/o0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->extensions:Lcom/google/protobuf/o0;

    return-object p0
.end method

.method private verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->o()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyExtensionContainingType(Lcom/google/protobuf/Extension;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Extension<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->c()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->o()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extension is for type \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->c()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->o()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" which does not match message type \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected extensionsAreInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->extensions:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->B()Z

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->extensions:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->w()I

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSizeAsMessageSet()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->extensions:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->s()I

    move-result v0

    return v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 2
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
    invoke-static {p0, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$800(Lcom/google/protobuf/GeneratedMessageV3;Z)Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->getExtensionFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllFieldsRaw()Ljava/util/Map;
    .locals 2
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
    invoke-static {p0, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$800(Lcom/google/protobuf/GeneratedMessageV3;Z)Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->getExtensionFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
.end method

.method public final getExtension(Lcom/google/protobuf/Extension;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Extension<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->getExtension(Lcom/google/protobuf/c0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/google/protobuf/Extension;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Extension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->getExtension(Lcom/google/protobuf/c0;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/google/protobuf/GeneratedMessage$l;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->getExtension(Lcom/google/protobuf/c0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/google/protobuf/GeneratedMessage$l;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->getExtension(Lcom/google/protobuf/c0;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/google/protobuf/c0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/c0<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3;->access$500(Lcom/google/protobuf/c0;)Lcom/google/protobuf/Extension;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/Extension;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->c()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->extensions:Lcom/google/protobuf/o0;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/o0;->r(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v2, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->e()Lcom/google/protobuf/l1;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->p()Ljava/lang/Object;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/protobuf/Extension;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/protobuf/Extension;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/google/protobuf/c0;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/c0<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 12
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3;->access$500(Lcom/google/protobuf/c0;)Lcom/google/protobuf/Extension;

    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/Extension;)V

    .line 14
    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->c()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->extensions:Lcom/google/protobuf/o0;

    .line 16
    invoke-virtual {v1, v0, p2}, Lcom/google/protobuf/o0;->u(Lcom/google/protobuf/o0$c;I)Ljava/lang/Object;

    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Extension;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtensionCount(Lcom/google/protobuf/Extension;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Extension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->getExtensionCount(Lcom/google/protobuf/c0;)I

    move-result p1

    return p1
.end method

.method public final getExtensionCount(Lcom/google/protobuf/GeneratedMessage$l;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->getExtensionCount(Lcom/google/protobuf/c0;)I

    move-result p1

    return p1
.end method

.method public final getExtensionCount(Lcom/google/protobuf/c0;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/c0<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3;->access$500(Lcom/google/protobuf/c0;)Lcom/google/protobuf/Extension;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/Extension;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->c()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->extensions:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->v(Lcom/google/protobuf/o0$c;)I

    move-result p1

    return p1
.end method

.method protected getExtensionFields()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->extensions:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->q()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->extensions:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->r(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->v()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/x;->f(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->p()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    .line 9
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->extensions:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0;->u(Lcom/google/protobuf/o0$c;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3;->getRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->extensions:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->v(Lcom/google/protobuf/o0$c;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$FieldDescriptor;)I

    move-result p1

    return p1
.end method

.method public final hasExtension(Lcom/google/protobuf/Extension;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Extension<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->hasExtension(Lcom/google/protobuf/c0;)Z

    move-result p1

    return p1
.end method

.method public final hasExtension(Lcom/google/protobuf/GeneratedMessage$l;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->hasExtension(Lcom/google/protobuf/c0;)Z

    move-result p1

    return p1
.end method

.method public final hasExtension(Lcom/google/protobuf/c0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/c0<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3;->access$500(Lcom/google/protobuf/c0;)Lcom/google/protobuf/Extension;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/Extension;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->extensions:Lcom/google/protobuf/o0;

    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->c()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->y(Lcom/google/protobuf/o0$c;)Z

    move-result p1

    return p1
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->extensions:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->y(Lcom/google/protobuf/o0$c;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result p1

    return p1
.end method

.method public isInitialized()Z
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->extensionsAreInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected makeExtensionsImmutable()V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->extensions:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->F()V

    return-void
.end method

.method public abstract synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
.end method

.method public abstract synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
.end method

.method protected newExtensionWriter()Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage<",
            "TMessageType;>.a;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;-><init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;ZLcom/google/protobuf/GeneratedMessageV3$a;)V

    return-object v0
.end method

.method protected newMessageSetExtensionWriter()Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage<",
            "TMessageType;>.a;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;-><init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;ZLcom/google/protobuf/GeneratedMessageV3$a;)V

    return-object v0
.end method

.method protected parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v1, p2

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v3

    new-instance v4, Lcom/google/protobuf/MessageReflection$c;

    iget-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->extensions:Lcom/google/protobuf/o0;

    invoke-direct {v4, p2}, Lcom/google/protobuf/MessageReflection$c;-><init>(Lcom/google/protobuf/o0;)V

    move-object v0, p1

    move-object v2, p3

    move v5, p4

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/MessageReflection;->g(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/MessageReflection$MergeTarget;I)Z

    move-result p1

    return p1
.end method

.method protected parseUnknownFieldProto3(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result p1

    return p1
.end method

.method public abstract synthetic toBuilder()Lcom/google/protobuf/l1$a;
.end method

.method public abstract synthetic toBuilder()Lcom/google/protobuf/o1$a;
.end method
