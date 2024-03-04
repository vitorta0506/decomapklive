.class public final Lcom/google/protobuf/Descriptors$g;
.super Lcom/google/protobuf/Descriptors$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private final e:Lcom/google/protobuf/Descriptors$j;

.field private f:Lcom/google/protobuf/Descriptors$b;

.field private g:Lcom/google/protobuf/Descriptors$b;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$j;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$f;-><init>(Lcom/google/protobuf/Descriptors$a;)V

    .line 3
    iput p4, p0, Lcom/google/protobuf/Descriptors$g;->a:I

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$g;->b:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 5
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$g;->d:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 6
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$g;->e:Lcom/google/protobuf/Descriptors$j;

    .line 7
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$j;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$g;->c:Ljava/lang/String;

    .line 8
    invoke-static {p2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->f(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$c;->b(Lcom/google/protobuf/Descriptors$f;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$j;ILcom/google/protobuf/Descriptors$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Descriptors$g;-><init>(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$j;I)V

    return-void
.end method

.method static synthetic f(Lcom/google/protobuf/Descriptors$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/Descriptors$g;->h()V

    return-void
.end method

.method static synthetic g(Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/Descriptors$g;->i(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    return-void
.end method

.method private h()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$g;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->f(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$g;->b:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 3
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$c$b;->a:Lcom/google/protobuf/Descriptors$c$b;

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/protobuf/Descriptors$c;->h(Ljava/lang/String;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Descriptors$c$b;)Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/google/protobuf/Descriptors$b;

    const/4 v3, 0x0

    const-string v4, "\" is not a message type."

    const/16 v5, 0x22

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$g;->f:Lcom/google/protobuf/Descriptors$b;

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$g;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->f(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$g;->b:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 8
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/protobuf/Descriptors$c;->h(Ljava/lang/String;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Descriptors$c$b;)Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/google/protobuf/Descriptors$b;

    if-eqz v1, :cond_0

    .line 10
    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$g;->g:Lcom/google/protobuf/Descriptors$b;

    return-void

    .line 11
    :cond_0
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/protobuf/Descriptors$g;->b:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 12
    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    .line 13
    :cond_1
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/protobuf/Descriptors$g;->b:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 14
    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0
.end method

.method private i(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$g;->b:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-void
.end method


# virtual methods
.method public b()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->d:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->b:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Lcom/google/protobuf/l1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$g;->j()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->b:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method
