.class public final enum Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lla/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;",
        ">;",
        "Lla/g;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

.field public static final enum ARROW:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

.field public static final enum FILL_CIRCLE:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

.field public static final enum FILL_RECT:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

.field public static final enum HAND_WRITE:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

.field public static final enum HOLLOW_CIRCLE:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

.field public static final enum HOLLOW_RECT:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

.field public static final enum LINE:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    const-string v1, "HAND_WRITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->HAND_WRITE:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    const-string v3, "ARROW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->ARROW:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    .line 3
    new-instance v3, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    const-string v5, "LINE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->LINE:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    .line 4
    new-instance v5, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    const-string v7, "FILL_CIRCLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->FILL_CIRCLE:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    .line 5
    new-instance v7, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    const-string v9, "HOLLOW_CIRCLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->HOLLOW_CIRCLE:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    .line 6
    new-instance v9, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    const-string v11, "FILL_RECT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->FILL_RECT:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    .line 7
    new-instance v11, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    const-string v13, "HOLLOW_RECT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->HOLLOW_RECT:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->$VALUES:[Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

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

.method public static valueOf(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;
    .locals 1

    const-class v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    return-object p0
.end method

.method public static values()[Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->$VALUES:[Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    invoke-virtual {v0}, [Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    return-object v0
.end method


# virtual methods
.method public config(Lla/c;Landroid/graphics/Paint;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lla/c;->getShape()Lla/g;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->ARROW:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lla/c;->getShape()Lla/g;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->FILL_CIRCLE:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lla/c;->getShape()Lla/g;

    move-result-object p1

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->FILL_RECT:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_1
    return-void
.end method

.method public copy()Lla/g;
    .locals 0

    return-object p0
.end method

.method public drawHelpers(Landroid/graphics/Canvas;Lla/a;)V
    .locals 0

    return-void
.end method
