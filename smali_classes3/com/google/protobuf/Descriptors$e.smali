.class public final Lcom/google/protobuf/Descriptors$e;
.super Lcom/google/protobuf/Descriptors$f;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/protobuf/Descriptors$e;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Lcom/google/protobuf/Descriptors$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Descriptors$h<",
            "Lcom/google/protobuf/Descriptors$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private b:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/protobuf/Descriptors$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/Descriptors$e$a;

    invoke-direct {v0}, Lcom/google/protobuf/Descriptors$e$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/Descriptors$e;->e:Ljava/util/Comparator;

    .line 2
    new-instance v0, Lcom/google/protobuf/Descriptors$e$b;

    invoke-direct {v0}, Lcom/google/protobuf/Descriptors$e$b;-><init>()V

    sput-object v0, Lcom/google/protobuf/Descriptors$e;->f:Lcom/google/protobuf/Descriptors$h;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$d;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$f;-><init>(Lcom/google/protobuf/Descriptors$a;)V

    .line 4
    iput p4, p0, Lcom/google/protobuf/Descriptors$e;->a:I

    .line 5
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$e;->b:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 6
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$e;->d:Lcom/google/protobuf/Descriptors$d;

    .line 7
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$d;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$e;->c:Ljava/lang/String;

    .line 8
    invoke-static {p2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->f(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$c;->b(Lcom/google/protobuf/Descriptors$f;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$d;ILcom/google/protobuf/Descriptors$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Descriptors$e;-><init>(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$d;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Descriptors$d;Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$f;-><init>(Lcom/google/protobuf/Descriptors$a;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_ENUM_VALUE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$b;->m0(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$b;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$b;->n0(I)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$b;->X()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p2

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/google/protobuf/Descriptors$e;->a:I

    .line 13
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$e;->b:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 14
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$e;->d:Lcom/google/protobuf/Descriptors$d;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$d;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$e;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Descriptors$d;Ljava/lang/Integer;Lcom/google/protobuf/Descriptors$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Descriptors$e;-><init>(Lcom/google/protobuf/Descriptors$d;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic f(Lcom/google/protobuf/Descriptors$e;Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/Descriptors$e;->i(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V

    return-void
.end method

.method private i(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$e;->b:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-void
.end method


# virtual methods
.method public b()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$e;->d:Lcom/google/protobuf/Descriptors$d;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$d;->g(Lcom/google/protobuf/Descriptors$d;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$e;->b:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Lcom/google/protobuf/l1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->j()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/Descriptors$e;->a:I

    return v0
.end method

.method public getNumber()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$e;->b:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getNumber()I

    move-result v0

    return v0
.end method

.method public h()Lcom/google/protobuf/Descriptors$d;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$e;->d:Lcom/google/protobuf/Descriptors$d;

    return-object v0
.end method

.method public j()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$e;->b:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$e;->b:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
