.class public final enum Lio/grpc/alts/AltsContext$SecurityLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/alts/AltsContext$SecurityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/alts/AltsContext$SecurityLevel;

.field public static final enum INTEGRITY_AND_PRIVACY:Lio/grpc/alts/AltsContext$SecurityLevel;

.field public static final enum INTEGRITY_ONLY:Lio/grpc/alts/AltsContext$SecurityLevel;

.field public static final enum SECURITY_NONE:Lio/grpc/alts/AltsContext$SecurityLevel;

.field public static final enum UNKNOWN:Lio/grpc/alts/AltsContext$SecurityLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lio/grpc/alts/AltsContext$SecurityLevel;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/alts/AltsContext$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/alts/AltsContext$SecurityLevel;->UNKNOWN:Lio/grpc/alts/AltsContext$SecurityLevel;

    .line 2
    new-instance v1, Lio/grpc/alts/AltsContext$SecurityLevel;

    const-string v3, "SECURITY_NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/grpc/alts/AltsContext$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/alts/AltsContext$SecurityLevel;->SECURITY_NONE:Lio/grpc/alts/AltsContext$SecurityLevel;

    .line 3
    new-instance v3, Lio/grpc/alts/AltsContext$SecurityLevel;

    const-string v5, "INTEGRITY_ONLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/grpc/alts/AltsContext$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/grpc/alts/AltsContext$SecurityLevel;->INTEGRITY_ONLY:Lio/grpc/alts/AltsContext$SecurityLevel;

    .line 4
    new-instance v5, Lio/grpc/alts/AltsContext$SecurityLevel;

    const-string v7, "INTEGRITY_AND_PRIVACY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/grpc/alts/AltsContext$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/grpc/alts/AltsContext$SecurityLevel;->INTEGRITY_AND_PRIVACY:Lio/grpc/alts/AltsContext$SecurityLevel;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/grpc/alts/AltsContext$SecurityLevel;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lio/grpc/alts/AltsContext$SecurityLevel;->$VALUES:[Lio/grpc/alts/AltsContext$SecurityLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/alts/AltsContext$SecurityLevel;
    .locals 1

    const-class v0, Lio/grpc/alts/AltsContext$SecurityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/AltsContext$SecurityLevel;

    return-object p0
.end method

.method public static values()[Lio/grpc/alts/AltsContext$SecurityLevel;
    .locals 1

    sget-object v0, Lio/grpc/alts/AltsContext$SecurityLevel;->$VALUES:[Lio/grpc/alts/AltsContext$SecurityLevel;

    invoke-virtual {v0}, [Lio/grpc/alts/AltsContext$SecurityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/alts/AltsContext$SecurityLevel;

    return-object v0
.end method
