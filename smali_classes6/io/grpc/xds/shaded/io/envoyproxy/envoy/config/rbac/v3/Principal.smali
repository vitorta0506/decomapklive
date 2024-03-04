.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$e;
    }
.end annotation


# static fields
.field public static final AND_IDS_FIELD_NUMBER:I = 0x1

.field public static final ANY_FIELD_NUMBER:I = 0x3

.field public static final AUTHENTICATED_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

.field public static final DIRECT_REMOTE_IP_FIELD_NUMBER:I = 0xa

.field public static final HEADER_FIELD_NUMBER:I = 0x6

.field public static final METADATA_FIELD_NUMBER:I = 0x7

.field public static final NOT_ID_FIELD_NUMBER:I = 0x8

.field public static final OR_IDS_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMOTE_IP_FIELD_NUMBER:I = 0xb

.field public static final SOURCE_IP_FIELD_NUMBER:I = 0x5

.field public static final URL_PATH_FIELD_NUMBER:I = 0x9

.field private static final serialVersionUID:J


# instance fields
.field private identifierCase_:I

.field private identifier_:Ljava/lang/Object;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->memoizedIsInitialized:B

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_15

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    goto/16 :goto_2

    .line 14
    :sswitch_0
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 15
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange$b;

    move-result-object v4

    .line 16
    :cond_1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 17
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange$b;

    .line 18
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    .line 19
    :cond_2
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    goto :goto_0

    .line 20
    :sswitch_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 21
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange$b;

    move-result-object v4

    .line 22
    :cond_3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 23
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange$b;

    .line 24
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    .line 25
    :cond_4
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    goto :goto_0

    .line 26
    :sswitch_2
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_5

    .line 27
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher$c;

    move-result-object v4

    .line 28
    :cond_5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 29
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher$c;

    .line 30
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    .line 31
    :cond_6
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    goto/16 :goto_0

    .line 32
    :sswitch_3
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 33
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;

    move-result-object v4

    .line 34
    :cond_7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    if-eqz v4, :cond_8

    .line 35
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;

    .line 36
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    .line 37
    :cond_8
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    goto/16 :goto_0

    .line 38
    :sswitch_4
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_9

    .line 39
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher$c;

    move-result-object v4

    .line 40
    :cond_9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    if-eqz v4, :cond_a

    .line 41
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher$c;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher$c;

    .line 42
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    .line 43
    :cond_a
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    goto/16 :goto_0

    .line 44
    :sswitch_5
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_b

    .line 45
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$c;

    move-result-object v4

    .line 46
    :cond_b
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    if-eqz v4, :cond_c

    .line 47
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$c;

    .line 48
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    .line 49
    :cond_c
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    goto/16 :goto_0

    .line 50
    :sswitch_6
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_d

    .line 51
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange$b;

    move-result-object v4

    .line 52
    :cond_d
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    if-eqz v4, :cond_e

    .line 53
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange$b;

    .line 54
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    .line 55
    :cond_e
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    goto/16 :goto_0

    .line 56
    :sswitch_7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_f

    .line 57
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated$b;

    move-result-object v4

    .line 58
    :cond_f
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    if-eqz v4, :cond_10

    .line 59
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated$b;

    .line 60
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    .line 61
    :cond_10
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    goto/16 :goto_0

    .line 62
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    const/4 v2, 0x3

    .line 63
    iput v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    goto/16 :goto_0

    .line 64
    :sswitch_9
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    .line 65
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set$b;

    move-result-object v4

    .line 66
    :cond_11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    if-eqz v4, :cond_12

    .line 67
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set$b;

    .line 68
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    .line 69
    :cond_12
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    goto/16 :goto_0

    .line 70
    :sswitch_a
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    if-ne v2, v3, :cond_13

    .line 71
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set$b;

    move-result-object v4

    .line 72
    :cond_13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    if-eqz v4, :cond_14

    .line 73
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set$b;

    .line 74
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    .line 75
    :cond_14
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_b
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 76
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 77
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 78
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 80
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 81
    :cond_15
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 82
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0xa -> :sswitch_a
        0x12 -> :sswitch_9
        0x18 -> :sswitch_8
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

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    return p1
.end method

.method static synthetic access$2300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$2400()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->k:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getIdentifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getIdentifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 6
    :pswitch_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getRemoteIp()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getRemoteIp()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getDirectRemoteIp()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getDirectRemoteIp()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 10
    :pswitch_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getUrlPath()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getUrlPath()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 12
    :pswitch_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getNotId()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getNotId()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 14
    :pswitch_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 16
    :pswitch_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getHeader()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getHeader()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 18
    :pswitch_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getSourceIp()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getSourceIp()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 20
    :pswitch_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getAuthenticated()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getAuthenticated()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 22
    :pswitch_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getAny()Z

    move-result v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getAny()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 24
    :pswitch_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getOrIds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getOrIds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 26
    :pswitch_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getAndIds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getAndIds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 28
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAndIds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    move-result-object v0

    return-object v0
.end method

.method public getAndIdsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$e;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    move-result-object v0

    return-object v0
.end method

.method public getAny()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthenticated()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticatedOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$c;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    return-object v0
.end method

.method public getDirectRemoteIp()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object v0

    return-object v0
.end method

.method public getDirectRemoteIpOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/j;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/f;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/d;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;

    move-result-object v0

    return-object v0
.end method

.method public getNotId()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getNotIdOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/b;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getOrIds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    move-result-object v0

    return-object v0
.end method

.method public getOrIdsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$e;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRemoteIp()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteIpOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/j;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    .line 4
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    .line 7
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 11
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;

    .line 14
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    .line 17
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 19
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    .line 20
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 22
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;

    .line 23
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_7
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 25
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    .line 26
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    .line 28
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;

    .line 29
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_9
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    .line 31
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    .line 32
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_a
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_b

    .line 34
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    .line 35
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_b
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSourceIp()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object v0

    return-object v0
.end method

.method public getSourceIpOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/j;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getUrlPath()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;

    move-result-object v0

    return-object v0
.end method

.method public getUrlPathOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/i;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;

    move-result-object v0

    return-object v0
.end method

.method public hasAndIds()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasAny()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAuthenticated()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDirectRemoteIp()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeader()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMetadata()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNotId()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOrIds()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRemoteIp()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSourceIp()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUrlPath()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getRemoteIp()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getDirectRemoteIp()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getUrlPath()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;->hashCode()I

    move-result v1

    goto/16 :goto_0

    :pswitch_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getNotId()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_5
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getHeader()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_6
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getSourceIp()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_7
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getAuthenticated()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_8
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getAny()Z

    move-result v1

    .line 13
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    goto :goto_0

    :pswitch_9
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getOrIds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_a
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->getAndIds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 16
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$d;

    move-result-object v0

    :goto_0
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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Set;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 9
    :cond_2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 10
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$Authenticated;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_4
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 14
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_5
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/MetadataMatcher;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_6
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 18
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_7
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    .line 20
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 21
    :cond_8
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    .line 22
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 23
    :cond_9
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifierCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    .line 24
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;->identifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
