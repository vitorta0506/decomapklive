.class public final enum Lcom/unity3d/ads/UnityAds$UnityAdsShowError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/UnityAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnityAdsShowError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/ads/UnityAds$UnityAdsShowError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

.field public static final enum ALREADY_SHOWING:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

.field public static final enum INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

.field public static final enum INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

.field public static final enum NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

.field public static final enum NOT_READY:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

.field public static final enum NO_CONNECTION:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

.field public static final enum VIDEO_PLAYER_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    const-string v1, "NOT_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    .line 2
    new-instance v1, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    const-string v3, "NOT_READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->NOT_READY:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    .line 3
    new-instance v3, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    const-string v5, "VIDEO_PLAYER_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->VIDEO_PLAYER_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    .line 4
    new-instance v5, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    const-string v7, "INVALID_ARGUMENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    .line 5
    new-instance v7, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    const-string v9, "NO_CONNECTION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->NO_CONNECTION:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    .line 6
    new-instance v9, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    const-string v11, "ALREADY_SHOWING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->ALREADY_SHOWING:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    .line 7
    new-instance v11, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    const-string v13, "INTERNAL_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->$VALUES:[Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$UnityAdsShowError;
    .locals 1

    const-class v0, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/ads/UnityAds$UnityAdsShowError;
    .locals 1

    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->$VALUES:[Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    invoke-virtual {v0}, [Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    return-object v0
.end method
