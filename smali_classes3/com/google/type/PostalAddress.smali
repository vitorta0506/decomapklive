.class public final Lcom/google/type/PostalAddress;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/PostalAddress$b;
    }
.end annotation


# static fields
.field public static final ADDRESS_LINES_FIELD_NUMBER:I = 0x9

.field public static final ADMINISTRATIVE_AREA_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

.field public static final LANGUAGE_CODE_FIELD_NUMBER:I = 0x3

.field public static final LOCALITY_FIELD_NUMBER:I = 0x7

.field public static final ORGANIZATION_FIELD_NUMBER:I = 0xb

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/type/PostalAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSTAL_CODE_FIELD_NUMBER:I = 0x4

.field public static final RECIPIENTS_FIELD_NUMBER:I = 0xa

.field public static final REGION_CODE_FIELD_NUMBER:I = 0x2

.field public static final REVISION_FIELD_NUMBER:I = 0x1

.field public static final SORTING_CODE_FIELD_NUMBER:I = 0x5

.field public static final SUBLOCALITY_FIELD_NUMBER:I = 0x8

.field private static final serialVersionUID:J


# instance fields
.field private addressLines_:Lcom/google/protobuf/z0;

.field private volatile administrativeArea_:Ljava/lang/Object;

.field private volatile languageCode_:Ljava/lang/Object;

.field private volatile locality_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile organization_:Ljava/lang/Object;

.field private volatile postalCode_:Ljava/lang/Object;

.field private recipients_:Lcom/google/protobuf/z0;

.field private volatile regionCode_:Ljava/lang/Object;

.field private revision_:I

.field private volatile sortingCode_:Ljava/lang/Object;

.field private volatile sublocality_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/type/PostalAddress;

    invoke-direct {v0}, Lcom/google/type/PostalAddress;-><init>()V

    sput-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    .line 2
    new-instance v0, Lcom/google/type/PostalAddress$a;

    invoke-direct {v0}, Lcom/google/type/PostalAddress$a;-><init>()V

    sput-object v0, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/type/PostalAddress;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/google/type/PostalAddress;->regionCode_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/google/type/PostalAddress;->languageCode_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/google/type/PostalAddress;->postalCode_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/google/type/PostalAddress;->sortingCode_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/google/type/PostalAddress;->administrativeArea_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/google/type/PostalAddress;->locality_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/google/type/PostalAddress;->sublocality_:Ljava/lang/Object;

    .line 14
    sget-object v1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v1, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/z0;

    .line 15
    iput-object v1, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/z0;

    .line 16
    iput-object v0, p0, Lcom/google/type/PostalAddress;->organization_:Ljava/lang/Object;

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
    iput-byte p1, p0, Lcom/google/type/PostalAddress;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/type/PostalAddress$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/google/type/PostalAddress;-><init>()V

    .line 18
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 21
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    goto/16 :goto_2

    .line 22
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 23
    iput-object v3, p0, Lcom/google/type/PostalAddress;->organization_:Ljava/lang/Object;

    goto :goto_0

    .line 24
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_1

    .line 25
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x2

    .line 26
    :cond_1
    iget-object v4, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_2

    .line 28
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x1

    .line 29
    :cond_2
    iget-object v4, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 31
    iput-object v3, p0, Lcom/google/type/PostalAddress;->sublocality_:Ljava/lang/Object;

    goto :goto_0

    .line 32
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 33
    iput-object v3, p0, Lcom/google/type/PostalAddress;->locality_:Ljava/lang/Object;

    goto :goto_0

    .line 34
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 35
    iput-object v3, p0, Lcom/google/type/PostalAddress;->administrativeArea_:Ljava/lang/Object;

    goto :goto_0

    .line 36
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 37
    iput-object v3, p0, Lcom/google/type/PostalAddress;->sortingCode_:Ljava/lang/Object;

    goto :goto_0

    .line 38
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 39
    iput-object v3, p0, Lcom/google/type/PostalAddress;->postalCode_:Ljava/lang/Object;

    goto :goto_0

    .line 40
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 41
    iput-object v3, p0, Lcom/google/type/PostalAddress;->languageCode_:Ljava/lang/Object;

    goto :goto_0

    .line 42
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 43
    iput-object v3, p0, Lcom/google/type/PostalAddress;->regionCode_:Ljava/lang/Object;

    goto :goto_0

    .line 44
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v3

    iput v3, p0, Lcom/google/type/PostalAddress;->revision_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :sswitch_b
    const/4 v1, 0x1

    goto :goto_0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 45
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 46
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_3

    .line 47
    iget-object p2, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/z0;

    :cond_3
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_4

    .line 48
    iget-object p2, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/z0;

    .line 49
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 50
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 51
    throw p1

    :cond_5
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_6

    .line 52
    iget-object p1, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/z0;

    :cond_6
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_7

    .line 53
    iget-object p1, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/z0;

    .line 54
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 55
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0x12 -> :sswitch_9
        0x1a -> :sswitch_8
        0x22 -> :sswitch_7
        0x2a -> :sswitch_6
        0x32 -> :sswitch_5
        0x3a -> :sswitch_4
        0x42 -> :sswitch_3
        0x4a -> :sswitch_2
        0x52 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/type/PostalAddress$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/type/PostalAddress;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/type/PostalAddress;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/type/PostalAddress;->locality_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/google/type/PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/type/PostalAddress;->locality_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/type/PostalAddress;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/type/PostalAddress;->sublocality_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/google/type/PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/type/PostalAddress;->sublocality_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/type/PostalAddress;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/google/type/PostalAddress;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/type/PostalAddress;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/google/type/PostalAddress;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/type/PostalAddress;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/type/PostalAddress;->organization_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/google/type/PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/type/PostalAddress;->organization_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/type/PostalAddress;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1600()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
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

.method static synthetic access$1800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$402(Lcom/google/type/PostalAddress;I)I
    .locals 0

    iput p1, p0, Lcom/google/type/PostalAddress;->revision_:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/type/PostalAddress;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/type/PostalAddress;->regionCode_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lcom/google/type/PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/type/PostalAddress;->regionCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/type/PostalAddress;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/type/PostalAddress;->languageCode_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/type/PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/type/PostalAddress;->languageCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/type/PostalAddress;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/type/PostalAddress;->postalCode_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/google/type/PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/type/PostalAddress;->postalCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/type/PostalAddress;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/type/PostalAddress;->sortingCode_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$802(Lcom/google/type/PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/type/PostalAddress;->sortingCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/type/PostalAddress;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/type/PostalAddress;->administrativeArea_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$902(Lcom/google/type/PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/type/PostalAddress;->administrativeArea_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/type/PostalAddress;
    .locals 1

    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/type/p;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/type/PostalAddress$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->toBuilder()Lcom/google/type/PostalAddress$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/type/PostalAddress;)Lcom/google/type/PostalAddress$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->toBuilder()Lcom/google/type/PostalAddress$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/type/PostalAddress$b;->i0(Lcom/google/type/PostalAddress;)Lcom/google/type/PostalAddress$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/type/PostalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/type/PostalAddress;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/type/PostalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/type/PostalAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/type/PostalAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/type/PostalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/type/PostalAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/type/PostalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/type/PostalAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/type/PostalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/type/PostalAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/type/PostalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/type/PostalAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/type/PostalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/type/PostalAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/type/PostalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/type/PostalAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/type/PostalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/type/PostalAddress;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/type/PostalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/type/PostalAddress;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/type/PostalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/type/PostalAddress;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/type/PostalAddress;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lcom/google/type/PostalAddress;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/type/PostalAddress;

    .line 4
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getRevision()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getRevision()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getRegionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getRegionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getSortingCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getSortingCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 10
    :cond_7
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 11
    :cond_8
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getSublocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getSublocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getAddressLinesList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getAddressLinesList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 13
    :cond_a
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getRecipientsList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getRecipientsList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 14
    :cond_b
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getOrganization()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getOrganization()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 15
    :cond_c
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return v3

    :cond_d
    return v0
.end method

.method public getAddressLines(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAddressLinesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAddressLinesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddressLinesList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getAddressLinesList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getAddressLinesList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getAdministrativeArea()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/type/PostalAddress;->administrativeArea_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/type/PostalAddress;->administrativeArea_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAdministrativeAreaBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/type/PostalAddress;->administrativeArea_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/type/PostalAddress;->administrativeArea_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getDefaultInstanceForType()Lcom/google/type/PostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getDefaultInstanceForType()Lcom/google/type/PostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/type/PostalAddress;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/type/PostalAddress;->languageCode_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/type/PostalAddress;->languageCode_:Ljava/lang/Object;

    return-object v0
.end method

.method public getLanguageCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/type/PostalAddress;->languageCode_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/type/PostalAddress;->languageCode_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/type/PostalAddress;->locality_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/type/PostalAddress;->locality_:Ljava/lang/Object;

    return-object v0
.end method

.method public getLocalityBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/type/PostalAddress;->locality_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/type/PostalAddress;->locality_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/type/PostalAddress;->organization_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/type/PostalAddress;->organization_:Ljava/lang/Object;

    return-object v0
.end method

.method public getOrganizationBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/type/PostalAddress;->organization_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/type/PostalAddress;->organization_:Ljava/lang/Object;

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
            "Lcom/google/type/PostalAddress;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/type/PostalAddress;->postalCode_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/type/PostalAddress;->postalCode_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPostalCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/type/PostalAddress;->postalCode_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/type/PostalAddress;->postalCode_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRecipients(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRecipientsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getRecipientsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientsList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getRecipientsList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getRecipientsList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCode()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/type/PostalAddress;->regionCode_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/type/PostalAddress;->regionCode_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRegionCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/type/PostalAddress;->regionCode_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/type/PostalAddress;->regionCode_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRevision()I
    .locals 1

    iget v0, p0, Lcom/google/type/PostalAddress;->revision_:I

    return v0
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
    iget v0, p0, Lcom/google/type/PostalAddress;->revision_:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/google/type/PostalAddress;->regionCode_:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    .line 5
    iget-object v4, p0, Lcom/google/type/PostalAddress;->regionCode_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 6
    :cond_2
    iget-object v3, p0, Lcom/google/type/PostalAddress;->languageCode_:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    .line 7
    iget-object v4, p0, Lcom/google/type/PostalAddress;->languageCode_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 8
    :cond_3
    iget-object v3, p0, Lcom/google/type/PostalAddress;->postalCode_:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x4

    .line 9
    iget-object v4, p0, Lcom/google/type/PostalAddress;->postalCode_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 10
    :cond_4
    iget-object v3, p0, Lcom/google/type/PostalAddress;->sortingCode_:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x5

    .line 11
    iget-object v4, p0, Lcom/google/type/PostalAddress;->sortingCode_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 12
    :cond_5
    iget-object v3, p0, Lcom/google/type/PostalAddress;->administrativeArea_:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x6

    .line 13
    iget-object v4, p0, Lcom/google/type/PostalAddress;->administrativeArea_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 14
    :cond_6
    iget-object v3, p0, Lcom/google/type/PostalAddress;->locality_:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x7

    .line 15
    iget-object v4, p0, Lcom/google/type/PostalAddress;->locality_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 16
    :cond_7
    iget-object v3, p0, Lcom/google/type/PostalAddress;->sublocality_:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0x8

    .line 17
    iget-object v4, p0, Lcom/google/type/PostalAddress;->sublocality_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_8
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 18
    :goto_1
    iget-object v5, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/z0;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_9

    .line 19
    iget-object v5, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v3}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    add-int/2addr v0, v4

    .line 20
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getAddressLinesList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    .line 21
    :goto_2
    iget-object v4, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/z0;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 22
    iget-object v4, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v2}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    add-int/2addr v0, v3

    .line 23
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getRecipientsList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 24
    iget-object v1, p0, Lcom/google/type/PostalAddress;->organization_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xb

    .line 25
    iget-object v2, p0, Lcom/google/type/PostalAddress;->organization_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_b
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSortingCode()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/type/PostalAddress;->sortingCode_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/type/PostalAddress;->sortingCode_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSortingCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/type/PostalAddress;->sortingCode_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/type/PostalAddress;->sortingCode_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSublocality()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/type/PostalAddress;->sublocality_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/type/PostalAddress;->sublocality_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSublocalityBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/type/PostalAddress;->sublocality_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/type/PostalAddress;->sublocality_:Ljava/lang/Object;

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
    invoke-static {}, Lcom/google/type/PostalAddress;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getRevision()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getRegionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getSortingCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getSublocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getAddressLinesCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getAddressLinesList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getRecipientsCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getRecipientsList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->getOrganization()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 16
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/type/p;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/type/PostalAddress;

    const-class v2, Lcom/google/type/PostalAddress$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/type/PostalAddress;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/type/PostalAddress;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->newBuilderForType()Lcom/google/type/PostalAddress$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/type/PostalAddress;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/type/PostalAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->newBuilderForType()Lcom/google/type/PostalAddress$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/type/PostalAddress$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/type/PostalAddress;->newBuilder()Lcom/google/type/PostalAddress$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/type/PostalAddress$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/type/PostalAddress$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/type/PostalAddress$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/type/PostalAddress$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/type/PostalAddress;

    invoke-direct {p1}, Lcom/google/type/PostalAddress;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->toBuilder()Lcom/google/type/PostalAddress$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/type/PostalAddress;->toBuilder()Lcom/google/type/PostalAddress$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/type/PostalAddress$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/type/PostalAddress$b;

    invoke-direct {v0, v1}, Lcom/google/type/PostalAddress$b;-><init>(Lcom/google/type/PostalAddress$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/type/PostalAddress$b;

    invoke-direct {v0, v1}, Lcom/google/type/PostalAddress$b;-><init>(Lcom/google/type/PostalAddress$a;)V

    invoke-virtual {v0, p0}, Lcom/google/type/PostalAddress$b;->i0(Lcom/google/type/PostalAddress;)Lcom/google/type/PostalAddress$b;

    move-result-object v0

    :goto_0
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
    iget v0, p0, Lcom/google/type/PostalAddress;->revision_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/type/PostalAddress;->regionCode_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lcom/google/type/PostalAddress;->regionCode_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/type/PostalAddress;->languageCode_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 6
    iget-object v1, p0, Lcom/google/type/PostalAddress;->languageCode_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/type/PostalAddress;->postalCode_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 8
    iget-object v1, p0, Lcom/google/type/PostalAddress;->postalCode_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/type/PostalAddress;->sortingCode_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 10
    iget-object v1, p0, Lcom/google/type/PostalAddress;->sortingCode_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/google/type/PostalAddress;->administrativeArea_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 12
    iget-object v1, p0, Lcom/google/type/PostalAddress;->administrativeArea_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/google/type/PostalAddress;->locality_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 14
    iget-object v1, p0, Lcom/google/type/PostalAddress;->locality_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/type/PostalAddress;->sublocality_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 16
    iget-object v1, p0, Lcom/google/type/PostalAddress;->sublocality_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/z0;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    const/16 v2, 0x9

    .line 18
    iget-object v3, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    const/16 v1, 0xa

    .line 20
    iget-object v2, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/z0;

    invoke-interface {v2, v0}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/google/type/PostalAddress;->organization_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    .line 22
    iget-object v1, p0, Lcom/google/type/PostalAddress;->organization_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
