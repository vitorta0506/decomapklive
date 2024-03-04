.class public final Lcom/google/protobuf/Descriptors$FieldDescriptor;
.super Lcom/google/protobuf/Descriptors$f;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/google/protobuf/o0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;,
        Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/Descriptors$f;",
        "Ljava/lang/Comparable<",
        "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
        ">;",
        "Lcom/google/protobuf/o0$c<",
        "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final n:Lcom/google/protobuf/Descriptors$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Descriptors$h<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:[Lcom/google/protobuf/WireFormat$FieldType;


# instance fields
.field private final a:I

.field private b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private final f:Lcom/google/protobuf/Descriptors$b;

.field private final g:Z

.field private h:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field private i:Lcom/google/protobuf/Descriptors$b;

.field private j:Lcom/google/protobuf/Descriptors$b;

.field private k:Lcom/google/protobuf/Descriptors$i;

.field private l:Lcom/google/protobuf/Descriptors$d;

.field private m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/Descriptors$FieldDescriptor$a;

    invoke-direct {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->n:Lcom/google/protobuf/Descriptors$h;

    .line 2
    invoke-static {}, Lcom/google/protobuf/WireFormat$FieldType;->values()[Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->o:[Lcom/google/protobuf/WireFormat$FieldType;

    .line 3
    invoke-static {}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->access$3000()[Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->values()[Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "descriptor.proto has a new declared type but Descriptors.java wasn\'t updated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$b;IZ)V
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
    iput p4, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->a:I

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/google/protobuf/Descriptors;->e(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->c:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getType()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object p4

    invoke-static {p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->valueOf(Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p4

    iput-object p4, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->h:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getProto3Optional()Z

    move-result p4

    iput-boolean p4, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->g:Z

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p4

    if-lez p4, :cond_8

    if-eqz p5, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 12
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->i:Lcom/google/protobuf/Descriptors$b;

    if-eqz p3, :cond_1

    .line 13
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->f:Lcom/google/protobuf/Descriptors$b;

    goto :goto_0

    .line 14
    :cond_1
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->f:Lcom/google/protobuf/Descriptors$b;

    .line 15
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOneofIndex()Z

    move-result p1

    if-nez p1, :cond_2

    .line 16
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->k:Lcom/google/protobuf/Descriptors$i;

    goto :goto_2

    .line 17
    :cond_2
    new-instance p1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.oneof_index set for extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw p1

    .line 18
    :cond_3
    new-instance p1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.extendee not set for extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw p1

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result p4

    if-nez p4, :cond_7

    .line 20
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->i:Lcom/google/protobuf/Descriptors$b;

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOneofIndex()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 22
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getOneofIndex()I

    move-result p4

    if-ltz p4, :cond_5

    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getOneofIndex()I

    move-result p4

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$b;->u()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result p5

    if-ge p4, p5, :cond_5

    .line 24
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$b;->p()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getOneofIndex()I

    move-result p1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$i;

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->k:Lcom/google/protobuf/Descriptors$i;

    .line 25
    invoke-static {p1}, Lcom/google/protobuf/Descriptors$i;->i(Lcom/google/protobuf/Descriptors$i;)I

    goto :goto_1

    .line 26
    :cond_5
    new-instance p1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "FieldDescriptorProto.oneof_index is out of range for type "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$b;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw p1

    .line 28
    :cond_6
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->k:Lcom/google/protobuf/Descriptors$i;

    .line 29
    :goto_1
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->f:Lcom/google/protobuf/Descriptors$b;

    .line 30
    :goto_2
    invoke-static {p2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->f(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$c;->b(Lcom/google/protobuf/Descriptors$f;)V

    return-void

    .line 31
    :cond_7
    new-instance p1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.extendee set for non-extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw p1

    .line 32
    :cond_8
    new-instance p1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "Field numbers must be positive integers."

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$b;IZLcom/google/protobuf/Descriptors$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$b;IZ)V

    return-void
.end method

.method private L(Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;)V
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-void
.end method

.method static synthetic f(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->k()V

    return-void
.end method

.method static synthetic g(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->L(Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    return-void
.end method

.method static synthetic h()Lcom/google/protobuf/Descriptors$h;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->n:Lcom/google/protobuf/Descriptors$h;

    return-object v0
.end method

.method static synthetic i(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->g:Z

    return p0
.end method

.method private k()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    const-string v1, "\" is not a message type."

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->f(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$c;

    move-result-object v0

    iget-object v4, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 4
    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$c$b;->a:Lcom/google/protobuf/Descriptors$c$b;

    .line 5
    invoke-virtual {v0, v4, p0, v5}, Lcom/google/protobuf/Descriptors$c;->h(Ljava/lang/String;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Descriptors$c$b;)Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    .line 6
    instance-of v4, v0, Lcom/google/protobuf/Descriptors$b;

    if-eqz v4, :cond_1

    .line 7
    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->i:Lcom/google/protobuf/Descriptors$b;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->o()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/protobuf/Descriptors$b;->s(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->o()Lcom/google/protobuf/Descriptors$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" does not declare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as an extension number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    .line 12
    :cond_1
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 13
    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    .line 14
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 15
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 16
    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->f(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$c;

    move-result-object v0

    iget-object v4, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 17
    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$c$b;->a:Lcom/google/protobuf/Descriptors$c$b;

    .line 18
    invoke-virtual {v0, v4, p0, v5}, Lcom/google/protobuf/Descriptors$c;->h(Ljava/lang/String;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Descriptors$c$b;)Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    .line 19
    iget-object v4, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v4

    if-nez v4, :cond_5

    .line 20
    instance-of v4, v0, Lcom/google/protobuf/Descriptors$b;

    if-eqz v4, :cond_3

    .line 21
    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    iput-object v4, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->h:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    goto :goto_1

    .line 22
    :cond_3
    instance-of v4, v0, Lcom/google/protobuf/Descriptors$d;

    if-eqz v4, :cond_4

    .line 23
    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    iput-object v4, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->h:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    goto :goto_1

    .line 24
    :cond_4
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 25
    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not a type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    .line 26
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_8

    .line 27
    instance-of v4, v0, Lcom/google/protobuf/Descriptors$b;

    if-eqz v4, :cond_7

    .line 28
    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->j:Lcom/google/protobuf/Descriptors$b;

    .line 29
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    .line 30
    :cond_6
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Messages can\'t have default values."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    .line 31
    :cond_7
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 32
    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    .line 33
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v4, :cond_a

    .line 34
    instance-of v1, v0, Lcom/google/protobuf/Descriptors$d;

    if-eqz v1, :cond_9

    .line 35
    check-cast v0, Lcom/google/protobuf/Descriptors$d;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->l:Lcom/google/protobuf/Descriptors$d;

    goto :goto_2

    .line 36
    :cond_9
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 37
    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not an enum type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    .line 38
    :cond_a
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Field with primitive type has type_name."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    .line 39
    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_1d

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_1d

    .line 40
    :goto_2
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->C()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    .line 41
    :cond_c
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "[packed = true] can only be specified for repeated primitive fields."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    .line 42
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_15

    .line 44
    :try_start_0
    sget-object v0, Lcom/google/protobuf/Descriptors$a;->a:[I

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "nan"

    const-string v4, "-inf"

    const-string v5, "inf"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 45
    :pswitch_0
    :try_start_1
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Message type had default value."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    .line 46
    :pswitch_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->l:Lcom/google/protobuf/Descriptors$d;

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$d;->h(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    if-eqz v0, :cond_e

    goto/16 :goto_4

    .line 47
    :cond_e
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown enum default value: \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 48
    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->p(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 50
    :try_start_3
    new-instance v1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t parse default value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4, v0, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/protobuf/Descriptors$a;)V

    throw v1

    .line 52
    :pswitch_3
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 53
    :pswitch_4
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 54
    :pswitch_5
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 56
    :cond_f
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 58
    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 60
    :cond_11
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 61
    :pswitch_6
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 62
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 63
    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 64
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 65
    :cond_13
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 66
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 67
    :cond_14
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 68
    :pswitch_7
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->n(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 69
    :pswitch_8
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->k(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 70
    :pswitch_9
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->m(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto/16 :goto_4

    .line 71
    :pswitch_a
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->j(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 72
    new-instance v1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse default value: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 73
    invoke-virtual {v5}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/protobuf/Descriptors$a;)V

    throw v1

    .line 74
    :cond_15
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Repeated fields cannot have default values."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    .line 75
    :cond_16
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto :goto_4

    .line 77
    :cond_17
    sget-object v0, Lcom/google/protobuf/Descriptors$a;->b:[I

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    .line 78
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->access$3200(Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto :goto_4

    .line 79
    :cond_18
    iput-object v3, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    goto :goto_4

    .line 80
    :cond_19
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->l:Lcom/google/protobuf/Descriptors$d;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$d;->k()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    .line 81
    :goto_4
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->i:Lcom/google/protobuf/Descriptors$b;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->q()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 82
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->z()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 83
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->B()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_1a

    goto :goto_5

    .line 84
    :cond_1a
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Extensions of MessageSets must be optional messages."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    .line 85
    :cond_1b
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "MessageSets cannot have fields, only extensions."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    :cond_1c
    :goto_5
    return-void

    .line 86
    :cond_1d
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Field with message or enum type missing type_name."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_2

    const/16 v4, 0x61

    if-gt v4, v5, :cond_1

    const/16 v4, 0x7a

    if-gt v5, v4, :cond_1

    add-int/lit8 v5, v5, -0x61

    add-int/lit8 v5, v5, 0x41

    int-to-char v5, v5

    .line 4
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->v()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->q()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMapEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->e0()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public I()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->h:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->o()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->q()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMapEntry()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->r()Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v2, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->o()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaStringCheckUtf8()Z

    move-result v0

    return v0
.end method

.method public M()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public b()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->c:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->j(Lcom/google/protobuf/Descriptors$FieldDescriptor;)I

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Lcom/google/protobuf/l1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->M()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public e0()Lcom/google/protobuf/WireFormat$FieldType;
    .locals 2

    sget-object v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->o:[Lcom/google/protobuf/WireFormat$FieldType;

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->h:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v0

    return v0
.end method

.method public isPacked()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->C()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->r()Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->w()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->w()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->w()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isRepeated()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(Lcom/google/protobuf/Descriptors$FieldDescriptor;)I
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/protobuf/Descriptors$FieldDescriptor;->i:Lcom/google/protobuf/Descriptors$b;

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->i:Lcom/google/protobuf/Descriptors$b;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m()Lcom/google/protobuf/Descriptors$i;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->k:Lcom/google/protobuf/Descriptors$i;

    return-object v0
.end method

.method public n(Lcom/google/protobuf/o1$a;Lcom/google/protobuf/o1;)Lcom/google/protobuf/o1$a;
    .locals 0

    check-cast p1, Lcom/google/protobuf/l1$a;

    check-cast p2, Lcom/google/protobuf/l1;

    invoke-interface {p1, p2}, Lcom/google/protobuf/l1$a;->P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;

    move-result-object p1

    return-object p1
.end method

.method public o()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->i:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public p()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m:Ljava/lang/Object;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FieldDescriptor.getDefaultValue() called on an embedded message field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q()Lcom/google/protobuf/Descriptors$d;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->l:Lcom/google/protobuf/Descriptors$d;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "This field is not of enum type. (%s)"

    .line 4
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r()Lcom/google/protobuf/Descriptors$b;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->f:Lcom/google/protobuf/Descriptors$b;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "This field is not an extension. (%s)"

    .line 4
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->a:I

    return v0
.end method

.method public s0()Lcom/google/protobuf/WireFormat$JavaType;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->e0()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->h:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasJsonName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getJsonName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->d:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->d:Ljava/lang/String;

    return-object v0
.end method

.method public v()Lcom/google/protobuf/Descriptors$b;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->j:Lcom/google/protobuf/Descriptors$b;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "This field is not of message type. (%s)"

    .line 4
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public w()Lcom/google/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->h:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    return-object v0
.end method

.method public y()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->r()Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m()Lcom/google/protobuf/Descriptors$i;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    return v0
.end method
