.class public final enum Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType$ProtoAdapter_StoryKitMediaType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum STORY_KIT_MEDIA_TYPE_IMAGE:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

.field public static final enum STORY_KIT_MEDIA_TYPE_NONE:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

.field public static final enum STORY_KIT_MEDIA_TYPE_VIDEO:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    const-string v1, "STORY_KIT_MEDIA_TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;->STORY_KIT_MEDIA_TYPE_NONE:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    .line 2
    new-instance v1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    const-string v3, "STORY_KIT_MEDIA_TYPE_VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;->STORY_KIT_MEDIA_TYPE_VIDEO:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    .line 3
    new-instance v3, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    const-string v5, "STORY_KIT_MEDIA_TYPE_IMAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;->STORY_KIT_MEDIA_TYPE_IMAGE:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;->$VALUES:[Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    .line 5
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType$ProtoAdapter_StoryKitMediaType;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType$ProtoAdapter_StoryKitMediaType;-><init>()V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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
    iput p3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;
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
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;->STORY_KIT_MEDIA_TYPE_IMAGE:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;->STORY_KIT_MEDIA_TYPE_VIDEO:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;->STORY_KIT_MEDIA_TYPE_NONE:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;
    .locals 1

    const-class v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    return-object p0
.end method

.method public static values()[Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;
    .locals 1

    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;->$VALUES:[Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    invoke-virtual {v0}, [Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;->value:I

    return v0
.end method
