.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

.field public static final enum GENERIC_SECRET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

.field public static final enum SESSION_TICKET_KEYS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

.field public static final enum TLS_CERTIFICATE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

.field public static final enum TYPE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

.field public static final enum VALIDATION_CONTEXT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    const-string v1, "TLS_CERTIFICATE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;->TLS_CERTIFICATE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    const-string v4, "SESSION_TICKET_KEYS"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;->SESSION_TICKET_KEYS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    const-string v7, "VALIDATION_CONTEXT"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v3, v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;->VALIDATION_CONTEXT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    .line 4
    new-instance v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    const-string v9, "GENERIC_SECRET"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v6, v10}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;->GENERIC_SECRET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    .line 5
    new-instance v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    const-string v11, "TYPE_NOT_SET"

    invoke-direct {v9, v11, v8, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;->TYPE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    new-array v10, v10, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    aput-object v0, v10, v2

    aput-object v1, v10, v5

    aput-object v4, v10, v3

    aput-object v7, v10, v6

    aput-object v9, v10, v8

    .line 6
    sput-object v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;->GENERIC_SECRET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;->VALIDATION_CONTEXT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;->SESSION_TICKET_KEYS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;->TLS_CERTIFICATE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;->TYPE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/Secret$TypeCase;->value:I

    return v0
.end method
