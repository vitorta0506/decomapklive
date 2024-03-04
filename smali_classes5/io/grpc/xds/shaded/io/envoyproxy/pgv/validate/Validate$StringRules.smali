.class public final Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringRules"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;,
        Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x15

.field public static final CONST_FIELD_NUMBER:I = 0x1

.field public static final CONTAINS_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

.field public static final EMAIL_FIELD_NUMBER:I = 0xc

.field public static final HOSTNAME_FIELD_NUMBER:I = 0xd

.field public static final IN_FIELD_NUMBER:I = 0xa

.field public static final IPV4_FIELD_NUMBER:I = 0xf

.field public static final IPV6_FIELD_NUMBER:I = 0x10

.field public static final IP_FIELD_NUMBER:I = 0xe

.field public static final LEN_BYTES_FIELD_NUMBER:I = 0x14

.field public static final LEN_FIELD_NUMBER:I = 0x13

.field public static final MAX_BYTES_FIELD_NUMBER:I = 0x5

.field public static final MAX_LEN_FIELD_NUMBER:I = 0x3

.field public static final MIN_BYTES_FIELD_NUMBER:I = 0x4

.field public static final MIN_LEN_FIELD_NUMBER:I = 0x2

.field public static final NOT_CONTAINS_FIELD_NUMBER:I = 0x17

.field public static final NOT_IN_FIELD_NUMBER:I = 0xb

.field public static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PATTERN_FIELD_NUMBER:I = 0x6

.field public static final PREFIX_FIELD_NUMBER:I = 0x7

.field public static final STRICT_FIELD_NUMBER:I = 0x19

.field public static final SUFFIX_FIELD_NUMBER:I = 0x8

.field public static final URI_FIELD_NUMBER:I = 0x11

.field public static final URI_REF_FIELD_NUMBER:I = 0x12

.field public static final UUID_FIELD_NUMBER:I = 0x16

.field public static final WELL_KNOWN_REGEX_FIELD_NUMBER:I = 0x18

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile const_:Ljava/lang/Object;

.field private volatile contains_:Ljava/lang/Object;

.field private in_:Lcom/google/protobuf/z0;

.field private lenBytes_:J

.field private len_:J

.field private maxBytes_:J

.field private maxLen_:J

.field private memoizedIsInitialized:B

.field private minBytes_:J

.field private minLen_:J

.field private volatile notContains_:Ljava/lang/Object;

.field private notIn_:Lcom/google/protobuf/z0;

.field private volatile pattern_:Ljava/lang/Object;

.field private volatile prefix_:Ljava/lang/Object;

.field private strict_:Z

.field private volatile suffix_:Ljava/lang/Object;

.field private wellKnownCase_:I

.field private wellKnown_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->memoizedIsInitialized:B

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->const_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->pattern_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->prefix_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->suffix_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->contains_:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notContains_:Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->in_:Lcom/google/protobuf/z0;

    .line 16
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notIn_:Lcom/google/protobuf/z0;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->strict_:Z

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;-><init>()V

    .line 19
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/16 v4, 0x10

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 22
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    goto/16 :goto_2

    .line 23
    :sswitch_0
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    const/high16 v4, 0x400000

    or-int/2addr v3, v4

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    .line 24
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    iput-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->strict_:Z

    goto :goto_0

    .line 25
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v3

    .line 26
    invoke-static {v3}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$KnownRegex;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$KnownRegex;

    move-result-object v4

    const/16 v5, 0x18

    if-nez v4, :cond_1

    .line 27
    invoke-virtual {v0, v5, v3}, Lcom/google/protobuf/h3$b;->r(II)Lcom/google/protobuf/h3$b;

    goto :goto_0

    .line 28
    :cond_1
    iput v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    goto :goto_0

    .line 30
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 31
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    .line 32
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notContains_:Ljava/lang/Object;

    goto :goto_0

    .line 33
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    const/16 v3, 0x16

    .line 34
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    goto :goto_0

    .line 35
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    const/16 v3, 0x15

    .line 36
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    goto :goto_0

    .line 37
    :sswitch_5
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    .line 38
    invoke-virtual {p1}, Lcom/google/protobuf/p;->N()J

    move-result-wide v3

    iput-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->lenBytes_:J

    goto :goto_0

    .line 39
    :sswitch_6
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    .line 40
    invoke-virtual {p1}, Lcom/google/protobuf/p;->N()J

    move-result-wide v3

    iput-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->len_:J

    goto :goto_0

    .line 41
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    const/16 v3, 0x12

    .line 42
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    goto/16 :goto_0

    .line 43
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    const/16 v3, 0x11

    .line 44
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    goto/16 :goto_0

    .line 45
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    .line 46
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    goto/16 :goto_0

    .line 47
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    const/16 v3, 0xf

    .line 48
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    goto/16 :goto_0

    .line 49
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    const/16 v3, 0xe

    .line 50
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    goto/16 :goto_0

    .line 51
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    const/16 v3, 0xd

    .line 52
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    goto/16 :goto_0

    .line 53
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    const/16 v3, 0xc

    .line 54
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    goto/16 :goto_0

    .line 55
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v3

    and-int/lit16 v4, v2, 0x2000

    if-nez v4, :cond_2

    .line 56
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notIn_:Lcom/google/protobuf/z0;

    or-int/lit16 v2, v2, 0x2000

    .line 57
    :cond_2
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notIn_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Lcom/google/protobuf/z0;->X(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 58
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v3

    and-int/lit16 v4, v2, 0x1000

    if-nez v4, :cond_3

    .line 59
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->in_:Lcom/google/protobuf/z0;

    or-int/lit16 v2, v2, 0x1000

    .line 60
    :cond_3
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->in_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Lcom/google/protobuf/z0;->X(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 61
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 62
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    .line 63
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->contains_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 64
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 65
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    .line 66
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->suffix_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 67
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 68
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    .line 69
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->prefix_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 70
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 71
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    .line 72
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->pattern_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 73
    :sswitch_14
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    .line 74
    invoke-virtual {p1}, Lcom/google/protobuf/p;->N()J

    move-result-wide v3

    iput-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->maxBytes_:J

    goto/16 :goto_0

    .line 75
    :sswitch_15
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    .line 76
    invoke-virtual {p1}, Lcom/google/protobuf/p;->N()J

    move-result-wide v3

    iput-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->minBytes_:J

    goto/16 :goto_0

    .line 77
    :sswitch_16
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    .line 78
    invoke-virtual {p1}, Lcom/google/protobuf/p;->N()J

    move-result-wide v3

    iput-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->maxLen_:J

    goto/16 :goto_0

    .line 79
    :sswitch_17
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    .line 80
    invoke-virtual {p1}, Lcom/google/protobuf/p;->N()J

    move-result-wide v3

    iput-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->minLen_:J

    goto/16 :goto_0

    .line 81
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 82
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    .line 83
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->const_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_19
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

    .line 84
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 85
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 86
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit16 p2, v2, 0x1000

    if-eqz p2, :cond_4

    .line 87
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->in_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->in_:Lcom/google/protobuf/z0;

    :cond_4
    and-int/lit16 p2, v2, 0x2000

    if-eqz p2, :cond_5

    .line 88
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notIn_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notIn_:Lcom/google/protobuf/z0;

    .line 89
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 90
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_6
    and-int/lit16 p1, v2, 0x1000

    if-eqz p1, :cond_7

    .line 91
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->in_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->in_:Lcom/google/protobuf/z0;

    :cond_7
    and-int/lit16 p1, v2, 0x2000

    if-eqz p1, :cond_8

    .line 92
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notIn_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notIn_:Lcom/google/protobuf/z0;

    .line 93
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 94
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_19
        0xa -> :sswitch_18
        0x10 -> :sswitch_17
        0x18 -> :sswitch_16
        0x20 -> :sswitch_15
        0x28 -> :sswitch_14
        0x32 -> :sswitch_13
        0x3a -> :sswitch_12
        0x42 -> :sswitch_11
        0x4a -> :sswitch_10
        0x52 -> :sswitch_f
        0x5a -> :sswitch_e
        0x60 -> :sswitch_d
        0x68 -> :sswitch_c
        0x70 -> :sswitch_b
        0x78 -> :sswitch_a
        0x80 -> :sswitch_9
        0x88 -> :sswitch_8
        0x90 -> :sswitch_7
        0x98 -> :sswitch_6
        0xa0 -> :sswitch_5
        0xa8 -> :sswitch_4
        0xb0 -> :sswitch_3
        0xba -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc8 -> :sswitch_0
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
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$31400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$31600(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->const_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$31602(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->const_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$31702(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->len_:J

    return-wide p1
.end method

.method static synthetic access$31802(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->minLen_:J

    return-wide p1
.end method

.method static synthetic access$31902(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->maxLen_:J

    return-wide p1
.end method

.method static synthetic access$32002(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->lenBytes_:J

    return-wide p1
.end method

.method static synthetic access$32102(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->minBytes_:J

    return-wide p1
.end method

.method static synthetic access$32202(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->maxBytes_:J

    return-wide p1
.end method

.method static synthetic access$32300(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->pattern_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$32302(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->pattern_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32400(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->prefix_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$32402(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->prefix_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32500(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->suffix_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$32502(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->suffix_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32600(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->contains_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$32602(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->contains_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32700(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notContains_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$32702(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notContains_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32800(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->in_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$32802(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->in_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$32900(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notIn_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$32902(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notIn_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$33002(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33102(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->strict_:Z

    return p1
.end method

.method static synthetic access$33202(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    return p1
.end method

.method static synthetic access$33302(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    return p1
.end method

.method static synthetic access$33400(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->w()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasConst()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasConst()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasConst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getConst()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getConst()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasLen()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasLen()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasLen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getLen()J

    move-result-wide v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getLen()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasMinLen()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasMinLen()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 13
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasMinLen()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getMinLen()J

    move-result-wide v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getMinLen()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasMaxLen()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasMaxLen()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasMaxLen()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getMaxLen()J

    move-result-wide v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getMaxLen()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasLenBytes()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasLenBytes()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 21
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasLenBytes()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getLenBytes()J

    move-result-wide v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getLenBytes()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_b

    return v3

    .line 24
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasMinBytes()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasMinBytes()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 25
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasMinBytes()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getMinBytes()J

    move-result-wide v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getMinBytes()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_d

    return v3

    .line 28
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasMaxBytes()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasMaxBytes()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 29
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasMaxBytes()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getMaxBytes()J

    move-result-wide v1

    .line 31
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getMaxBytes()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_f

    return v3

    .line 32
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasPattern()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasPattern()Z

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    .line 33
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasPattern()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getPattern()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    .line 36
    :cond_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasPrefix()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasPrefix()Z

    move-result v2

    if-eq v1, v2, :cond_12

    return v3

    .line 37
    :cond_12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasPrefix()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v3

    .line 40
    :cond_13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasSuffix()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasSuffix()Z

    move-result v2

    if-eq v1, v2, :cond_14

    return v3

    .line 41
    :cond_14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasSuffix()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 42
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getSuffix()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v3

    .line 44
    :cond_15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasContains()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasContains()Z

    move-result v2

    if-eq v1, v2, :cond_16

    return v3

    .line 45
    :cond_16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasContains()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 46
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getContains()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getContains()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v3

    .line 48
    :cond_17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasNotContains()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasNotContains()Z

    move-result v2

    if-eq v1, v2, :cond_18

    return v3

    .line 49
    :cond_18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasNotContains()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 50
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getNotContains()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getNotContains()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v3

    .line 52
    :cond_19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getInList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getInList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v3

    .line 54
    :cond_1a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getNotInList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getNotInList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v3

    .line 56
    :cond_1b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasStrict()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasStrict()Z

    move-result v2

    if-eq v1, v2, :cond_1c

    return v3

    .line 57
    :cond_1c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasStrict()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 58
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getStrict()Z

    move-result v1

    .line 59
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getStrict()Z

    move-result v2

    if-eq v1, v2, :cond_1d

    return v3

    .line 60
    :cond_1d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getWellKnownCase()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getWellKnownCase()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v3

    .line 61
    :cond_1e
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 62
    :pswitch_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getWellKnownRegex()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$KnownRegex;

    move-result-object v1

    .line 63
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getWellKnownRegex()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$KnownRegex;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v3

    .line 64
    :pswitch_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getUuid()Z

    move-result v1

    .line 65
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getUuid()Z

    move-result v2

    if-eq v1, v2, :cond_1f

    return v3

    .line 66
    :pswitch_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getAddress()Z

    move-result v1

    .line 67
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getAddress()Z

    move-result v2

    if-eq v1, v2, :cond_1f

    return v3

    .line 68
    :pswitch_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getUriRef()Z

    move-result v1

    .line 69
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getUriRef()Z

    move-result v2

    if-eq v1, v2, :cond_1f

    return v3

    .line 70
    :pswitch_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getUri()Z

    move-result v1

    .line 71
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getUri()Z

    move-result v2

    if-eq v1, v2, :cond_1f

    return v3

    .line 72
    :pswitch_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getIpv6()Z

    move-result v1

    .line 73
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getIpv6()Z

    move-result v2

    if-eq v1, v2, :cond_1f

    return v3

    .line 74
    :pswitch_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getIpv4()Z

    move-result v1

    .line 75
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getIpv4()Z

    move-result v2

    if-eq v1, v2, :cond_1f

    return v3

    .line 76
    :pswitch_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getIp()Z

    move-result v1

    .line 77
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getIp()Z

    move-result v2

    if-eq v1, v2, :cond_1f

    return v3

    .line 78
    :pswitch_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getHostname()Z

    move-result v1

    .line 79
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getHostname()Z

    move-result v2

    if-eq v1, v2, :cond_1f

    return v3

    .line 80
    :pswitch_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getEmail()Z

    move-result v1

    .line 81
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getEmail()Z

    move-result v2

    if-eq v1, v2, :cond_1f

    return v3

    .line 82
    :cond_1f
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    return v3

    :cond_20
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAddress()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getConst()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->const_:Ljava/lang/Object;

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
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->const_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getConstBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->const_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->const_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getContains()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->contains_:Ljava/lang/Object;

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
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->contains_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getContainsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->contains_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->contains_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    return-object v0
.end method

.method public getEmail()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHostname()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIn(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->in_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getInBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->in_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getInCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->in_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->in_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getInList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getInList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getIp()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

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

    iget-wide v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->len_:J

    return-wide v0
.end method

.method public getLenBytes()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->lenBytes_:J

    return-wide v0
.end method

.method public getMaxBytes()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->maxBytes_:J

    return-wide v0
.end method

.method public getMaxLen()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->maxLen_:J

    return-wide v0
.end method

.method public getMinBytes()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->minBytes_:J

    return-wide v0
.end method

.method public getMinLen()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->minLen_:J

    return-wide v0
.end method

.method public getNotContains()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notContains_:Ljava/lang/Object;

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
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notContains_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNotContainsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notContains_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notContains_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNotIn(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notIn_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNotInBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notIn_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getNotInCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notIn_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNotInList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notIn_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getNotInList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getNotInList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->pattern_:Ljava/lang/Object;

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
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->pattern_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getPatternBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->pattern_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->pattern_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->prefix_:Ljava/lang/Object;

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
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->prefix_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getPrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->prefix_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->prefix_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->const_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    const/4 v5, 0x2

    if-eqz v3, :cond_2

    .line 5
    iget-wide v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->minLen_:J

    .line 6
    invoke-static {v5, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 7
    :cond_2
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    const/16 v6, 0x8

    and-int/2addr v3, v6

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 8
    iget-wide v7, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->maxLen_:J

    .line 9
    invoke-static {v3, v7, v8}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 10
    :cond_3
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_4

    .line 11
    iget-wide v7, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->minBytes_:J

    .line 12
    invoke-static {v4, v7, v8}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 13
    :cond_4
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    .line 14
    iget-wide v7, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->maxBytes_:J

    .line 15
    invoke-static {v3, v7, v8}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 16
    :cond_5
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    .line 17
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->pattern_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 18
    :cond_6
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_7

    const/4 v3, 0x7

    .line 19
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->prefix_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 20
    :cond_7
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_8

    .line 21
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->suffix_:Ljava/lang/Object;

    invoke-static {v6, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 22
    :cond_8
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_9

    const/16 v3, 0x9

    .line 23
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->contains_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 24
    :goto_1
    iget-object v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->in_:Lcom/google/protobuf/z0;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_a

    .line 25
    iget-object v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->in_:Lcom/google/protobuf/z0;

    invoke-interface {v6, v3}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    add-int/2addr v0, v4

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getInList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    .line 27
    :goto_2
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notIn_:Lcom/google/protobuf/z0;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 28
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notIn_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v2}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    add-int/2addr v0, v3

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getNotInList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 30
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_c

    .line 31
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 33
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_c
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_d

    .line 35
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 37
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_d
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_e

    .line 39
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 40
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 41
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_e
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_f

    .line 43
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 44
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 45
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    :cond_f
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_10

    .line 47
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 48
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 49
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_10
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v3, 0x11

    if-ne v1, v3, :cond_11

    .line 51
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 53
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_11
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v3, 0x12

    if-ne v1, v3, :cond_12

    .line 55
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 57
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_12
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_13

    const/16 v1, 0x13

    .line 59
    iget-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->len_:J

    .line 60
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_13
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    const/16 v1, 0x14

    .line 62
    iget-wide v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->lenBytes_:J

    .line 63
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_14
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_15

    .line 65
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 66
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 67
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_15
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_16

    .line 69
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 70
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 71
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_16
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_17

    const/16 v1, 0x17

    .line 73
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notContains_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_17
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_18

    .line 75
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 76
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_18
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_19

    const/16 v1, 0x19

    .line 78
    iget-boolean v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->strict_:Z

    .line 79
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_19
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getStrict()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->strict_:Z

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->suffix_:Ljava/lang/Object;

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
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->suffix_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSuffixBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->suffix_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->suffix_:Ljava/lang/Object;

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

.method public getUri()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUriRef()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUuid()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWellKnownCase()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    move-result-object v0

    return-object v0
.end method

.method public getWellKnownRegex()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$KnownRegex;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$KnownRegex;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$KnownRegex;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$KnownRegex;->UNKNOWN:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$KnownRegex;

    :cond_0
    return-object v0

    .line 6
    :cond_1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$KnownRegex;->UNKNOWN:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$KnownRegex;

    return-object v0
.end method

.method public hasAddress()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConst()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

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

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEmail()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHostname()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIp()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0xe

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

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0xf

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

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0x10

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

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLenBytes()Z
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxBytes()Z
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

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

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMinBytes()Z
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

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

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNotContains()Z
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

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

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

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

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStrict()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

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

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUri()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUriRef()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUuid()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWellKnownRegex()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasConst()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getConst()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasLen()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getLen()J

    move-result-wide v1

    .line 7
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasMinLen()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getMinLen()J

    move-result-wide v1

    .line 10
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasMaxLen()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getMaxLen()J

    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasLenBytes()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getLenBytes()J

    move-result-wide v1

    .line 16
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasMinBytes()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getMinBytes()J

    move-result-wide v1

    .line 19
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasMaxBytes()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getMaxBytes()J

    move-result-wide v1

    .line 22
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasPattern()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasPrefix()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasSuffix()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasContains()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getContains()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasNotContains()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x17

    mul-int/lit8 v0, v0, 0x35

    .line 32
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getNotContains()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getInCount()I

    move-result v1

    if-lez v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getInList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getNotInCount()I

    move-result v1

    if-lez v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 36
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getNotInList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->hasStrict()Z

    move-result v1

    if-eqz v1, :cond_f

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x19

    mul-int/lit8 v0, v0, 0x35

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getStrict()Z

    move-result v1

    .line 39
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_f
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x35

    .line 41
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getWellKnownRegex()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$KnownRegex;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$KnownRegex;->getNumber()I

    move-result v1

    goto/16 :goto_0

    :pswitch_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x16

    mul-int/lit8 v0, v0, 0x35

    .line 42
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getUuid()Z

    move-result v1

    .line 43
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    goto/16 :goto_0

    :pswitch_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x15

    mul-int/lit8 v0, v0, 0x35

    .line 44
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getAddress()Z

    move-result v1

    .line 45
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    goto :goto_0

    :pswitch_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 46
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getUriRef()Z

    move-result v1

    .line 47
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    goto :goto_0

    :pswitch_5
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 48
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getUri()Z

    move-result v1

    .line 49
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    goto :goto_0

    :pswitch_6
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 50
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getIpv6()Z

    move-result v1

    .line 51
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    goto :goto_0

    :pswitch_7
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 52
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getIpv4()Z

    move-result v1

    .line 53
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    goto :goto_0

    :pswitch_8
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 54
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getIp()Z

    move-result v1

    .line 55
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    goto :goto_0

    :pswitch_9
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 56
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getHostname()Z

    move-result v1

    .line 57
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    goto :goto_0

    :pswitch_a
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 58
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->getEmail()Z

    move-result v1

    .line 59
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 60
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->x()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$b;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->const_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 4
    iget-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->minLen_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    iget-wide v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->maxLen_:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    .line 8
    iget-wide v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->minBytes_:J

    invoke-virtual {p1, v1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 10
    iget-wide v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->maxBytes_:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->pattern_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 13
    :cond_5
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 14
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->prefix_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 15
    :cond_6
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    .line 16
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->suffix_:Ljava/lang/Object;

    invoke-static {p1, v3, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 17
    :cond_7
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->contains_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 19
    :goto_0
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->in_:Lcom/google/protobuf/z0;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    const/16 v3, 0xa

    .line 20
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->in_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_9
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notIn_:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    const/16 v1, 0xb

    .line 22
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notIn_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v0}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 23
    :cond_a
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_b

    .line 24
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 27
    :cond_b
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_c

    .line 28
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 31
    :cond_c
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_d

    .line 32
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 35
    :cond_d
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_e

    .line 36
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 39
    :cond_e
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_f

    .line 40
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 42
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 43
    :cond_f
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v3, 0x11

    if-ne v0, v3, :cond_10

    .line 44
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 46
    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 47
    :cond_10
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v3, 0x12

    if-ne v0, v3, :cond_11

    .line 48
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 50
    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 51
    :cond_11
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    .line 52
    iget-wide v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->len_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    .line 53
    :cond_12
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    const/16 v0, 0x14

    .line 54
    iget-wide v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->lenBytes_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    .line 55
    :cond_13
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_14

    .line 56
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 58
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 59
    :cond_14
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_15

    .line 60
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 62
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 63
    :cond_15
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_16

    const/16 v0, 0x17

    .line 64
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->notContains_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 65
    :cond_16
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnownCase_:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_17

    .line 66
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->wellKnown_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 67
    :cond_17
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    const/16 v0, 0x19

    .line 68
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;->strict_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 69
    :cond_18
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
