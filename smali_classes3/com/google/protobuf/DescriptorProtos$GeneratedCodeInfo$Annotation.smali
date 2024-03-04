.class public final Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Annotation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    }
.end annotation


# static fields
.field public static final BEGIN_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

.field public static final END_FIELD_NUMBER:I = 0x4

.field public static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x1

.field public static final SOURCE_FILE_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private begin_:I

.field private bitField0_:I

.field private end_:I

.field private memoizedIsInitialized:B

.field private pathMemoizedSerializedSize:I

.field private path_:Lcom/google/protobuf/u0$g;

.field private volatile sourceFile_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 2
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$a;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->pathMemoizedSerializedSize:I

    .line 8
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->memoizedIsInitialized:B

    .line 9
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Lcom/google/protobuf/u0$g;

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$b<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->pathMemoizedSerializedSize:I

    .line 5
    iput-byte p1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_b

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v5, 0x8

    if-eq v4, v5, :cond_7

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_3

    const/16 v5, 0x18

    if-eq v4, v5, :cond_2

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    .line 15
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 16
    :cond_1
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    .line 17
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v4

    iput v4, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->end_:I

    goto :goto_0

    .line 18
    :cond_2
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    .line 19
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v4

    iput v4, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin_:I

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 21
    iget v5, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    or-int/2addr v5, v3

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    .line 22
    iput-object v4, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->D()I

    move-result v4

    .line 24
    invoke-virtual {p1, v4}, Lcom/google/protobuf/p;->q(I)I

    move-result v4

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_5

    .line 25
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v5

    if-lez v5, :cond_5

    .line 26
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/u0$g;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Lcom/google/protobuf/u0$g;

    or-int/lit8 v2, v2, 0x1

    .line 27
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v5

    if-lez v5, :cond_6

    .line 28
    iget-object v5, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Lcom/google/protobuf/u0$g;

    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/u0$g;->D0(I)V

    goto :goto_1

    .line 29
    :cond_6
    invoke-virtual {p1, v4}, Lcom/google/protobuf/p;->p(I)V

    goto :goto_0

    :cond_7
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_8

    .line 30
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/u0$g;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Lcom/google/protobuf/u0$g;

    or-int/lit8 v2, v2, 0x1

    .line 31
    :cond_8
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Lcom/google/protobuf/u0$g;

    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/u0$g;->D0(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 32
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 33
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 34
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_a

    .line 35
    iget-object p2, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Lcom/google/protobuf/u0$g;

    invoke-interface {p2}, Lcom/google/protobuf/u0$j;->C()V

    .line 36
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 37
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 38
    throw p1

    :cond_b
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_c

    .line 39
    iget-object p1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Lcom/google/protobuf/u0$g;

    invoke-interface {p1}, Lcom/google/protobuf/u0$j;->C()V

    .line 40
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/protobuf/DescriptorProtos$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$29800(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/google/protobuf/u0$g;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Lcom/google/protobuf/u0$g;

    return-object p0
.end method

.method static synthetic access$29802(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Lcom/google/protobuf/u0$g;

    return-object p1
.end method

.method static synthetic access$29900(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$29902(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$30002(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin_:I

    return p1
.end method

.method static synthetic access$30102(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->end_:I

    return p1
.end method

.method static synthetic access$30202(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1

    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->M()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->toBuilder()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->toBuilder()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->g0(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getPathList()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getPathList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasSourceFile()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasSourceFile()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasSourceFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getSourceFile()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getSourceFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasBegin()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasBegin()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 11
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasBegin()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getBegin()I

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getBegin()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasEnd()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasEnd()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 15
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasEnd()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getEnd()I

    move-result v1

    .line 17
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getEnd()I

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    .line 18
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public getBegin()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->end_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPath(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Lcom/google/protobuf/u0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/u0$g;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getPathCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Lcom/google/protobuf/u0$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Lcom/google/protobuf/u0$g;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Lcom/google/protobuf/u0$g;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Lcom/google/protobuf/u0$g;

    .line 4
    invoke-interface {v3, v1}, Lcom/google/protobuf/u0$g;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->y(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getPathList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->y(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->pathMemoizedSerializedSize:I

    .line 8
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    .line 11
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin_:I

    .line 12
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_4
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 14
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->end_:I

    .line 15
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSourceFileBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasBegin()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEnd()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSourceFile()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getPathCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getPathList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasSourceFile()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getSourceFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasBegin()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getBegin()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasEnd()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getEnd()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    .line 11
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->N()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->newBuilder()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/protobuf/DescriptorProtos$a;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-direct {p1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;-><init>(Lcom/google/protobuf/DescriptorProtos$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;-><init>(Lcom/google/protobuf/DescriptorProtos$a;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->g0(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->toBuilder()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->toBuilder()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getSerializedSize()I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getPathList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    .line 4
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->pathMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Lcom/google/protobuf/u0$g;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Lcom/google/protobuf/u0$g;

    invoke-interface {v1, v0}, Lcom/google/protobuf/u0$g;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->I0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 9
    :cond_2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 10
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 11
    :cond_3
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 12
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->end_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
