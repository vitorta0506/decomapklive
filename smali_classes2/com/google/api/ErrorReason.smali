.class public final enum Lcom/google/api/ErrorReason;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/h2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/ErrorReason;",
        ">;",
        "Lcom/google/protobuf/h2;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/ErrorReason;

.field public static final enum ACCESS_TOKEN_EXPIRED:Lcom/google/api/ErrorReason;

.field public static final ACCESS_TOKEN_EXPIRED_VALUE:I = 0x10

.field public static final enum ACCESS_TOKEN_SCOPE_INSUFFICIENT:Lcom/google/api/ErrorReason;

.field public static final ACCESS_TOKEN_SCOPE_INSUFFICIENT_VALUE:I = 0x11

.field public static final enum ACCESS_TOKEN_TYPE_UNSUPPORTED:Lcom/google/api/ErrorReason;

.field public static final ACCESS_TOKEN_TYPE_UNSUPPORTED_VALUE:I = 0x13

.field public static final enum ACCOUNT_STATE_INVALID:Lcom/google/api/ErrorReason;

.field public static final ACCOUNT_STATE_INVALID_VALUE:I = 0x12

.field public static final enum API_KEY_ANDROID_APP_BLOCKED:Lcom/google/api/ErrorReason;

.field public static final API_KEY_ANDROID_APP_BLOCKED_VALUE:I = 0x9

.field public static final enum API_KEY_HTTP_REFERRER_BLOCKED:Lcom/google/api/ErrorReason;

.field public static final API_KEY_HTTP_REFERRER_BLOCKED_VALUE:I = 0x7

.field public static final enum API_KEY_INVALID:Lcom/google/api/ErrorReason;

.field public static final API_KEY_INVALID_VALUE:I = 0x3

.field public static final enum API_KEY_IOS_APP_BLOCKED:Lcom/google/api/ErrorReason;

.field public static final API_KEY_IOS_APP_BLOCKED_VALUE:I = 0xd

.field public static final enum API_KEY_IP_ADDRESS_BLOCKED:Lcom/google/api/ErrorReason;

.field public static final API_KEY_IP_ADDRESS_BLOCKED_VALUE:I = 0x8

.field public static final enum API_KEY_SERVICE_BLOCKED:Lcom/google/api/ErrorReason;

.field public static final API_KEY_SERVICE_BLOCKED_VALUE:I = 0x4

.field public static final enum BILLING_DISABLED:Lcom/google/api/ErrorReason;

.field public static final BILLING_DISABLED_VALUE:I = 0x2

.field public static final enum CONSUMER_INVALID:Lcom/google/api/ErrorReason;

.field public static final CONSUMER_INVALID_VALUE:I = 0xe

.field public static final enum CONSUMER_SUSPENDED:Lcom/google/api/ErrorReason;

.field public static final CONSUMER_SUSPENDED_VALUE:I = 0xc

.field public static final enum ERROR_REASON_UNSPECIFIED:Lcom/google/api/ErrorReason;

.field public static final ERROR_REASON_UNSPECIFIED_VALUE:I = 0x0

.field public static final enum LOCATION_TAX_POLICY_VIOLATED:Lcom/google/api/ErrorReason;

.field public static final LOCATION_TAX_POLICY_VIOLATED_VALUE:I = 0xa

.field public static final enum RATE_LIMIT_EXCEEDED:Lcom/google/api/ErrorReason;

.field public static final RATE_LIMIT_EXCEEDED_VALUE:I = 0x5

.field public static final enum RESOURCE_QUOTA_EXCEEDED:Lcom/google/api/ErrorReason;

.field public static final RESOURCE_QUOTA_EXCEEDED_VALUE:I = 0x6

.field public static final enum SECURITY_POLICY_VIOLATED:Lcom/google/api/ErrorReason;

.field public static final SECURITY_POLICY_VIOLATED_VALUE:I = 0xf

.field public static final enum SERVICE_DISABLED:Lcom/google/api/ErrorReason;

.field public static final SERVICE_DISABLED_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lcom/google/api/ErrorReason;

.field public static final enum USER_PROJECT_DENIED:Lcom/google/api/ErrorReason;

.field public static final USER_PROJECT_DENIED_VALUE:I = 0xb

.field private static final VALUES:[Lcom/google/api/ErrorReason;

.field private static final internalValueMap:Lcom/google/protobuf/u0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u0$d<",
            "Lcom/google/api/ErrorReason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Lcom/google/api/ErrorReason;

    const-string v1, "ERROR_REASON_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/ErrorReason;->ERROR_REASON_UNSPECIFIED:Lcom/google/api/ErrorReason;

    .line 2
    new-instance v1, Lcom/google/api/ErrorReason;

    const-string v3, "SERVICE_DISABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/api/ErrorReason;->SERVICE_DISABLED:Lcom/google/api/ErrorReason;

    .line 3
    new-instance v3, Lcom/google/api/ErrorReason;

    const-string v5, "BILLING_DISABLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/api/ErrorReason;->BILLING_DISABLED:Lcom/google/api/ErrorReason;

    .line 4
    new-instance v5, Lcom/google/api/ErrorReason;

    const-string v7, "API_KEY_INVALID"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/api/ErrorReason;->API_KEY_INVALID:Lcom/google/api/ErrorReason;

    .line 5
    new-instance v7, Lcom/google/api/ErrorReason;

    const-string v9, "API_KEY_SERVICE_BLOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/api/ErrorReason;->API_KEY_SERVICE_BLOCKED:Lcom/google/api/ErrorReason;

    .line 6
    new-instance v9, Lcom/google/api/ErrorReason;

    const-string v11, "API_KEY_HTTP_REFERRER_BLOCKED"

    const/4 v12, 0x5

    const/4 v13, 0x7

    invoke-direct {v9, v11, v12, v13}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/api/ErrorReason;->API_KEY_HTTP_REFERRER_BLOCKED:Lcom/google/api/ErrorReason;

    .line 7
    new-instance v11, Lcom/google/api/ErrorReason;

    const-string v14, "API_KEY_IP_ADDRESS_BLOCKED"

    const/4 v15, 0x6

    const/16 v10, 0x8

    invoke-direct {v11, v14, v15, v10}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/api/ErrorReason;->API_KEY_IP_ADDRESS_BLOCKED:Lcom/google/api/ErrorReason;

    .line 8
    new-instance v14, Lcom/google/api/ErrorReason;

    const-string v8, "API_KEY_ANDROID_APP_BLOCKED"

    const/16 v6, 0x9

    invoke-direct {v14, v8, v13, v6}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/api/ErrorReason;->API_KEY_ANDROID_APP_BLOCKED:Lcom/google/api/ErrorReason;

    .line 9
    new-instance v8, Lcom/google/api/ErrorReason;

    const-string v13, "API_KEY_IOS_APP_BLOCKED"

    const/16 v4, 0xd

    invoke-direct {v8, v13, v10, v4}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/api/ErrorReason;->API_KEY_IOS_APP_BLOCKED:Lcom/google/api/ErrorReason;

    .line 10
    new-instance v13, Lcom/google/api/ErrorReason;

    const-string v10, "RATE_LIMIT_EXCEEDED"

    invoke-direct {v13, v10, v6, v12}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/api/ErrorReason;->RATE_LIMIT_EXCEEDED:Lcom/google/api/ErrorReason;

    .line 11
    new-instance v10, Lcom/google/api/ErrorReason;

    const-string v6, "RESOURCE_QUOTA_EXCEEDED"

    const/16 v12, 0xa

    invoke-direct {v10, v6, v12, v15}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/api/ErrorReason;->RESOURCE_QUOTA_EXCEEDED:Lcom/google/api/ErrorReason;

    .line 12
    new-instance v6, Lcom/google/api/ErrorReason;

    const-string v15, "LOCATION_TAX_POLICY_VIOLATED"

    const/16 v2, 0xb

    invoke-direct {v6, v15, v2, v12}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/api/ErrorReason;->LOCATION_TAX_POLICY_VIOLATED:Lcom/google/api/ErrorReason;

    .line 13
    new-instance v15, Lcom/google/api/ErrorReason;

    const-string v12, "USER_PROJECT_DENIED"

    const/16 v4, 0xc

    invoke-direct {v15, v12, v4, v2}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/api/ErrorReason;->USER_PROJECT_DENIED:Lcom/google/api/ErrorReason;

    .line 14
    new-instance v12, Lcom/google/api/ErrorReason;

    const-string v2, "CONSUMER_SUSPENDED"

    move-object/from16 v16, v15

    const/16 v15, 0xd

    invoke-direct {v12, v2, v15, v4}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/api/ErrorReason;->CONSUMER_SUSPENDED:Lcom/google/api/ErrorReason;

    .line 15
    new-instance v2, Lcom/google/api/ErrorReason;

    const-string v15, "CONSUMER_INVALID"

    const/16 v4, 0xe

    invoke-direct {v2, v15, v4, v4}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/api/ErrorReason;->CONSUMER_INVALID:Lcom/google/api/ErrorReason;

    .line 16
    new-instance v15, Lcom/google/api/ErrorReason;

    const-string v4, "SECURITY_POLICY_VIOLATED"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v15, v4, v2, v2}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/api/ErrorReason;->SECURITY_POLICY_VIOLATED:Lcom/google/api/ErrorReason;

    .line 17
    new-instance v4, Lcom/google/api/ErrorReason;

    const-string v2, "ACCESS_TOKEN_EXPIRED"

    move-object/from16 v18, v15

    const/16 v15, 0x10

    invoke-direct {v4, v2, v15, v15}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/api/ErrorReason;->ACCESS_TOKEN_EXPIRED:Lcom/google/api/ErrorReason;

    .line 18
    new-instance v2, Lcom/google/api/ErrorReason;

    const-string v15, "ACCESS_TOKEN_SCOPE_INSUFFICIENT"

    move-object/from16 v19, v4

    const/16 v4, 0x11

    invoke-direct {v2, v15, v4, v4}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/api/ErrorReason;->ACCESS_TOKEN_SCOPE_INSUFFICIENT:Lcom/google/api/ErrorReason;

    .line 19
    new-instance v15, Lcom/google/api/ErrorReason;

    const-string v4, "ACCOUNT_STATE_INVALID"

    move-object/from16 v20, v2

    const/16 v2, 0x12

    invoke-direct {v15, v4, v2, v2}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/api/ErrorReason;->ACCOUNT_STATE_INVALID:Lcom/google/api/ErrorReason;

    .line 20
    new-instance v4, Lcom/google/api/ErrorReason;

    const-string v2, "ACCESS_TOKEN_TYPE_UNSUPPORTED"

    move-object/from16 v21, v15

    const/16 v15, 0x13

    invoke-direct {v4, v2, v15, v15}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/api/ErrorReason;->ACCESS_TOKEN_TYPE_UNSUPPORTED:Lcom/google/api/ErrorReason;

    .line 21
    new-instance v2, Lcom/google/api/ErrorReason;

    const-string v15, "UNRECOGNIZED"

    move-object/from16 v22, v4

    const/16 v4, 0x14

    move-object/from16 v23, v12

    const/4 v12, -0x1

    invoke-direct {v2, v15, v4, v12}, Lcom/google/api/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/api/ErrorReason;->UNRECOGNIZED:Lcom/google/api/ErrorReason;

    const/16 v12, 0x15

    new-array v12, v12, [Lcom/google/api/ErrorReason;

    const/4 v15, 0x0

    aput-object v0, v12, v15

    const/4 v0, 0x1

    aput-object v1, v12, v0

    const/4 v0, 0x2

    aput-object v3, v12, v0

    const/4 v0, 0x3

    aput-object v5, v12, v0

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v14, v12, v0

    const/16 v0, 0x8

    aput-object v8, v12, v0

    const/16 v0, 0x9

    aput-object v13, v12, v0

    const/16 v0, 0xa

    aput-object v10, v12, v0

    const/16 v0, 0xb

    aput-object v6, v12, v0

    const/16 v0, 0xc

    aput-object v16, v12, v0

    const/16 v0, 0xd

    aput-object v23, v12, v0

    const/16 v0, 0xe

    aput-object v17, v12, v0

    const/16 v0, 0xf

    aput-object v18, v12, v0

    const/16 v0, 0x10

    aput-object v19, v12, v0

    const/16 v0, 0x11

    aput-object v20, v12, v0

    const/16 v0, 0x12

    aput-object v21, v12, v0

    const/16 v0, 0x13

    aput-object v22, v12, v0

    aput-object v2, v12, v4

    .line 22
    sput-object v12, Lcom/google/api/ErrorReason;->$VALUES:[Lcom/google/api/ErrorReason;

    .line 23
    new-instance v0, Lcom/google/api/ErrorReason$a;

    invoke-direct {v0}, Lcom/google/api/ErrorReason$a;-><init>()V

    sput-object v0, Lcom/google/api/ErrorReason;->internalValueMap:Lcom/google/protobuf/u0$d;

    .line 24
    invoke-static {}, Lcom/google/api/ErrorReason;->values()[Lcom/google/api/ErrorReason;

    move-result-object v0

    sput-object v0, Lcom/google/api/ErrorReason;->VALUES:[Lcom/google/api/ErrorReason;

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
    iput p3, p0, Lcom/google/api/ErrorReason;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/api/ErrorReason;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/google/api/ErrorReason;->ACCESS_TOKEN_TYPE_UNSUPPORTED:Lcom/google/api/ErrorReason;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/google/api/ErrorReason;->ACCOUNT_STATE_INVALID:Lcom/google/api/ErrorReason;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/google/api/ErrorReason;->ACCESS_TOKEN_SCOPE_INSUFFICIENT:Lcom/google/api/ErrorReason;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/google/api/ErrorReason;->ACCESS_TOKEN_EXPIRED:Lcom/google/api/ErrorReason;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/google/api/ErrorReason;->SECURITY_POLICY_VIOLATED:Lcom/google/api/ErrorReason;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/google/api/ErrorReason;->CONSUMER_INVALID:Lcom/google/api/ErrorReason;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/google/api/ErrorReason;->API_KEY_IOS_APP_BLOCKED:Lcom/google/api/ErrorReason;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/google/api/ErrorReason;->CONSUMER_SUSPENDED:Lcom/google/api/ErrorReason;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/google/api/ErrorReason;->USER_PROJECT_DENIED:Lcom/google/api/ErrorReason;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/google/api/ErrorReason;->LOCATION_TAX_POLICY_VIOLATED:Lcom/google/api/ErrorReason;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lcom/google/api/ErrorReason;->API_KEY_ANDROID_APP_BLOCKED:Lcom/google/api/ErrorReason;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, Lcom/google/api/ErrorReason;->API_KEY_IP_ADDRESS_BLOCKED:Lcom/google/api/ErrorReason;

    return-object p0

    .line 13
    :pswitch_c
    sget-object p0, Lcom/google/api/ErrorReason;->API_KEY_HTTP_REFERRER_BLOCKED:Lcom/google/api/ErrorReason;

    return-object p0

    .line 14
    :pswitch_d
    sget-object p0, Lcom/google/api/ErrorReason;->RESOURCE_QUOTA_EXCEEDED:Lcom/google/api/ErrorReason;

    return-object p0

    .line 15
    :pswitch_e
    sget-object p0, Lcom/google/api/ErrorReason;->RATE_LIMIT_EXCEEDED:Lcom/google/api/ErrorReason;

    return-object p0

    .line 16
    :pswitch_f
    sget-object p0, Lcom/google/api/ErrorReason;->API_KEY_SERVICE_BLOCKED:Lcom/google/api/ErrorReason;

    return-object p0

    .line 17
    :pswitch_10
    sget-object p0, Lcom/google/api/ErrorReason;->API_KEY_INVALID:Lcom/google/api/ErrorReason;

    return-object p0

    .line 18
    :pswitch_11
    sget-object p0, Lcom/google/api/ErrorReason;->BILLING_DISABLED:Lcom/google/api/ErrorReason;

    return-object p0

    .line 19
    :pswitch_12
    sget-object p0, Lcom/google/api/ErrorReason;->SERVICE_DISABLED:Lcom/google/api/ErrorReason;

    return-object p0

    .line 20
    :pswitch_13
    sget-object p0, Lcom/google/api/ErrorReason;->ERROR_REASON_UNSPECIFIED:Lcom/google/api/ErrorReason;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$d;
    .locals 2

    invoke-static {}, Lcom/google/api/b0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->k()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$d;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/u0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/u0$d<",
            "Lcom/google/api/ErrorReason;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/api/ErrorReason;->internalValueMap:Lcom/google/protobuf/u0$d;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/api/ErrorReason;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/api/ErrorReason;->forNumber(I)Lcom/google/api/ErrorReason;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$e;)Lcom/google/api/ErrorReason;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->h()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-static {}, Lcom/google/api/ErrorReason;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lcom/google/api/ErrorReason;->UNRECOGNIZED:Lcom/google/api/ErrorReason;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/google/api/ErrorReason;->VALUES:[Lcom/google/api/ErrorReason;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/ErrorReason;
    .locals 1

    .line 1
    const-class v0, Lcom/google/api/ErrorReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/api/ErrorReason;

    return-object p0
.end method

.method public static values()[Lcom/google/api/ErrorReason;
    .locals 1

    sget-object v0, Lcom/google/api/ErrorReason;->$VALUES:[Lcom/google/api/ErrorReason;

    invoke-virtual {v0}, [Lcom/google/api/ErrorReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/ErrorReason;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$d;
    .locals 1

    invoke-static {}, Lcom/google/api/ErrorReason;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/api/ErrorReason;->UNRECOGNIZED:Lcom/google/api/ErrorReason;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/api/ErrorReason;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$e;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/api/ErrorReason;->UNRECOGNIZED:Lcom/google/api/ErrorReason;

    if-eq p0, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/api/ErrorReason;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$d;->k()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$e;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
