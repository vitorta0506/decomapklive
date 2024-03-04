.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RuleCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

.field public static final enum AND_RULES:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

.field public static final enum ANY:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

.field public static final enum DESTINATION_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

.field public static final enum DESTINATION_PORT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

.field public static final enum DESTINATION_PORT_RANGE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

.field public static final enum HEADER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

.field public static final enum METADATA:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

.field public static final enum NOT_RULE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

.field public static final enum OR_RULES:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

.field public static final enum REQUESTED_SERVER_NAME:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

.field public static final enum RULE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

.field public static final enum URL_PATH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    const-string v1, "AND_RULES"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->AND_RULES:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    const-string v4, "OR_RULES"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->OR_RULES:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    const-string v6, "ANY"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->ANY:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    .line 4
    new-instance v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    const-string v8, "HEADER"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->HEADER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    .line 5
    new-instance v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    const-string v10, "URL_PATH"

    const/16 v11, 0xa

    invoke-direct {v8, v10, v9, v11}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->URL_PATH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    .line 6
    new-instance v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    const-string v12, "DESTINATION_IP"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v13}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->DESTINATION_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    .line 7
    new-instance v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    const-string v14, "DESTINATION_PORT"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v15}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->DESTINATION_PORT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    .line 8
    new-instance v14, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    const-string v15, "DESTINATION_PORT_RANGE"

    const/4 v13, 0x7

    const/16 v9, 0xb

    invoke-direct {v14, v15, v13, v9}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->DESTINATION_PORT_RANGE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    .line 9
    new-instance v15, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    const-string v7, "METADATA"

    const/16 v5, 0x8

    invoke-direct {v15, v7, v5, v13}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->METADATA:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    .line 10
    new-instance v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    const-string v13, "NOT_RULE"

    const/16 v3, 0x9

    invoke-direct {v7, v13, v3, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->NOT_RULE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    .line 11
    new-instance v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    const-string v5, "REQUESTED_SERVER_NAME"

    invoke-direct {v13, v5, v11, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->REQUESTED_SERVER_NAME:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    .line 12
    new-instance v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    const-string v11, "RULE_NOT_SET"

    invoke-direct {v5, v11, v9, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->RULE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    const/16 v11, 0xc

    new-array v11, v11, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    aput-object v0, v11, v2

    const/4 v0, 0x1

    aput-object v1, v11, v0

    const/4 v0, 0x2

    aput-object v4, v11, v0

    const/4 v0, 0x3

    aput-object v6, v11, v0

    const/4 v0, 0x4

    aput-object v8, v11, v0

    const/4 v0, 0x5

    aput-object v10, v11, v0

    const/4 v0, 0x6

    aput-object v12, v11, v0

    const/4 v0, 0x7

    aput-object v14, v11, v0

    const/16 v0, 0x8

    aput-object v15, v11, v0

    aput-object v7, v11, v3

    const/16 v0, 0xa

    aput-object v13, v11, v0

    aput-object v5, v11, v9

    .line 13
    sput-object v11, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->DESTINATION_PORT_RANGE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->URL_PATH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->REQUESTED_SERVER_NAME:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->NOT_RULE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->METADATA:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->DESTINATION_PORT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->DESTINATION_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->HEADER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->ANY:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->OR_RULES:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->AND_RULES:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->RULE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

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

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->value:I

    return v0
.end method
