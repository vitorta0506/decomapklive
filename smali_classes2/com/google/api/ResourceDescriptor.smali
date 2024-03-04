.class public final Lcom/google/api/ResourceDescriptor;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/ResourceDescriptor$c;,
        Lcom/google/api/ResourceDescriptor$Style;,
        Lcom/google/api/ResourceDescriptor$History;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

.field public static final HISTORY_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/api/ResourceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATTERN_FIELD_NUMBER:I = 0x2

.field public static final PLURAL_FIELD_NUMBER:I = 0x5

.field public static final SINGULAR_FIELD_NUMBER:I = 0x6

.field public static final STYLE_FIELD_NUMBER:I = 0xa

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J

.field private static final style_converter_:Lcom/google/protobuf/u0$h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u0$h$a<",
            "Ljava/lang/Integer;",
            "Lcom/google/api/ResourceDescriptor$Style;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private history_:I

.field private memoizedIsInitialized:B

.field private volatile nameField_:Ljava/lang/Object;

.field private pattern_:Lcom/google/protobuf/z0;

.field private volatile plural_:Ljava/lang/Object;

.field private volatile singular_:Ljava/lang/Object;

.field private styleMemoizedSerializedSize:I

.field private style_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile type_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/ResourceDescriptor$a;

    invoke-direct {v0}, Lcom/google/api/ResourceDescriptor$a;-><init>()V

    sput-object v0, Lcom/google/api/ResourceDescriptor;->style_converter_:Lcom/google/protobuf/u0$h$a;

    .line 2
    new-instance v0, Lcom/google/api/ResourceDescriptor;

    invoke-direct {v0}, Lcom/google/api/ResourceDescriptor;-><init>()V

    sput-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    .line 3
    new-instance v0, Lcom/google/api/ResourceDescriptor$b;

    invoke-direct {v0}, Lcom/google/api/ResourceDescriptor$b;-><init>()V

    sput-object v0, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/api/ResourceDescriptor;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/Object;

    .line 8
    sget-object v1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v1, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/z0;

    .line 9
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    .line 11
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/Object;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

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
    iput-byte p1, p0, Lcom/google/api/ResourceDescriptor;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/api/ResourceDescriptor$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;-><init>()V

    .line 15
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_10

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_d

    const/16 v5, 0xa

    if-eq v3, v5, :cond_c

    const/16 v5, 0x12

    if-eq v3, v5, :cond_a

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_9

    const/16 v5, 0x20

    if-eq v3, v5, :cond_8

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_7

    const/16 v5, 0x32

    if-eq v3, v5, :cond_6

    const/16 v5, 0x50

    if-eq v3, v5, :cond_4

    const/16 v5, 0x52

    if-eq v3, v5, :cond_1

    .line 18
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->D()I

    move-result v3

    .line 20
    invoke-virtual {p1, v3}, Lcom/google/protobuf/p;->q(I)I

    move-result v3

    .line 21
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v4

    if-lez v4, :cond_3

    .line 22
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_2

    .line 23
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 24
    :cond_2
    iget-object v5, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {p1, v3}, Lcom/google/protobuf/p;->p(I)V

    goto :goto_0

    .line 26
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_5

    .line 27
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 28
    :cond_5
    iget-object v4, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 30
    iput-object v3, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/Object;

    goto :goto_0

    .line 31
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 32
    iput-object v3, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 33
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v3

    .line 34
    iput v3, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    goto/16 :goto_0

    .line 35
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 36
    iput-object v3, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 37
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_b

    .line 38
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x1

    .line 39
    :cond_b
    iget-object v4, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 40
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 41
    iput-object v3, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_d
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 42
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 43
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_e

    .line 44
    iget-object p2, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/z0;

    :cond_e
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_f

    .line 45
    iget-object p2, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    .line 46
    :cond_f
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 47
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 48
    throw p1

    :cond_10
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_11

    .line 49
    iget-object p1, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/z0;

    :cond_11
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_12

    .line 50
    iget-object p1, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    .line 51
    :cond_12
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 52
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/api/ResourceDescriptor$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/api/ResourceDescriptor;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/ResourceDescriptor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/google/api/ResourceDescriptor;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/api/ResourceDescriptor;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800()Lcom/google/protobuf/u0$h$a;
    .locals 1

    sget-object v0, Lcom/google/api/ResourceDescriptor;->style_converter_:Lcom/google/protobuf/u0$h$a;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/api/ResourceDescriptor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/google/api/ResourceDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/api/ResourceDescriptor;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$502(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/api/ResourceDescriptor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/api/ResourceDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/api/ResourceDescriptor;)I
    .locals 0

    iget p0, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    return p0
.end method

.method static synthetic access$702(Lcom/google/api/ResourceDescriptor;I)I
    .locals 0

    iput p1, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    return p1
.end method

.method static synthetic access$800(Lcom/google/api/ResourceDescriptor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$802(Lcom/google/api/ResourceDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/api/ResourceDescriptor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$902(Lcom/google/api/ResourceDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/api/ResourceDescriptor;
    .locals 1

    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/api/c1;->d:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/ResourceDescriptor$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->toBuilder()Lcom/google/api/ResourceDescriptor$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/ResourceDescriptor;)Lcom/google/api/ResourceDescriptor$c;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->toBuilder()Lcom/google/api/ResourceDescriptor$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/api/ResourceDescriptor$c;->g0(Lcom/google/api/ResourceDescriptor;)Lcom/google/api/ResourceDescriptor$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/api/ResourceDescriptor;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lcom/google/api/ResourceDescriptor;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/api/ResourceDescriptor;

    .line 4
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/ResourceDescriptor;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getPatternList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/ResourceDescriptor;->getPatternList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getNameField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/ResourceDescriptor;->getNameField()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 7
    :cond_4
    iget v1, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    iget v3, p1, Lcom/google/api/ResourceDescriptor;->history_:I

    if-eq v1, v3, :cond_5

    return v2

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getPlural()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/ResourceDescriptor;->getPlural()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getSingular()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/ResourceDescriptor;->getSingular()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 10
    :cond_7
    iget-object v1, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    iget-object v3, p1, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 11
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

.method public getDefaultInstanceForType()Lcom/google/api/ResourceDescriptor;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getDefaultInstanceForType()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getDefaultInstanceForType()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getHistory()Lcom/google/api/ResourceDescriptor$History;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    .line 2
    invoke-static {v0}, Lcom/google/api/ResourceDescriptor$History;->valueOf(I)Lcom/google/api/ResourceDescriptor$History;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/api/ResourceDescriptor$History;->UNRECOGNIZED:Lcom/google/api/ResourceDescriptor$History;

    :cond_0
    return-object v0
.end method

.method public getHistoryValue()I
    .locals 1

    iget v0, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    return v0
.end method

.method public getNameField()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/Object;

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

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameFieldBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/api/ResourceDescriptor;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPattern(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPatternBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getPatternCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPatternList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getPatternList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getPatternList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getPlural()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/Object;

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

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPluralBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget-object v5, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/z0;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 5
    iget-object v5, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v3}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v4

    .line 6
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getPatternList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 7
    iget-object v1, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 8
    iget-object v3, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget v1, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    sget-object v3, Lcom/google/api/ResourceDescriptor$History;->HISTORY_UNSPECIFIED:Lcom/google/api/ResourceDescriptor$History;

    invoke-virtual {v3}, Lcom/google/api/ResourceDescriptor$History;->getNumber()I

    move-result v3

    if-eq v1, v3, :cond_4

    const/4 v1, 0x4

    .line 10
    iget v3, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 12
    iget-object v3, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    iget-object v1, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 14
    iget-object v3, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    const/4 v1, 0x0

    .line 15
    :goto_2
    iget-object v3, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 16
    iget-object v3, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->m(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    add-int/2addr v0, v1

    .line 17
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getStyleList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 18
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 19
    :cond_8
    iput v1, p0, Lcom/google/api/ResourceDescriptor;->styleMemoizedSerializedSize:I

    .line 20
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSingular()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/Object;

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

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSingularBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStyle(I)Lcom/google/api/ResourceDescriptor$Style;
    .locals 2

    sget-object v0, Lcom/google/api/ResourceDescriptor;->style_converter_:Lcom/google/protobuf/u0$h$a;

    iget-object v1, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/u0$h$a;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/ResourceDescriptor$Style;

    return-object p1
.end method

.method public getStyleCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStyleList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/ResourceDescriptor$Style;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/u0$h;

    iget-object v1, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    sget-object v2, Lcom/google/api/ResourceDescriptor;->style_converter_:Lcom/google/protobuf/u0$h$a;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/u0$h;-><init>(Ljava/util/List;Lcom/google/protobuf/u0$h$a;)V

    return-object v0
.end method

.method public getStyleValue(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getStyleValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/Object;

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

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/Object;

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

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lcom/google/api/ResourceDescriptor;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getPatternCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getPatternList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getNameField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 7
    iget v1, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getPlural()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getSingular()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getStyleCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 11
    iget-object v1, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 12
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/api/c1;->e:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/api/ResourceDescriptor;

    const-class v2, Lcom/google/api/ResourceDescriptor$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/api/ResourceDescriptor;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/api/ResourceDescriptor;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/api/ResourceDescriptor$c;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/api/ResourceDescriptor;->newBuilder()Lcom/google/api/ResourceDescriptor$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/api/ResourceDescriptor$c;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/api/ResourceDescriptor$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/api/ResourceDescriptor$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/api/ResourceDescriptor$a;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->newBuilderForType()Lcom/google/api/ResourceDescriptor$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/ResourceDescriptor;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/api/ResourceDescriptor$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->newBuilderForType()Lcom/google/api/ResourceDescriptor$c;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/api/ResourceDescriptor;

    invoke-direct {p1}, Lcom/google/api/ResourceDescriptor;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/api/ResourceDescriptor$c;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/api/ResourceDescriptor$c;

    invoke-direct {v0, v1}, Lcom/google/api/ResourceDescriptor$c;-><init>(Lcom/google/api/ResourceDescriptor$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/api/ResourceDescriptor$c;

    invoke-direct {v0, v1}, Lcom/google/api/ResourceDescriptor$c;-><init>(Lcom/google/api/ResourceDescriptor$a;)V

    invoke-virtual {v0, p0}, Lcom/google/api/ResourceDescriptor$c;->g0(Lcom/google/api/ResourceDescriptor;)Lcom/google/api/ResourceDescriptor$c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->toBuilder()Lcom/google/api/ResourceDescriptor$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->toBuilder()Lcom/google/api/ResourceDescriptor$c;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getSerializedSize()I

    .line 2
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/z0;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 5
    iget-object v3, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    .line 7
    iget-object v2, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 8
    :cond_2
    iget v1, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    sget-object v2, Lcom/google/api/ResourceDescriptor$History;->HISTORY_UNSPECIFIED:Lcom/google/api/ResourceDescriptor$History;

    invoke-virtual {v2}, Lcom/google/api/ResourceDescriptor$History;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x4

    .line 9
    iget v2, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x5

    .line 11
    iget-object v2, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    .line 13
    iget-object v2, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 14
    :cond_5
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor;->getStyleList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/16 v1, 0x52

    .line 15
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    .line 16
    iget v1, p0, Lcom/google/api/ResourceDescriptor;->styleMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    .line 17
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 18
    iget-object v1, p0, Lcom/google/api/ResourceDescriptor;->style_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->w0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
