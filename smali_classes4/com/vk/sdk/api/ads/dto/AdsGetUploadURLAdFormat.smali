.class public final enum Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "IMAGE_AND_TEXT",
        "BIG_IMAGE",
        "EXCLUSIVE_FORMAT",
        "COMMUNITY_SQUARE_IMAGE",
        "SPECIAL_APP_FORMAT",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

.field public static final enum BIG_IMAGE:Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "2"
    .end annotation
.end field

.field public static final enum COMMUNITY_SQUARE_IMAGE:Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "4"
    .end annotation
.end field

.field public static final enum EXCLUSIVE_FORMAT:Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "3"
    .end annotation
.end field

.field public static final enum IMAGE_AND_TEXT:Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "1"
    .end annotation
.end field

.field public static final enum SPECIAL_APP_FORMAT:Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "7"
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    sget-object v1, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;->IMAGE_AND_TEXT:Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;->BIG_IMAGE:Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;->EXCLUSIVE_FORMAT:Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;->COMMUNITY_SQUARE_IMAGE:Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;->SPECIAL_APP_FORMAT:Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    const-string v1, "IMAGE_AND_TEXT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;->IMAGE_AND_TEXT:Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    .line 2
    new-instance v0, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    const-string v1, "BIG_IMAGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;->BIG_IMAGE:Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    .line 3
    new-instance v0, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    const-string v1, "EXCLUSIVE_FORMAT"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;->EXCLUSIVE_FORMAT:Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    .line 4
    new-instance v0, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    const-string v1, "COMMUNITY_SQUARE_IMAGE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;->COMMUNITY_SQUARE_IMAGE:Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    .line 5
    new-instance v0, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    const-string v1, "SPECIAL_APP_FORMAT"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;->SPECIAL_APP_FORMAT:Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    invoke-static {}, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;->$values()[Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    move-result-object v0

    sput-object v0, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;->$VALUES:[Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

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
    iput p3, p0, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;
    .locals 1

    const-class v0, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    return-object p0
.end method

.method public static values()[Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;
    .locals 1

    sget-object v0, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;->$VALUES:[Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/vk/sdk/api/ads/dto/AdsGetUploadURLAdFormat;->value:I

    return v0
.end method
