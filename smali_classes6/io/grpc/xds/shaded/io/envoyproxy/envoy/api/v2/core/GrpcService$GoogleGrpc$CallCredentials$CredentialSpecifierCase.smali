.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CredentialSpecifierCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

.field public static final enum ACCESS_TOKEN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

.field public static final enum CREDENTIALSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

.field public static final enum FROM_PLUGIN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

.field public static final enum GOOGLE_COMPUTE_ENGINE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

.field public static final enum GOOGLE_IAM:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

.field public static final enum GOOGLE_REFRESH_TOKEN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

.field public static final enum SERVICE_ACCOUNT_JWT_ACCESS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

.field public static final enum STS_SERVICE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    const-string v1, "ACCESS_TOKEN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->ACCESS_TOKEN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    const-string v4, "GOOGLE_COMPUTE_ENGINE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->GOOGLE_COMPUTE_ENGINE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    const-string v6, "GOOGLE_REFRESH_TOKEN"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->GOOGLE_REFRESH_TOKEN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    .line 4
    new-instance v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    const-string v8, "SERVICE_ACCOUNT_JWT_ACCESS"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->SERVICE_ACCOUNT_JWT_ACCESS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    .line 5
    new-instance v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    const-string v10, "GOOGLE_IAM"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->GOOGLE_IAM:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    .line 6
    new-instance v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    const-string v12, "FROM_PLUGIN"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->FROM_PLUGIN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    .line 7
    new-instance v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    const-string v14, "STS_SERVICE"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->STS_SERVICE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    .line 8
    new-instance v14, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    const-string v13, "CREDENTIALSPECIFIER_NOT_SET"

    invoke-direct {v14, v13, v15, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->CREDENTIALSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    const/16 v13, 0x8

    new-array v13, v13, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    aput-object v0, v13, v2

    aput-object v1, v13, v3

    aput-object v4, v13, v5

    aput-object v6, v13, v7

    aput-object v8, v13, v9

    aput-object v10, v13, v11

    const/4 v0, 0x6

    aput-object v12, v13, v0

    aput-object v14, v13, v15

    .line 9
    sput-object v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->STS_SERVICE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->FROM_PLUGIN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->GOOGLE_IAM:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->SERVICE_ACCOUNT_JWT_ACCESS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->GOOGLE_REFRESH_TOKEN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->GOOGLE_COMPUTE_ENGINE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->ACCESS_TOKEN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->CREDENTIALSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->value:I

    return v0
.end method
