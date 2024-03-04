.class public final Lcom/google/protobuf/x;
.super Lcom/google/protobuf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/x$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/Descriptors$b;

.field private final b:Lcom/google/protobuf/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

.field private final d:Lcom/google/protobuf/h3;

.field private e:I


# direct methods
.method constructor <init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/o0;[Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/h3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$b;",
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;[",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Lcom/google/protobuf/h3;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/a;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/protobuf/x;->e:I

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/x;->a:Lcom/google/protobuf/Descriptors$b;

    .line 4
    iput-object p2, p0, Lcom/google/protobuf/x;->b:Lcom/google/protobuf/o0;

    .line 5
    iput-object p3, p0, Lcom/google/protobuf/x;->c:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 6
    iput-object p4, p0, Lcom/google/protobuf/x;->d:Lcom/google/protobuf/h3;

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/x;)Lcom/google/protobuf/Descriptors$b;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/x;->a:Lcom/google/protobuf/Descriptors$b;

    return-object p0
.end method

.method static synthetic b(Lcom/google/protobuf/x;)Lcom/google/protobuf/o0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/x;->b:Lcom/google/protobuf/o0;

    return-object p0
.end method

.method static synthetic d(Lcom/google/protobuf/x;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/x;->d:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic e(Lcom/google/protobuf/x;)[Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/x;->c:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    return-object p0
.end method

.method public static f(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/x;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$b;->u()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v0

    .line 2
    new-array v0, v0, [Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 3
    new-instance v1, Lcom/google/protobuf/x;

    .line 4
    invoke-static {}, Lcom/google/protobuf/o0;->p()Lcom/google/protobuf/o0;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/google/protobuf/h3;->d()Lcom/google/protobuf/h3;

    move-result-object v3

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/o0;[Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/h3;)V

    return-object v1
.end method

.method static h(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/o0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$b;",
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$b;->m()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/protobuf/o0;->y(Lcom/google/protobuf/o0$c;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/o0;->B()Z

    move-result p0

    return p0
.end method

.method public static i(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/x$b;
    .locals 2

    new-instance v0, Lcom/google/protobuf/x$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/x$b;-><init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/x$a;)V

    return-object v0
.end method

.method private l(Lcom/google/protobuf/Descriptors$i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$i;->k()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/x;->a:Lcom/google/protobuf/Descriptors$b;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OneofDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->o()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/x;->a:Lcom/google/protobuf/Descriptors$b;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public g()Lcom/google/protobuf/x;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/x;->a:Lcom/google/protobuf/Descriptors$b;

    invoke-static {v0}, Lcom/google/protobuf/x;->f(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lcom/google/protobuf/x;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->q()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/x;->g()Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/x;->g()Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/x;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/x;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/x;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->r(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->v()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/x;->f(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/x;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->p()Ljava/lang/Object;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$i;)Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/x;->l(Lcom/google/protobuf/Descriptors$i;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/x;->c:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$i;->o()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/protobuf/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/x$a;

    invoke-direct {v0, p0}, Lcom/google/protobuf/x$a;-><init>(Lcom/google/protobuf/x;)V

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/x;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/x;->a:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->q()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/x;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->s()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/x;->d:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->g()I

    move-result v1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/x;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->w()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/google/protobuf/x;->d:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/google/protobuf/x;->e:I

    return v0
.end method

.method public getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/x;->d:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/x;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/x;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->y(Lcom/google/protobuf/o0$c;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/google/protobuf/Descriptors$i;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/x;->l(Lcom/google/protobuf/Descriptors$i;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/x;->c:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$i;->o()I

    move-result p1

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/x;->a:Lcom/google/protobuf/Descriptors$b;

    iget-object v1, p0, Lcom/google/protobuf/x;->b:Lcom/google/protobuf/o0;

    invoke-static {v0, v1}, Lcom/google/protobuf/x;->h(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/o0;)Z

    move-result v0

    return v0
.end method

.method public j()Lcom/google/protobuf/x$b;
    .locals 3

    new-instance v0, Lcom/google/protobuf/x$b;

    iget-object v1, p0, Lcom/google/protobuf/x;->a:Lcom/google/protobuf/Descriptors$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/x$b;-><init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/x$a;)V

    return-object v0
.end method

.method public k()Lcom/google/protobuf/x$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/x;->j()Lcom/google/protobuf/x$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/x$b;->M(Lcom/google/protobuf/l1;)Lcom/google/protobuf/x$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/x;->j()Lcom/google/protobuf/x$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/x;->j()Lcom/google/protobuf/x$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/x;->k()Lcom/google/protobuf/x$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/x;->k()Lcom/google/protobuf/x$b;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x;->a:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->q()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/x;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->Q(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/x;->d:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->m(Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/x;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->S(Lcom/google/protobuf/CodedOutputStream;)V

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/x;->d:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    :goto_0
    return-void
.end method
