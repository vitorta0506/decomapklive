.class public final enum Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gax/rpc/mtls/MtlsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MtlsEndpointUsagePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

.field public static final enum ALWAYS:Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

.field public static final enum AUTO:Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

.field public static final enum NEVER:Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

    const-string v1, "NEVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;->NEVER:Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

    .line 2
    new-instance v1, Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

    const-string v3, "AUTO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;->AUTO:Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

    .line 3
    new-instance v3, Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

    const-string v5, "ALWAYS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;->ALWAYS:Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;->$VALUES:[Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;
    .locals 1

    const-class v0, Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

    return-object p0
.end method

.method public static values()[Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;
    .locals 1

    sget-object v0, Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;->$VALUES:[Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

    invoke-virtual {v0}, [Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

    return-object v0
.end method
