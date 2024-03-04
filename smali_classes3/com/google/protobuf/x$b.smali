.class public final Lcom/google/protobuf/x$b;
.super Lcom/google/protobuf/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/a$a<",
        "Lcom/google/protobuf/x$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/Descriptors$b;

.field private b:Lcom/google/protobuf/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

.field private d:Lcom/google/protobuf/h3;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Descriptors$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/a$a;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/x$b;->a:Lcom/google/protobuf/Descriptors$b;

    .line 4
    invoke-static {}, Lcom/google/protobuf/o0;->J()Lcom/google/protobuf/o0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    .line 5
    invoke-static {}, Lcom/google/protobuf/h3;->d()Lcom/google/protobuf/h3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/x$b;->d:Lcom/google/protobuf/h3;

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->u()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result p1

    new-array p1, p1, [Lcom/google/protobuf/Descriptors$FieldDescriptor;

    iput-object p1, p0, Lcom/google/protobuf/x$b;->c:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/x$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/x$b;-><init>(Lcom/google/protobuf/Descriptors$b;)V

    return-void
.end method

.method private G(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/x$b;->J(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/x$b;->J(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private H()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->h()Lcom/google/protobuf/o0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    :cond_0
    return-void
.end method

.method private J(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/google/protobuf/u0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of p1, p2, Lcom/google/protobuf/Descriptors$e;

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DynamicMessage should use EnumValueDescriptor to set Enum Value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private R(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->o()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/x$b;->a:Lcom/google/protobuf/Descriptors$b;

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
.method public B(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/x$b;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/x$b;->R(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/x$b;->H()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0;->f(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    return-object p0
.end method

.method public C()Lcom/google/protobuf/x;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/x$b;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/x$b;->D()Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/protobuf/x;

    iget-object v1, p0, Lcom/google/protobuf/x$b;->a:Lcom/google/protobuf/Descriptors$b;

    iget-object v2, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    iget-object v3, p0, Lcom/google/protobuf/x$b;->c:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    array-length v4, v3

    .line 4
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/protobuf/Descriptors$FieldDescriptor;

    iget-object v4, p0, Lcom/google/protobuf/x$b;->d:Lcom/google/protobuf/h3;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/o0;[Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/h3;)V

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public D()Lcom/google/protobuf/x;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x$b;->a:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->q()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMapEntry()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/x$b;->a:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 3
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->B()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/o0;->y(Lcom/google/protobuf/o0$c;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_1

    .line 5
    iget-object v2, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->v()Lcom/google/protobuf/Descriptors$b;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/x;->f(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/x;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/protobuf/o0;->L(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->p()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/protobuf/o0;->L(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->F()V

    .line 8
    new-instance v0, Lcom/google/protobuf/x;

    iget-object v1, p0, Lcom/google/protobuf/x$b;->a:Lcom/google/protobuf/Descriptors$b;

    iget-object v2, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    iget-object v3, p0, Lcom/google/protobuf/x$b;->c:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    array-length v4, v3

    .line 9
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/protobuf/Descriptors$FieldDescriptor;

    iget-object v4, p0, Lcom/google/protobuf/x$b;->d:Lcom/google/protobuf/h3;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/o0;[Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/h3;)V

    return-object v0
.end method

.method public E()Lcom/google/protobuf/x$b;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/protobuf/x$b;

    iget-object v1, p0, Lcom/google/protobuf/x$b;->a:Lcom/google/protobuf/Descriptors$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/x$b;-><init>(Lcom/google/protobuf/Descriptors$b;)V

    .line 2
    iget-object v1, v0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    iget-object v2, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/o0;->G(Lcom/google/protobuf/o0;)V

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/x$b;->d:Lcom/google/protobuf/h3;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/x$b;->N(Lcom/google/protobuf/h3;)Lcom/google/protobuf/x$b;

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/x$b;->c:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    iget-object v2, v0, Lcom/google/protobuf/x$b;->c:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public bridge synthetic F0(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x$b;->O(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/x$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/x$b;->D()Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/x$b;->D()Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method

.method public K()Lcom/google/protobuf/x;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/x$b;->a:Lcom/google/protobuf/Descriptors$b;

    invoke-static {v0}, Lcom/google/protobuf/x;->f(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/x$b;->B(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/x$b;

    move-result-object p1

    return-object p1
.end method

.method public M(Lcom/google/protobuf/l1;)Lcom/google/protobuf/x$b;
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/x;

    if-eqz v0, :cond_4

    .line 2
    check-cast p1, Lcom/google/protobuf/x;

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/x;->a(Lcom/google/protobuf/x;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/x$b;->a:Lcom/google/protobuf/Descriptors$b;

    if-ne v0, v1, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/x$b;->H()V

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    invoke-static {p1}, Lcom/google/protobuf/x;->b(Lcom/google/protobuf/x;)Lcom/google/protobuf/o0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o0;->G(Lcom/google/protobuf/o0;)V

    .line 6
    invoke-static {p1}, Lcom/google/protobuf/x;->d(Lcom/google/protobuf/x;)Lcom/google/protobuf/h3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/x$b;->N(Lcom/google/protobuf/h3;)Lcom/google/protobuf/x$b;

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/x$b;->c:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 8
    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 9
    invoke-static {p1}, Lcom/google/protobuf/x;->e(Lcom/google/protobuf/x;)[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/x;->e(Lcom/google/protobuf/x;)[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/x$b;->c:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, v0

    .line 11
    invoke-static {p1}, Lcom/google/protobuf/x;->e(Lcom/google/protobuf/x;)[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_1

    .line 12
    iget-object v1, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    iget-object v2, p0, Lcom/google/protobuf/x$b;->c:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/protobuf/o0;->g(Lcom/google/protobuf/o0$c;)V

    .line 13
    iget-object v1, p0, Lcom/google/protobuf/x$b;->c:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-static {p1}, Lcom/google/protobuf/x;->e(Lcom/google/protobuf/x;)[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/x$b;

    return-object p1
.end method

.method public N(Lcom/google/protobuf/h3;)Lcom/google/protobuf/x$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x$b;->d:Lcom/google/protobuf/h3;

    .line 2
    invoke-static {v0}, Lcom/google/protobuf/h3;->i(Lcom/google/protobuf/h3;)Lcom/google/protobuf/h3$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3$b;->p(Lcom/google/protobuf/h3;)Lcom/google/protobuf/h3$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/x$b;->d:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public O(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/x$b;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/x$b;->R(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/google/protobuf/x$b;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->v()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/protobuf/x$b;-><init>(Lcom/google/protobuf/Descriptors$b;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newBuilderForField is only valid for fields with message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public P(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/x$b;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/x$b;->R(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/x$b;->H()V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/x$b;->G(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m()Lcom/google/protobuf/Descriptors$i;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$i;->o()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/x$b;->c:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    .line 8
    iget-object v2, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/o0;->g(Lcom/google/protobuf/o0$c;)V

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/x$b;->c:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    aput-object p1, v1, v0

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->r()Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->p()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object p2, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    invoke-virtual {p2, p1}, Lcom/google/protobuf/o0;->g(Lcom/google/protobuf/o0$c;)V

    return-object p0

    .line 15
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0;->L(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x$b;->M(Lcom/google/protobuf/l1;)Lcom/google/protobuf/x$b;

    move-result-object p1

    return-object p1
.end method

.method public Q(Lcom/google/protobuf/h3;)Lcom/google/protobuf/x$b;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/x$b;->d:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/x$b;->C()Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/x$b;->C()Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/x$b;->P(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/x$b;

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

    invoke-virtual {p0}, Lcom/google/protobuf/x$b;->E()Lcom/google/protobuf/x$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x$b;->Q(Lcom/google/protobuf/h3;)Lcom/google/protobuf/x$b;

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

    iget-object v0, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->q()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/x$b;->K()Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/x$b;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/x$b;->R(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

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

.method public getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/x$b;->d:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/x$b;->R(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->y(Lcom/google/protobuf/o0$c;)Z

    move-result p1

    return p1
.end method

.method public isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/x$b;->a:Lcom/google/protobuf/Descriptors$b;

    iget-object v1, p0, Lcom/google/protobuf/x$b;->b:Lcom/google/protobuf/o0;

    invoke-static {v0, v1}, Lcom/google/protobuf/x;->h(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/o0;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/x$b;->E()Lcom/google/protobuf/x$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x$b;->M(Lcom/google/protobuf/l1;)Lcom/google/protobuf/x$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x$b;->N(Lcom/google/protobuf/h3;)Lcom/google/protobuf/x$b;

    move-result-object p1

    return-object p1
.end method
