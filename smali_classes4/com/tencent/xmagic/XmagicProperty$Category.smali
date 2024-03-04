.class public final enum Lcom/tencent/xmagic/XmagicProperty$Category;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/xmagic/XmagicProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/xmagic/XmagicProperty$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/xmagic/XmagicProperty$Category;

.field public static final enum BEAUTY:Lcom/tencent/xmagic/XmagicProperty$Category;

.field public static final enum BODY_BEAUTY:Lcom/tencent/xmagic/XmagicProperty$Category;

.field public static final enum KV:Lcom/tencent/xmagic/XmagicProperty$Category;

.field public static final enum LUT:Lcom/tencent/xmagic/XmagicProperty$Category;

.field public static final enum MAKEUP:Lcom/tencent/xmagic/XmagicProperty$Category;

.field public static final enum MOTION:Lcom/tencent/xmagic/XmagicProperty$Category;

.field public static final enum SEGMENTATION:Lcom/tencent/xmagic/XmagicProperty$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/tencent/xmagic/XmagicProperty$Category;

    const-string v1, "BEAUTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/xmagic/XmagicProperty$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/xmagic/XmagicProperty$Category;->BEAUTY:Lcom/tencent/xmagic/XmagicProperty$Category;

    .line 2
    new-instance v1, Lcom/tencent/xmagic/XmagicProperty$Category;

    const-string v3, "BODY_BEAUTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/xmagic/XmagicProperty$Category;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/xmagic/XmagicProperty$Category;->BODY_BEAUTY:Lcom/tencent/xmagic/XmagicProperty$Category;

    .line 3
    new-instance v3, Lcom/tencent/xmagic/XmagicProperty$Category;

    const-string v5, "LUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/xmagic/XmagicProperty$Category;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/xmagic/XmagicProperty$Category;->LUT:Lcom/tencent/xmagic/XmagicProperty$Category;

    .line 4
    new-instance v5, Lcom/tencent/xmagic/XmagicProperty$Category;

    const-string v7, "MOTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tencent/xmagic/XmagicProperty$Category;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tencent/xmagic/XmagicProperty$Category;->MOTION:Lcom/tencent/xmagic/XmagicProperty$Category;

    .line 5
    new-instance v7, Lcom/tencent/xmagic/XmagicProperty$Category;

    const-string v9, "SEGMENTATION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tencent/xmagic/XmagicProperty$Category;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tencent/xmagic/XmagicProperty$Category;->SEGMENTATION:Lcom/tencent/xmagic/XmagicProperty$Category;

    .line 6
    new-instance v9, Lcom/tencent/xmagic/XmagicProperty$Category;

    const-string v11, "MAKEUP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/tencent/xmagic/XmagicProperty$Category;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/tencent/xmagic/XmagicProperty$Category;->MAKEUP:Lcom/tencent/xmagic/XmagicProperty$Category;

    .line 7
    new-instance v11, Lcom/tencent/xmagic/XmagicProperty$Category;

    const-string v13, "KV"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/tencent/xmagic/XmagicProperty$Category;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/tencent/xmagic/XmagicProperty$Category;->KV:Lcom/tencent/xmagic/XmagicProperty$Category;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/tencent/xmagic/XmagicProperty$Category;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/tencent/xmagic/XmagicProperty$Category;->$VALUES:[Lcom/tencent/xmagic/XmagicProperty$Category;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/xmagic/XmagicProperty$Category;
    .locals 1

    const-class v0, Lcom/tencent/xmagic/XmagicProperty$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/xmagic/XmagicProperty$Category;

    return-object p0
.end method

.method public static values()[Lcom/tencent/xmagic/XmagicProperty$Category;
    .locals 1

    sget-object v0, Lcom/tencent/xmagic/XmagicProperty$Category;->$VALUES:[Lcom/tencent/xmagic/XmagicProperty$Category;

    invoke-virtual {v0}, [Lcom/tencent/xmagic/XmagicProperty$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/xmagic/XmagicProperty$Category;

    return-object v0
.end method
