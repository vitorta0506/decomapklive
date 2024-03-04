.class public final enum Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

.field public static final enum BUSY:Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

.field public static final enum NETWORK_ERROR:Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

.field public static final enum NO_REFRESH_TOKEN:Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

.field public static final enum REVOKED_SESSION:Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

.field public static final enum UNKNOWN:Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

    const-string v1, "NETWORK_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;->NETWORK_ERROR:Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

    .line 2
    new-instance v1, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

    const-string v3, "REVOKED_SESSION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;->REVOKED_SESSION:Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

    .line 3
    new-instance v3, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

    const-string v5, "NO_REFRESH_TOKEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;->NO_REFRESH_TOKEN:Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

    .line 4
    new-instance v5, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

    const-string v7, "BUSY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;->BUSY:Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

    .line 5
    new-instance v7, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;->UNKNOWN:Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;->$VALUES:[Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;
    .locals 1

    const-class v0, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

    return-object p0
.end method

.method public static values()[Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;
    .locals 1

    sget-object v0, Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;->$VALUES:[Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

    invoke-virtual {v0}, [Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/kit/sdk/core/networking/RefreshAccessTokenResultError;

    return-object v0
.end method
