.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IdentifierCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

.field public static final enum AND_IDS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

.field public static final enum ANY:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

.field public static final enum AUTHENTICATED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

.field public static final enum DIRECT_REMOTE_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

.field public static final enum HEADER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

.field public static final enum IDENTIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

.field public static final enum METADATA:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

.field public static final enum NOT_ID:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

.field public static final enum OR_IDS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

.field public static final enum REMOTE_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

.field public static final enum SOURCE_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum URL_PATH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    const-string v1, "AND_IDS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->AND_IDS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    const-string v4, "OR_IDS"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->OR_IDS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    const-string v6, "ANY"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->ANY:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    .line 4
    new-instance v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    const-string v8, "AUTHENTICATED"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->AUTHENTICATED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    .line 5
    new-instance v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    const-string v10, "SOURCE_IP"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->SOURCE_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    .line 6
    new-instance v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    const-string v12, "DIRECT_REMOTE_IP"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v11, v13}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->DIRECT_REMOTE_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    .line 7
    new-instance v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    const-string v14, "REMOTE_IP"

    const/4 v15, 0x6

    const/16 v11, 0xb

    invoke-direct {v12, v14, v15, v11}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->REMOTE_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    .line 8
    new-instance v14, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    const-string v9, "HEADER"

    const/4 v7, 0x7

    invoke-direct {v14, v9, v7, v15}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->HEADER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    .line 9
    new-instance v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    const-string v15, "URL_PATH"

    const/16 v5, 0x8

    const/16 v3, 0x9

    invoke-direct {v9, v15, v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->URL_PATH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    .line 10
    new-instance v15, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    const-string v2, "METADATA"

    invoke-direct {v15, v2, v3, v7}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->METADATA:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    .line 11
    new-instance v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    const-string v3, "NOT_ID"

    invoke-direct {v2, v3, v13, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->NOT_ID:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    .line 12
    new-instance v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    const-string v13, "IDENTIFIER_NOT_SET"

    const/4 v5, 0x0

    invoke-direct {v3, v13, v11, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->IDENTIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    const/16 v13, 0xc

    new-array v13, v13, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    aput-object v0, v13, v5

    const/4 v0, 0x1

    aput-object v1, v13, v0

    const/4 v0, 0x2

    aput-object v4, v13, v0

    const/4 v0, 0x3

    aput-object v6, v13, v0

    const/4 v0, 0x4

    aput-object v8, v13, v0

    const/4 v0, 0x5

    aput-object v10, v13, v0

    const/4 v0, 0x6

    aput-object v12, v13, v0

    aput-object v14, v13, v7

    const/16 v0, 0x8

    aput-object v9, v13, v0

    const/16 v0, 0x9

    aput-object v15, v13, v0

    const/16 v0, 0xa

    aput-object v2, v13, v0

    aput-object v3, v13, v11

    .line 13
    sput-object v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->REMOTE_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->DIRECT_REMOTE_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->URL_PATH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->NOT_ID:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->METADATA:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->HEADER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->SOURCE_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->AUTHENTICATED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->ANY:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->OR_IDS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->AND_IDS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->IDENTIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
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

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->value:I

    return v0
.end method
