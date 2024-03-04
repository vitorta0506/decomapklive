.class public Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z

.field final synthetic d:Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;Z)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;->d:Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->access$600(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;)Lcom/google/protobuf/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/o0;->E()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;->a:Ljava/util/Iterator;

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;->b:Ljava/util/Map$Entry;

    .line 6
    :cond_0
    iput-boolean p2, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;ZLcom/google/protobuf/GeneratedMessageV3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;-><init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;Z)V

    return-void
.end method


# virtual methods
.method public a(ILcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;->b:Ljava/util/Map$Entry;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    if-ge v0, p1, :cond_3

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 3
    iget-boolean v1, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->s0()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;->b:Ljava/util/Map$Entry;

    instance-of v1, v1, Lcom/google/protobuf/w0$b;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;->b:Ljava/util/Map$Entry;

    check-cast v1, Lcom/google/protobuf/w0$b;

    .line 7
    invoke-virtual {v1}, Lcom/google/protobuf/w0$b;->a()Lcom/google/protobuf/w0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/x0;->f()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 8
    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->P0(ILcom/google/protobuf/ByteString;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;->b:Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/l1;

    .line 11
    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->O0(ILcom/google/protobuf/o1;)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/protobuf/o0;->P(Lcom/google/protobuf/o0$c;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;->b:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$a;->b:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_3
    return-void
.end method
