.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallCredentials"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$f;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$d;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$e;
    }
.end annotation


# static fields
.field public static final ACCESS_TOKEN_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

.field public static final FROM_PLUGIN_FIELD_NUMBER:I = 0x6

.field public static final GOOGLE_COMPUTE_ENGINE_FIELD_NUMBER:I = 0x2

.field public static final GOOGLE_IAM_FIELD_NUMBER:I = 0x5

.field public static final GOOGLE_REFRESH_TOKEN_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICE_ACCOUNT_JWT_ACCESS_FIELD_NUMBER:I = 0x4

.field public static final STS_SERVICE_FIELD_NUMBER:I = 0x7

.field private static final serialVersionUID:J


# instance fields
.field private credentialSpecifierCase_:I

.field private credentialSpecifier_:Ljava/lang/Object;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->memoizedIsInitialized:B

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_13

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    const/16 v4, 0xa

    if-eq v2, v4, :cond_11

    const/16 v4, 0x12

    const/4 v5, 0x0

    if-eq v2, v4, :cond_e

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_d

    const/16 v4, 0x22

    if-eq v2, v4, :cond_a

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_7

    const/16 v4, 0x32

    if-eq v2, v4, :cond_4

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 14
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 15
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService$b;

    move-result-object v5

    .line 16
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 17
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService$b;

    .line 18
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    .line 19
    :cond_3
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    goto :goto_0

    .line 20
    :cond_4
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 21
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin$b;

    move-result-object v5

    .line 22
    :cond_5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 23
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin$b;

    .line 24
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    .line 25
    :cond_6
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    goto :goto_0

    .line 26
    :cond_7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_8

    .line 27
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials$b;

    move-result-object v5

    .line 28
    :cond_8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_9

    .line 29
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials$b;

    .line 30
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    .line 31
    :cond_9
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    goto/16 :goto_0

    .line 32
    :cond_a
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b

    .line 33
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials$b;

    move-result-object v5

    .line 34
    :cond_b
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_c

    .line 35
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials$b;

    .line 36
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    .line 37
    :cond_c
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    goto/16 :goto_0

    .line 38
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 39
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    .line 40
    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 41
    :cond_e
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    .line 42
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/Empty;

    invoke-virtual {v2}, Lcom/google/protobuf/Empty;->toBuilder()Lcom/google/protobuf/Empty$b;

    move-result-object v5

    .line 43
    :cond_f
    invoke-static {}, Lcom/google/protobuf/Empty;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_10

    .line 44
    check-cast v2, Lcom/google/protobuf/Empty;

    invoke-virtual {v5, v2}, Lcom/google/protobuf/Empty$b;->e0(Lcom/google/protobuf/Empty;)Lcom/google/protobuf/Empty$b;

    .line 45
    invoke-virtual {v5}, Lcom/google/protobuf/Empty$b;->Y()Lcom/google/protobuf/Empty;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    .line 46
    :cond_10
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    goto/16 :goto_0

    .line 47
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 48
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    .line 49
    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_12
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 50
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 51
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 52
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 54
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 55
    :cond_13
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 56
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$10000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$10100()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9600()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$9802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    return p1
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->m:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getCredentialSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getCredentialSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getStsService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getStsService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getFromPlugin()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getFromPlugin()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 10
    :pswitch_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getGoogleIam()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getGoogleIam()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 12
    :pswitch_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getServiceAccountJwtAccess()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getServiceAccountJwtAccess()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 14
    :pswitch_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getGoogleRefreshToken()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getGoogleRefreshToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 16
    :pswitch_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getGoogleComputeEngine()Lcom/google/protobuf/Empty;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getGoogleComputeEngine()Lcom/google/protobuf/Empty;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Empty;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 18
    :pswitch_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 20
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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getAccessTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCredentialSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    return-object v0
.end method

.method public getFromPlugin()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;

    move-result-object v0

    return-object v0
.end method

.method public getFromPluginOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$d;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleComputeEngine()Lcom/google/protobuf/Empty;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Empty;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Empty;->getDefaultInstance()Lcom/google/protobuf/Empty;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleComputeEngineOrBuilder()Lcom/google/protobuf/y;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Empty;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Empty;->getDefaultInstance()Lcom/google/protobuf/Empty;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleIam()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleIamOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$c;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleRefreshToken()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getGoogleRefreshTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->PARSER:Lcom/google/protobuf/e2;

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
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/Empty;

    .line 6
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;

    .line 11
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;

    .line 14
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;

    .line 17
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 19
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;

    .line 20
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getServiceAccountJwtAccess()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getServiceAccountJwtAccessOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$e;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getStsService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;

    move-result-object v0

    return-object v0
.end method

.method public getStsServiceOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$f;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasAccessToken()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasFromPlugin()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGoogleComputeEngine()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGoogleIam()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGoogleRefreshToken()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasServiceAccountJwtAccess()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStsService()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x7

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getStsService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getFromPlugin()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getGoogleIam()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getServiceAccountJwtAccess()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getGoogleRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_5
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getGoogleComputeEngine()Lcom/google/protobuf/Empty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Empty;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_6
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 11
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$b;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Empty;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$GoogleGrpc$CallCredentials$StsService;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
