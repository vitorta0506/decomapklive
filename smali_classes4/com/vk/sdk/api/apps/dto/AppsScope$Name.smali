.class public final enum Lcom/vk/sdk/api/apps/dto/AppsScope$Name;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/apps/dto/AppsScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Name"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/sdk/api/apps/dto/AppsScope$Name;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vk/sdk/api/apps/dto/AppsScope$Name;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "FRIENDS",
        "PHOTOS",
        "VIDEO",
        "PAGES",
        "STATUS",
        "NOTES",
        "WALL",
        "DOCS",
        "GROUPS",
        "STATS",
        "MARKET",
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
.field private static final synthetic $VALUES:[Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

.field public static final enum DOCS:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "docs"
    .end annotation
.end field

.field public static final enum FRIENDS:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friends"
    .end annotation
.end field

.field public static final enum GROUPS:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "groups"
    .end annotation
.end field

.field public static final enum MARKET:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "market"
    .end annotation
.end field

.field public static final enum NOTES:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notes"
    .end annotation
.end field

.field public static final enum PAGES:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pages"
    .end annotation
.end field

.field public static final enum PHOTOS:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "photos"
    .end annotation
.end field

.field public static final enum STATS:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stats"
    .end annotation
.end field

.field public static final enum STATUS:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field public static final enum VIDEO:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video"
    .end annotation
.end field

.field public static final enum WALL:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wall"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/vk/sdk/api/apps/dto/AppsScope$Name;
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    sget-object v1, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->FRIENDS:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->PHOTOS:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->VIDEO:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->PAGES:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->STATUS:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->NOTES:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->WALL:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->DOCS:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->GROUPS:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->STATS:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->MARKET:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const-string v1, "FRIENDS"

    const/4 v2, 0x0

    const-string v3, "friends"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->FRIENDS:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    .line 2
    new-instance v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const-string v1, "PHOTOS"

    const/4 v2, 0x1

    const-string v3, "photos"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->PHOTOS:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    .line 3
    new-instance v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const-string v1, "VIDEO"

    const/4 v2, 0x2

    const-string/jumbo v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->VIDEO:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    .line 4
    new-instance v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const-string v1, "PAGES"

    const/4 v2, 0x3

    const-string v3, "pages"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->PAGES:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    .line 5
    new-instance v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const-string v1, "STATUS"

    const/4 v2, 0x4

    const-string/jumbo v3, "status"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->STATUS:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    .line 6
    new-instance v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const-string v1, "NOTES"

    const/4 v2, 0x5

    const-string v3, "notes"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->NOTES:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    .line 7
    new-instance v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const-string v1, "WALL"

    const/4 v2, 0x6

    const-string/jumbo v3, "wall"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->WALL:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    .line 8
    new-instance v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const-string v1, "DOCS"

    const/4 v2, 0x7

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->DOCS:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    .line 9
    new-instance v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const-string v1, "GROUPS"

    const/16 v2, 0x8

    const-string v3, "groups"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->GROUPS:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    .line 10
    new-instance v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const-string v1, "STATS"

    const/16 v2, 0x9

    const-string/jumbo v3, "stats"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->STATS:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    .line 11
    new-instance v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    const-string v1, "MARKET"

    const/16 v2, 0xa

    const-string v3, "market"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->MARKET:Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    invoke-static {}, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->$values()[Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    move-result-object v0

    sput-object v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->$VALUES:[Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

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
    iput-object p3, p0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/sdk/api/apps/dto/AppsScope$Name;
    .locals 1

    const-class v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    return-object p0
.end method

.method public static values()[Lcom/vk/sdk/api/apps/dto/AppsScope$Name;
    .locals 1

    sget-object v0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->$VALUES:[Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/sdk/api/apps/dto/AppsScope$Name;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/apps/dto/AppsScope$Name;->value:Ljava/lang/String;

    return-object v0
.end method
