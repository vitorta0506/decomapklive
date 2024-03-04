.class public final Lcom/google/protobuf/Descriptors$j;
.super Lcom/google/protobuf/Descriptors$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private e:[Lcom/google/protobuf/Descriptors$g;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$f;-><init>(Lcom/google/protobuf/Descriptors$a;)V

    .line 3
    iput p3, p0, Lcom/google/protobuf/Descriptors$j;->a:I

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$j;->b:Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v0, p3}, Lcom/google/protobuf/Descriptors;->e(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/protobuf/Descriptors$j;->c:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$j;->d:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethodCount()I

    move-result p3

    new-array p3, p3, [Lcom/google/protobuf/Descriptors$g;

    iput-object p3, p0, Lcom/google/protobuf/Descriptors$j;->e:[Lcom/google/protobuf/Descriptors$g;

    const/4 p3, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethodCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 9
    iget-object v6, p0, Lcom/google/protobuf/Descriptors$j;->e:[Lcom/google/protobuf/Descriptors$g;

    new-instance v7, Lcom/google/protobuf/Descriptors$g;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethod(I)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p2

    move-object v3, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/Descriptors$g;-><init>(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$j;ILcom/google/protobuf/Descriptors$a;)V

    aput-object v7, v6, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->f(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$c;->b(Lcom/google/protobuf/Descriptors$f;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;ILcom/google/protobuf/Descriptors$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/Descriptors$j;-><init>(Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;I)V

    return-void
.end method

.method static synthetic f(Lcom/google/protobuf/Descriptors$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/Descriptors$j;->h()V

    return-void
.end method

.method static synthetic g(Lcom/google/protobuf/Descriptors$j;Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/Descriptors$j;->i(Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;)V

    return-void
.end method

.method private h()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$j;->e:[Lcom/google/protobuf/Descriptors$g;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-static {v3}, Lcom/google/protobuf/Descriptors$g;->f(Lcom/google/protobuf/Descriptors$g;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private i(Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$j;->b:Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$j;->e:[Lcom/google/protobuf/Descriptors$g;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3
    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethod(I)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/Descriptors$g;->g(Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$j;->d:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$j;->b:Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Lcom/google/protobuf/l1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$j;->j()Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$j;->b:Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method
