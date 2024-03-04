.class Lcom/google/protobuf/MessageReflection$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageReflection$MergeTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MessageReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/l1$a;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/l1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/MessageReflection$b;->a:Lcom/google/protobuf/l1$a;

    return-void
.end method


# virtual methods
.method public L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$b;->a:Lcom/google/protobuf/l1$a;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/l1$a;->L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;

    return-object p0
.end method

.method public a(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/l1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 1
    invoke-interface {p4}, Lcom/google/protobuf/l1;->newBuilderForType()Lcom/google/protobuf/l1$a;

    move-result-object p4

    goto :goto_0

    .line 2
    :cond_0
    iget-object p4, p0, Lcom/google/protobuf/MessageReflection$b;->a:Lcom/google/protobuf/l1$a;

    invoke-interface {p4, p3}, Lcom/google/protobuf/l1$a;->F0(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/l1$a;

    move-result-object p4

    .line 3
    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$b;->h(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l1;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p4, v0}, Lcom/google/protobuf/l1$a;->P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;

    .line 6
    :cond_1
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p3

    invoke-virtual {p1, p3, p4, p2}, Lcom/google/protobuf/p;->y(ILcom/google/protobuf/o1$a;Lcom/google/protobuf/f0;)V

    .line 7
    invoke-interface {p4}, Lcom/google/protobuf/l1$a;->I()Lcom/google/protobuf/l1;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$b;I)Lcom/google/protobuf/d0$c;
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/d0;->h(Lcom/google/protobuf/Descriptors$b;I)Lcom/google/protobuf/d0$c;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$b;->a:Lcom/google/protobuf/l1$a;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/l1$a;->c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;

    return-object p0
.end method

.method public d(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/WireFormat$b;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/google/protobuf/WireFormat$b;->b:Lcom/google/protobuf/WireFormat$b;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p1

    .line 4
    sget-object p1, Lcom/google/protobuf/WireFormat$b;->a:Lcom/google/protobuf/WireFormat$b;

    return-object p1
.end method

.method public e(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/l1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 1
    invoke-interface {p4}, Lcom/google/protobuf/l1;->newBuilderForType()Lcom/google/protobuf/l1$a;

    move-result-object p4

    goto :goto_0

    .line 2
    :cond_0
    iget-object p4, p0, Lcom/google/protobuf/MessageReflection$b;->a:Lcom/google/protobuf/l1$a;

    invoke-interface {p4, p3}, Lcom/google/protobuf/l1$a;->F0(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/l1$a;

    move-result-object p4

    .line 3
    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$b;->h(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/protobuf/l1;

    if-eqz p3, :cond_1

    .line 5
    invoke-interface {p4, p3}, Lcom/google/protobuf/l1$a;->P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;

    .line 6
    :cond_1
    invoke-interface {p4, p1, p2}, Lcom/google/protobuf/l1$a;->A0(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1$a;

    .line 7
    invoke-interface {p4}, Lcom/google/protobuf/l1$a;->I()Lcom/google/protobuf/l1;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/l1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 1
    invoke-interface {p4}, Lcom/google/protobuf/l1;->newBuilderForType()Lcom/google/protobuf/l1$a;

    move-result-object p4

    goto :goto_0

    .line 2
    :cond_0
    iget-object p4, p0, Lcom/google/protobuf/MessageReflection$b;->a:Lcom/google/protobuf/l1$a;

    invoke-interface {p4, p3}, Lcom/google/protobuf/l1$a;->F0(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/l1$a;

    move-result-object p4

    .line 3
    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$b;->h(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/protobuf/l1;

    if-eqz p3, :cond_1

    .line 5
    invoke-interface {p4, p3}, Lcom/google/protobuf/l1$a;->P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;

    .line 6
    :cond_1
    invoke-virtual {p1, p4, p2}, Lcom/google/protobuf/p;->C(Lcom/google/protobuf/o1$a;Lcom/google/protobuf/f0;)V

    .line 7
    invoke-interface {p4}, Lcom/google/protobuf/l1$a;->I()Lcom/google/protobuf/l1;

    move-result-object p1

    return-object p1
.end method

.method public g()Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;
    .locals 1

    sget-object v0, Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;->MESSAGE:Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;

    return-object v0
.end method

.method public h(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$b;->a:Lcom/google/protobuf/l1$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/r1;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$b;->a:Lcom/google/protobuf/l1$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/r1;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result p1

    return p1
.end method
