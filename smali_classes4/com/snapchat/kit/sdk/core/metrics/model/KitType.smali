.class public final enum Lcom/snapchat/kit/sdk/core/metrics/model/KitType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/core/metrics/model/KitType$ProtoAdapter_KitType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/KitType;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/KitType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum BITMOJI_KIT:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

.field public static final enum CREATIVE_KIT:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

.field public static final enum LOGIN_KIT:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

.field public static final enum STORY_KIT:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

.field public static final enum UNKNOWN_KIT_TYPE:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    const-string v1, "UNKNOWN_KIT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->UNKNOWN_KIT_TYPE:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    .line 2
    new-instance v1, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    const-string v3, "BITMOJI_KIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->BITMOJI_KIT:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    .line 3
    new-instance v3, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    const-string v5, "CREATIVE_KIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->CREATIVE_KIT:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    .line 4
    new-instance v5, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    const-string v7, "LOGIN_KIT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->LOGIN_KIT:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    .line 5
    new-instance v7, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    const-string v9, "STORY_KIT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->STORY_KIT:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->$VALUES:[Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    .line 7
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitType$ProtoAdapter_KitType;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/KitType$ProtoAdapter_KitType;-><init>()V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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
    iput p3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/snapchat/kit/sdk/core/metrics/model/KitType;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->STORY_KIT:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->LOGIN_KIT:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->CREATIVE_KIT:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->BITMOJI_KIT:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->UNKNOWN_KIT_TYPE:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitType;
    .locals 1

    const-class v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    return-object p0
.end method

.method public static values()[Lcom/snapchat/kit/sdk/core/metrics/model/KitType;
    .locals 1

    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->$VALUES:[Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    invoke-virtual {v0}, [Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->value:I

    return v0
.end method
