.class public final enum Lcom/snap/kit/common/model/KitType$Enum;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snap/kit/common/model/KitType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Enum"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snap/kit/common/model/KitType$Enum$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/snap/kit/common/model/KitType$Enum;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snap/kit/common/model/KitType$Enum;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/snap/kit/common/model/KitType$Enum;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum BITMOJI_KIT:Lcom/snap/kit/common/model/KitType$Enum;

.field public static final enum CREATIVE_KIT:Lcom/snap/kit/common/model/KitType$Enum;

.field public static final enum LOGIN_KIT:Lcom/snap/kit/common/model/KitType$Enum;

.field public static final enum NONE:Lcom/snap/kit/common/model/KitType$Enum;

.field public static final enum STORY_KIT:Lcom/snap/kit/common/model/KitType$Enum;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/snap/kit/common/model/KitType$Enum;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/snap/kit/common/model/KitType$Enum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snap/kit/common/model/KitType$Enum;->NONE:Lcom/snap/kit/common/model/KitType$Enum;

    .line 2
    new-instance v1, Lcom/snap/kit/common/model/KitType$Enum;

    const-string v3, "LOGIN_KIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/snap/kit/common/model/KitType$Enum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/snap/kit/common/model/KitType$Enum;->LOGIN_KIT:Lcom/snap/kit/common/model/KitType$Enum;

    .line 3
    new-instance v3, Lcom/snap/kit/common/model/KitType$Enum;

    const-string v5, "BITMOJI_KIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/snap/kit/common/model/KitType$Enum;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/snap/kit/common/model/KitType$Enum;->BITMOJI_KIT:Lcom/snap/kit/common/model/KitType$Enum;

    .line 4
    new-instance v5, Lcom/snap/kit/common/model/KitType$Enum;

    const-string v7, "CREATIVE_KIT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/snap/kit/common/model/KitType$Enum;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/snap/kit/common/model/KitType$Enum;->CREATIVE_KIT:Lcom/snap/kit/common/model/KitType$Enum;

    .line 5
    new-instance v7, Lcom/snap/kit/common/model/KitType$Enum;

    const-string v9, "STORY_KIT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/snap/kit/common/model/KitType$Enum;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/snap/kit/common/model/KitType$Enum;->STORY_KIT:Lcom/snap/kit/common/model/KitType$Enum;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/snap/kit/common/model/KitType$Enum;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/snap/kit/common/model/KitType$Enum;->$VALUES:[Lcom/snap/kit/common/model/KitType$Enum;

    .line 7
    new-instance v0, Lcom/snap/kit/common/model/KitType$Enum$a;

    invoke-direct {v0}, Lcom/snap/kit/common/model/KitType$Enum$a;-><init>()V

    sput-object v0, Lcom/snap/kit/common/model/KitType$Enum;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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
    iput p3, p0, Lcom/snap/kit/common/model/KitType$Enum;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/snap/kit/common/model/KitType$Enum;
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
    sget-object p0, Lcom/snap/kit/common/model/KitType$Enum;->STORY_KIT:Lcom/snap/kit/common/model/KitType$Enum;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/snap/kit/common/model/KitType$Enum;->CREATIVE_KIT:Lcom/snap/kit/common/model/KitType$Enum;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/snap/kit/common/model/KitType$Enum;->BITMOJI_KIT:Lcom/snap/kit/common/model/KitType$Enum;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/snap/kit/common/model/KitType$Enum;->LOGIN_KIT:Lcom/snap/kit/common/model/KitType$Enum;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lcom/snap/kit/common/model/KitType$Enum;->NONE:Lcom/snap/kit/common/model/KitType$Enum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snap/kit/common/model/KitType$Enum;
    .locals 1

    const-class v0, Lcom/snap/kit/common/model/KitType$Enum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/snap/kit/common/model/KitType$Enum;

    return-object p0
.end method

.method public static values()[Lcom/snap/kit/common/model/KitType$Enum;
    .locals 1

    sget-object v0, Lcom/snap/kit/common/model/KitType$Enum;->$VALUES:[Lcom/snap/kit/common/model/KitType$Enum;

    invoke-virtual {v0}, [Lcom/snap/kit/common/model/KitType$Enum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snap/kit/common/model/KitType$Enum;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/snap/kit/common/model/KitType$Enum;->value:I

    return v0
.end method
