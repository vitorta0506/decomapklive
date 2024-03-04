.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WellKnownCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

.field public static final enum IP:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

.field public static final enum IPV4:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

.field public static final enum IPV6:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

.field public static final enum WELLKNOWN_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    const-string v1, "IP"

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;->IP:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    const-string v3, "IPV4"

    const/4 v4, 0x1

    const/16 v5, 0xb

    invoke-direct {v1, v3, v4, v5}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;->IPV4:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    .line 3
    new-instance v3, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    const-string v5, "IPV6"

    const/4 v6, 0x2

    const/16 v7, 0xc

    invoke-direct {v3, v5, v6, v7}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;->IPV6:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    .line 4
    new-instance v5, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    const-string v7, "WELLKNOWN_NOT_SET"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;->WELLKNOWN_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;->IPV6:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;->IPV4:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;->IP:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    return-object p0

    .line 4
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;->WELLKNOWN_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;->value:I

    return v0
.end method
