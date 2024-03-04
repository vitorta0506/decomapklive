.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WellKnownCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

.field public static final enum ADDRESS:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

.field public static final enum EMAIL:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

.field public static final enum HOSTNAME:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

.field public static final enum IP:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

.field public static final enum IPV4:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

.field public static final enum IPV6:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

.field public static final enum URI:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

.field public static final enum URI_REF:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

.field public static final enum UUID:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

.field public static final enum WELLKNOWN_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

.field public static final enum WELL_KNOWN_REGEX:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    const-string v1, "EMAIL"

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->EMAIL:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    const-string v3, "HOSTNAME"

    const/4 v4, 0x1

    const/16 v5, 0xd

    invoke-direct {v1, v3, v4, v5}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->HOSTNAME:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    .line 3
    new-instance v3, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    const-string v5, "IP"

    const/4 v6, 0x2

    const/16 v7, 0xe

    invoke-direct {v3, v5, v6, v7}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->IP:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    .line 4
    new-instance v5, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    const-string v7, "IPV4"

    const/4 v8, 0x3

    const/16 v9, 0xf

    invoke-direct {v5, v7, v8, v9}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->IPV4:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    .line 5
    new-instance v7, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    const-string v9, "IPV6"

    const/4 v10, 0x4

    const/16 v11, 0x10

    invoke-direct {v7, v9, v10, v11}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->IPV6:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    .line 6
    new-instance v9, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    const-string v11, "URI"

    const/4 v12, 0x5

    const/16 v13, 0x11

    invoke-direct {v9, v11, v12, v13}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->URI:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    .line 7
    new-instance v11, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    const-string v13, "URI_REF"

    const/4 v14, 0x6

    const/16 v15, 0x12

    invoke-direct {v11, v13, v14, v15}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->URI_REF:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    .line 8
    new-instance v13, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    const-string v15, "ADDRESS"

    const/4 v14, 0x7

    const/16 v12, 0x15

    invoke-direct {v13, v15, v14, v12}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->ADDRESS:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    .line 9
    new-instance v12, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    const-string v15, "UUID"

    const/16 v14, 0x8

    const/16 v10, 0x16

    invoke-direct {v12, v15, v14, v10}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->UUID:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    .line 10
    new-instance v10, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    const-string v15, "WELL_KNOWN_REGEX"

    const/16 v14, 0x9

    const/16 v8, 0x18

    invoke-direct {v10, v15, v14, v8}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->WELL_KNOWN_REGEX:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    .line 11
    new-instance v8, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    const-string v15, "WELLKNOWN_NOT_SET"

    const/16 v14, 0xa

    invoke-direct {v8, v15, v14, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->WELLKNOWN_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    const/16 v15, 0xb

    new-array v15, v15, [Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    const/4 v0, 0x3

    aput-object v5, v15, v0

    const/4 v0, 0x4

    aput-object v7, v15, v0

    const/4 v0, 0x5

    aput-object v9, v15, v0

    const/4 v0, 0x6

    aput-object v11, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v12, v15, v0

    const/16 v0, 0x9

    aput-object v10, v15, v0

    aput-object v8, v15, v14

    .line 12
    sput-object v15, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;
    .locals 1

    if-eqz p0, :cond_3

    const/16 v0, 0x18

    if-eq p0, v0, :cond_2

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->URI_REF:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->URI:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->IPV6:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->IPV4:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->IP:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->HOSTNAME:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->EMAIL:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    return-object p0

    .line 8
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->UUID:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    return-object p0

    .line 9
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->ADDRESS:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    return-object p0

    .line 10
    :cond_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->WELL_KNOWN_REGEX:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    return-object p0

    .line 11
    :cond_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->WELLKNOWN_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$StringRules$WellKnownCase;->value:I

    return v0
.end method
