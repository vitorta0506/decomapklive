.class public final enum Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/users/dto/UsersOnlineInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "RECENTLY",
        "LAST_WEEK",
        "LAST_MONTH",
        "LONG_AGO",
        "NOT_SHOW",
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
.field private static final synthetic $VALUES:[Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

.field public static final enum LAST_MONTH:Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_month"
    .end annotation
.end field

.field public static final enum LAST_WEEK:Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_week"
    .end annotation
.end field

.field public static final enum LONG_AGO:Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "long_ago"
    .end annotation
.end field

.field public static final enum NOT_SHOW:Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "not_show"
    .end annotation
.end field

.field public static final enum RECENTLY:Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recently"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    sget-object v1, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;->RECENTLY:Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;->LAST_WEEK:Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;->LAST_MONTH:Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;->LONG_AGO:Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;->NOT_SHOW:Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    const-string v1, "RECENTLY"

    const/4 v2, 0x0

    const-string v3, "recently"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;->RECENTLY:Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    .line 2
    new-instance v0, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    const-string v1, "LAST_WEEK"

    const/4 v2, 0x1

    const-string v3, "last_week"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;->LAST_WEEK:Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    .line 3
    new-instance v0, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    const-string v1, "LAST_MONTH"

    const/4 v2, 0x2

    const-string v3, "last_month"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;->LAST_MONTH:Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    .line 4
    new-instance v0, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    const-string v1, "LONG_AGO"

    const/4 v2, 0x3

    const-string v3, "long_ago"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;->LONG_AGO:Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    .line 5
    new-instance v0, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    const-string v1, "NOT_SHOW"

    const/4 v2, 0x4

    const-string v3, "not_show"

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;->NOT_SHOW:Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    invoke-static {}, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;->$values()[Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    move-result-object v0

    sput-object v0, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;->$VALUES:[Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

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
    iput-object p3, p0, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;
    .locals 1

    const-class v0, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    return-object p0
.end method

.method public static values()[Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;
    .locals 1

    sget-object v0, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;->$VALUES:[Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;->value:Ljava/lang/String;

    return-object v0
.end method
