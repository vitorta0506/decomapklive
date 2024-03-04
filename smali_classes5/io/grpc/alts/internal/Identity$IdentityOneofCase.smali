.class public final enum Lio/grpc/alts/internal/Identity$IdentityOneofCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/Identity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IdentityOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/alts/internal/Identity$IdentityOneofCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/alts/internal/Identity$IdentityOneofCase;

.field public static final enum HOSTNAME:Lio/grpc/alts/internal/Identity$IdentityOneofCase;

.field public static final enum IDENTITYONEOF_NOT_SET:Lio/grpc/alts/internal/Identity$IdentityOneofCase;

.field public static final enum SERVICE_ACCOUNT:Lio/grpc/alts/internal/Identity$IdentityOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/grpc/alts/internal/Identity$IdentityOneofCase;

    const-string v1, "SERVICE_ACCOUNT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/alts/internal/Identity$IdentityOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/alts/internal/Identity$IdentityOneofCase;->SERVICE_ACCOUNT:Lio/grpc/alts/internal/Identity$IdentityOneofCase;

    .line 2
    new-instance v1, Lio/grpc/alts/internal/Identity$IdentityOneofCase;

    const-string v4, "HOSTNAME"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/grpc/alts/internal/Identity$IdentityOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/alts/internal/Identity$IdentityOneofCase;->HOSTNAME:Lio/grpc/alts/internal/Identity$IdentityOneofCase;

    .line 3
    new-instance v4, Lio/grpc/alts/internal/Identity$IdentityOneofCase;

    const-string v6, "IDENTITYONEOF_NOT_SET"

    invoke-direct {v4, v6, v5, v2}, Lio/grpc/alts/internal/Identity$IdentityOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/alts/internal/Identity$IdentityOneofCase;->IDENTITYONEOF_NOT_SET:Lio/grpc/alts/internal/Identity$IdentityOneofCase;

    const/4 v6, 0x3

    new-array v6, v6, [Lio/grpc/alts/internal/Identity$IdentityOneofCase;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 4
    sput-object v6, Lio/grpc/alts/internal/Identity$IdentityOneofCase;->$VALUES:[Lio/grpc/alts/internal/Identity$IdentityOneofCase;

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
    iput p3, p0, Lio/grpc/alts/internal/Identity$IdentityOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/alts/internal/Identity$IdentityOneofCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/alts/internal/Identity$IdentityOneofCase;->HOSTNAME:Lio/grpc/alts/internal/Identity$IdentityOneofCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/alts/internal/Identity$IdentityOneofCase;->SERVICE_ACCOUNT:Lio/grpc/alts/internal/Identity$IdentityOneofCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/alts/internal/Identity$IdentityOneofCase;->IDENTITYONEOF_NOT_SET:Lio/grpc/alts/internal/Identity$IdentityOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/alts/internal/Identity$IdentityOneofCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/alts/internal/Identity$IdentityOneofCase;->forNumber(I)Lio/grpc/alts/internal/Identity$IdentityOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/alts/internal/Identity$IdentityOneofCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/alts/internal/Identity$IdentityOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/Identity$IdentityOneofCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/alts/internal/Identity$IdentityOneofCase;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/Identity$IdentityOneofCase;->$VALUES:[Lio/grpc/alts/internal/Identity$IdentityOneofCase;

    invoke-virtual {v0}, [Lio/grpc/alts/internal/Identity$IdentityOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/alts/internal/Identity$IdentityOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/alts/internal/Identity$IdentityOneofCase;->value:I

    return v0
.end method
