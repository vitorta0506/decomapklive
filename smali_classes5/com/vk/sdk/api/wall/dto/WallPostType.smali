.class public final enum Lcom/vk/sdk/api/wall/dto/WallPostType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/sdk/api/wall/dto/WallPostType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vk/sdk/api/wall/dto/WallPostType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "POST",
        "COPY",
        "REPLY",
        "POSTPONE",
        "SUGGEST",
        "POST_ADS",
        "PHOTO",
        "VIDEO",
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
.field private static final synthetic $VALUES:[Lcom/vk/sdk/api/wall/dto/WallPostType;

.field public static final enum COPY:Lcom/vk/sdk/api/wall/dto/WallPostType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "copy"
    .end annotation
.end field

.field public static final enum PHOTO:Lcom/vk/sdk/api/wall/dto/WallPostType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "photo"
    .end annotation
.end field

.field public static final enum POST:Lcom/vk/sdk/api/wall/dto/WallPostType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "post"
    .end annotation
.end field

.field public static final enum POSTPONE:Lcom/vk/sdk/api/wall/dto/WallPostType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "postpone"
    .end annotation
.end field

.field public static final enum POST_ADS:Lcom/vk/sdk/api/wall/dto/WallPostType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "post_ads"
    .end annotation
.end field

.field public static final enum REPLY:Lcom/vk/sdk/api/wall/dto/WallPostType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reply"
    .end annotation
.end field

.field public static final enum SUGGEST:Lcom/vk/sdk/api/wall/dto/WallPostType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "suggest"
    .end annotation
.end field

.field public static final enum VIDEO:Lcom/vk/sdk/api/wall/dto/WallPostType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/vk/sdk/api/wall/dto/WallPostType;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/vk/sdk/api/wall/dto/WallPostType;

    sget-object v1, Lcom/vk/sdk/api/wall/dto/WallPostType;->POST:Lcom/vk/sdk/api/wall/dto/WallPostType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/wall/dto/WallPostType;->COPY:Lcom/vk/sdk/api/wall/dto/WallPostType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/wall/dto/WallPostType;->REPLY:Lcom/vk/sdk/api/wall/dto/WallPostType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/wall/dto/WallPostType;->POSTPONE:Lcom/vk/sdk/api/wall/dto/WallPostType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/wall/dto/WallPostType;->SUGGEST:Lcom/vk/sdk/api/wall/dto/WallPostType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/wall/dto/WallPostType;->POST_ADS:Lcom/vk/sdk/api/wall/dto/WallPostType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/wall/dto/WallPostType;->PHOTO:Lcom/vk/sdk/api/wall/dto/WallPostType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/wall/dto/WallPostType;->VIDEO:Lcom/vk/sdk/api/wall/dto/WallPostType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/vk/sdk/api/wall/dto/WallPostType;

    const-string v1, "POST"

    const/4 v2, 0x0

    const-string v3, "post"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/wall/dto/WallPostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/wall/dto/WallPostType;->POST:Lcom/vk/sdk/api/wall/dto/WallPostType;

    .line 2
    new-instance v0, Lcom/vk/sdk/api/wall/dto/WallPostType;

    const-string v1, "COPY"

    const/4 v2, 0x1

    const-string v3, "copy"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/wall/dto/WallPostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/wall/dto/WallPostType;->COPY:Lcom/vk/sdk/api/wall/dto/WallPostType;

    .line 3
    new-instance v0, Lcom/vk/sdk/api/wall/dto/WallPostType;

    const-string v1, "REPLY"

    const/4 v2, 0x2

    const-string v3, "reply"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/wall/dto/WallPostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/wall/dto/WallPostType;->REPLY:Lcom/vk/sdk/api/wall/dto/WallPostType;

    .line 4
    new-instance v0, Lcom/vk/sdk/api/wall/dto/WallPostType;

    const-string v1, "POSTPONE"

    const/4 v2, 0x3

    const-string v3, "postpone"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/wall/dto/WallPostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/wall/dto/WallPostType;->POSTPONE:Lcom/vk/sdk/api/wall/dto/WallPostType;

    .line 5
    new-instance v0, Lcom/vk/sdk/api/wall/dto/WallPostType;

    const-string v1, "SUGGEST"

    const/4 v2, 0x4

    const-string v3, "suggest"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/wall/dto/WallPostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/wall/dto/WallPostType;->SUGGEST:Lcom/vk/sdk/api/wall/dto/WallPostType;

    .line 6
    new-instance v0, Lcom/vk/sdk/api/wall/dto/WallPostType;

    const-string v1, "POST_ADS"

    const/4 v2, 0x5

    const-string v3, "post_ads"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/wall/dto/WallPostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/wall/dto/WallPostType;->POST_ADS:Lcom/vk/sdk/api/wall/dto/WallPostType;

    .line 7
    new-instance v0, Lcom/vk/sdk/api/wall/dto/WallPostType;

    const-string v1, "PHOTO"

    const/4 v2, 0x6

    const-string v3, "photo"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/wall/dto/WallPostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/wall/dto/WallPostType;->PHOTO:Lcom/vk/sdk/api/wall/dto/WallPostType;

    .line 8
    new-instance v0, Lcom/vk/sdk/api/wall/dto/WallPostType;

    const-string v1, "VIDEO"

    const/4 v2, 0x7

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/wall/dto/WallPostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/wall/dto/WallPostType;->VIDEO:Lcom/vk/sdk/api/wall/dto/WallPostType;

    invoke-static {}, Lcom/vk/sdk/api/wall/dto/WallPostType;->$values()[Lcom/vk/sdk/api/wall/dto/WallPostType;

    move-result-object v0

    sput-object v0, Lcom/vk/sdk/api/wall/dto/WallPostType;->$VALUES:[Lcom/vk/sdk/api/wall/dto/WallPostType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/vk/sdk/api/wall/dto/WallPostType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/sdk/api/wall/dto/WallPostType;
    .locals 1

    const-class v0, Lcom/vk/sdk/api/wall/dto/WallPostType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/wall/dto/WallPostType;

    return-object p0
.end method

.method public static values()[Lcom/vk/sdk/api/wall/dto/WallPostType;
    .locals 1

    sget-object v0, Lcom/vk/sdk/api/wall/dto/WallPostType;->$VALUES:[Lcom/vk/sdk/api/wall/dto/WallPostType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/sdk/api/wall/dto/WallPostType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/wall/dto/WallPostType;->value:Ljava/lang/String;

    return-object v0
.end method
