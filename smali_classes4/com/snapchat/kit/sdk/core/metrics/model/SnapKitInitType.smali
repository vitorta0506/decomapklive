.class public final enum Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType$ProtoAdapter_SnapKitInitType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum INIT_TYPE_AUTO:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

.field public static final enum INIT_TYPE_DEFERRED:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

.field public static final enum INIT_TYPE_FEATURE:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

.field public static final enum INIT_TYPE_NONE:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    const-string v1, "INIT_TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;->INIT_TYPE_NONE:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    .line 2
    new-instance v1, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    const-string v3, "INIT_TYPE_AUTO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;->INIT_TYPE_AUTO:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    .line 3
    new-instance v3, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    const-string v5, "INIT_TYPE_DEFERRED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;->INIT_TYPE_DEFERRED:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    .line 4
    new-instance v5, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    const-string v7, "INIT_TYPE_FEATURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;->INIT_TYPE_FEATURE:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;->$VALUES:[Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    .line 6
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType$ProtoAdapter_SnapKitInitType;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType$ProtoAdapter_SnapKitInitType;-><init>()V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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
    iput p3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;->INIT_TYPE_FEATURE:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;->INIT_TYPE_DEFERRED:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;->INIT_TYPE_AUTO:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;->INIT_TYPE_NONE:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;
    .locals 1

    const-class v0, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    return-object p0
.end method

.method public static values()[Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;
    .locals 1

    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;->$VALUES:[Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    invoke-virtual {v0}, [Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;->value:I

    return v0
.end method
