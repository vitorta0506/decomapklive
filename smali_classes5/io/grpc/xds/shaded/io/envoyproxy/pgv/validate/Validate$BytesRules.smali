.class public final Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BytesRules"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;,
        Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;
    }
.end annotation


# static fields
.field public static final CONST_FIELD_NUMBER:I = 0x1

.field public static final CONTAINS_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

.field public static final IN_FIELD_NUMBER:I = 0x8

.field public static final IPV4_FIELD_NUMBER:I = 0xb

.field public static final IPV6_FIELD_NUMBER:I = 0xc

.field public static final IP_FIELD_NUMBER:I = 0xa

.field public static final LEN_FIELD_NUMBER:I = 0xd

.field public static final MAX_LEN_FIELD_NUMBER:I = 0x3

.field public static final MIN_LEN_FIELD_NUMBER:I = 0x2

.field public static final NOT_IN_FIELD_NUMBER:I = 0x9

.field public static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PATTERN_FIELD_NUMBER:I = 0x4

.field public static final PREFIX_FIELD_NUMBER:I = 0x5

.field public static final SUFFIX_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private const_:Lcom/google/protobuf/ByteString;

.field private contains_:Lcom/google/protobuf/ByteString;

.field private in_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private len_:J

.field private maxLen_:J

.field private memoizedIsInitialized:B

.field private minLen_:J

.field private notIn_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private volatile pattern_:Ljava/lang/Object;

.field private prefix_:Lcom/google/protobuf/ByteString;

.field private suffix_:Lcom/google/protobuf/ByteString;

.field private wellKnownCase_:I

.field private wellKnown_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->memoizedIsInitialized:B

    .line 9
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->const_:Lcom/google/protobuf/ByteString;

    const-string v1, ""

    .line 10
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->pattern_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->prefix_:Lcom/google/protobuf/ByteString;

    .line 12
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->suffix_:Lcom/google/protobuf/ByteString;

    .line 13
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->contains_:Lcom/google/protobuf/ByteString;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->in_:Ljava/util/List;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->notIn_:Ljava/util/List;

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

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;-><init>()V

    .line 17
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 19
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 20
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    goto/16 :goto_2

    .line 21
    :sswitch_0
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    .line 22
    invoke-virtual {p1}, Lcom/google/protobuf/p;->N()J

    move-result-wide v3

    iput-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->len_:J

    goto :goto_0

    .line 23
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnown_:Ljava/lang/Object;

    const/16 v3, 0xc

    .line 24
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    goto :goto_0

    .line 25
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnown_:Ljava/lang/Object;

    const/16 v3, 0xb

    .line 26
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    goto :goto_0

    .line 27
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnown_:Ljava/lang/Object;

    const/16 v3, 0xa

    .line 28
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    goto :goto_0

    :sswitch_4
    and-int/lit16 v3, v2, 0x200

    if-nez v3, :cond_1

    .line 29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->notIn_:Ljava/util/List;

    or-int/lit16 v2, v2, 0x200

    .line 30
    :cond_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->notIn_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_5
    and-int/lit16 v3, v2, 0x100

    if-nez v3, :cond_2

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->in_:Ljava/util/List;

    or-int/lit16 v2, v2, 0x100

    .line 32
    :cond_2
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->in_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :sswitch_6
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    .line 34
    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->contains_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 35
    :sswitch_7
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    .line 36
    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->suffix_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 37
    :sswitch_8
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    .line 38
    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->prefix_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 39
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 40
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    .line 41
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->pattern_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 42
    :sswitch_a
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    .line 43
    invoke-virtual {p1}, Lcom/google/protobuf/p;->N()J

    move-result-wide v3

    iput-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->maxLen_:J

    goto/16 :goto_0

    .line 44
    :sswitch_b
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    .line 45
    invoke-virtual {p1}, Lcom/google/protobuf/p;->N()J

    move-result-wide v3

    iput-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->minLen_:J

    goto/16 :goto_0

    .line 46
    :sswitch_c
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    .line 47
    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->const_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_d
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 48
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 49
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 50
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit16 p2, v2, 0x100

    if-eqz p2, :cond_3

    .line 51
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->in_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->in_:Ljava/util/List;

    :cond_3
    and-int/lit16 p2, v2, 0x200

    if-eqz p2, :cond_4

    .line 52
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->notIn_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->notIn_:Ljava/util/List;

    .line 53
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 54
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_5
    and-int/lit16 p1, v2, 0x100

    if-eqz p1, :cond_6

    .line 55
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->in_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->in_:Ljava/util/List;

    :cond_6
    and-int/lit16 p1, v2, 0x200

    if-eqz p1, :cond_7

    .line 56
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->notIn_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->notIn_:Ljava/util/List;

    .line 57
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 58
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_c
        0x10 -> :sswitch_b
        0x18 -> :sswitch_a
        0x22 -> :sswitch_9
        0x2a -> :sswitch_8
        0x32 -> :sswitch_7
        0x3a -> :sswitch_6
        0x42 -> :sswitch_5
        0x4a -> :sswitch_4
        0x50 -> :sswitch_3
        0x58 -> :sswitch_2
        0x60 -> :sswitch_1
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$34000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$34202(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->const_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$34302(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->len_:J

    return-wide p1
.end method

.method static synthetic access$34402(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->minLen_:J

    return-wide p1
.end method

.method static synthetic access$34502(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->maxLen_:J

    return-wide p1
.end method

.method static synthetic access$34600(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->pattern_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$34602(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->pattern_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34702(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->prefix_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$34802(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->suffix_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$34902(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->contains_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$35000(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->in_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$35002(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->in_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$35100(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->notIn_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$35102(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->notIn_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$35202(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnown_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$35302(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    return p1
.end method

.method static synthetic access$35402(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    return p1
.end method

.method static synthetic access$35500(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->y()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasConst()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasConst()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasConst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getConst()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getConst()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasLen()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasLen()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasLen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getLen()J

    move-result-wide v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getLen()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasMinLen()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasMinLen()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 13
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasMinLen()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getMinLen()J

    move-result-wide v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getMinLen()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasMaxLen()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasMaxLen()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasMaxLen()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getMaxLen()J

    move-result-wide v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getMaxLen()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasPattern()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasPattern()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 21
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasPattern()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getPattern()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 24
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasPrefix()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasPrefix()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 25
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasPrefix()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getPrefix()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getPrefix()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 28
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasSuffix()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasSuffix()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 29
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasSuffix()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getSuffix()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getSuffix()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 32
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasContains()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasContains()Z

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    .line 33
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasContains()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getContains()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getContains()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    .line 36
    :cond_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getInList()Ljava/util/List;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getInList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v3

    .line 38
    :cond_12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getNotInList()Ljava/util/List;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getNotInList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v3

    .line 40
    :cond_13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getWellKnownCase()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getWellKnownCase()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v3

    .line 41
    :cond_14
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 42
    :pswitch_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getIpv6()Z

    move-result v1

    .line 43
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getIpv6()Z

    move-result v2

    if-eq v1, v2, :cond_15

    return v3

    .line 44
    :pswitch_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getIpv4()Z

    move-result v1

    .line 45
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getIpv4()Z

    move-result v2

    if-eq v1, v2, :cond_15

    return v3

    .line 46
    :pswitch_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getIp()Z

    move-result v1

    .line 47
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getIp()Z

    move-result v2

    if-eq v1, v2, :cond_15

    return v3

    .line 48
    :cond_15
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v3

    :cond_16
    return v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getConst()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->const_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getContains()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->contains_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    return-object v0
.end method

.method public getIn(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->in_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getInCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->in_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->in_:Ljava/util/List;

    return-object v0
.end method

.method public getIp()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIpv4()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIpv6()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLen()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->len_:J

    return-wide v0
.end method

.method public getMaxLen()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->maxLen_:J

    return-wide v0
.end method

.method public getMinLen()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->minLen_:J

    return-wide v0
.end method

.method public getNotIn(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->notIn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getNotInCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->notIn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNotInList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->notIn_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->pattern_:Ljava/lang/Object;

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
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->pattern_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getPatternBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->pattern_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->pattern_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPrefix()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->prefix_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->const_:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->h(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    const/4 v5, 0x2

    if-eqz v3, :cond_2

    .line 6
    iget-wide v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->minLen_:J

    .line 7
    invoke-static {v5, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 8
    :cond_2
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 9
    iget-wide v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->maxLen_:J

    .line 10
    invoke-static {v3, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 11
    :cond_3
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    .line 12
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->pattern_:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 13
    :cond_4
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    .line 14
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->prefix_:Lcom/google/protobuf/ByteString;

    .line 15
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->h(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    .line 16
    :cond_5
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    .line 17
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->suffix_:Lcom/google/protobuf/ByteString;

    .line 18
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->h(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    .line 19
    :cond_6
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_7

    const/4 v3, 0x7

    .line 20
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->contains_:Lcom/google/protobuf/ByteString;

    .line 21
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->h(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 22
    :goto_1
    iget-object v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->in_:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_8

    .line 23
    iget-object v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->in_:Ljava/util/List;

    .line 24
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->i(Lcom/google/protobuf/ByteString;)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    add-int/2addr v0, v4

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getInList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    .line 26
    :goto_2
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->notIn_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 27
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->notIn_:Ljava/util/List;

    .line 28
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->i(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    add-int/2addr v0, v3

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getNotInList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 30
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    .line 31
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnown_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 33
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_a
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_b

    .line 35
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnown_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 37
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_b
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_c

    .line 39
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnown_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 40
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 41
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_c
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_d

    const/16 v1, 0xd

    .line 43
    iget-wide v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->len_:J

    .line 44
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_d
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSuffix()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->suffix_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getWellKnownCase()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    move-result-object v0

    return-object v0
.end method

.method public hasConst()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasContains()Z
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIp()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIpv4()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIpv6()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLen()Z
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxLen()Z
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMinLen()Z
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPattern()Z
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrefix()Z
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSuffix()Z
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasConst()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getConst()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasLen()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getLen()J

    move-result-wide v1

    .line 7
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasMinLen()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getMinLen()J

    move-result-wide v1

    .line 10
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasMaxLen()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getMaxLen()J

    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasPattern()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasPrefix()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getPrefix()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasSuffix()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getSuffix()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasContains()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getContains()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getInCount()I

    move-result v1

    if-lez v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getInList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getNotInCount()I

    move-result v1

    if-lez v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getNotInList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_a
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getIpv6()Z

    move-result v1

    .line 28
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    goto :goto_0

    :pswitch_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getIpv4()Z

    move-result v1

    .line 30
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    goto :goto_0

    :pswitch_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 31
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getIp()Z

    move-result v1

    .line 32
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 33
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->z()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->const_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->r0(ILcom/google/protobuf/ByteString;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 4
    iget-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->minLen_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    iget-wide v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->maxLen_:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->pattern_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->prefix_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->r0(ILcom/google/protobuf/ByteString;)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->suffix_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->r0(ILcom/google/protobuf/ByteString;)V

    .line 13
    :cond_5
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 14
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->contains_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->r0(ILcom/google/protobuf/ByteString;)V

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15
    :goto_0
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->in_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 16
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->in_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->r0(ILcom/google/protobuf/ByteString;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_7
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->notIn_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    const/16 v1, 0x9

    .line 18
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->notIn_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v3}, Lcom/google/protobuf/CodedOutputStream;->r0(ILcom/google/protobuf/ByteString;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 19
    :cond_8
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    .line 20
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 23
    :cond_9
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    .line 24
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 27
    :cond_a
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnownCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_b

    .line 28
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 31
    :cond_b
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->bitField0_:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    .line 32
    iget-wide v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->len_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    .line 33
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
