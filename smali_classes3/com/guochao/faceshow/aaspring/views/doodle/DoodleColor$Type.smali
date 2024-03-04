.class public final enum Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

.field public static final enum BITMAP:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

.field public static final enum COLOR:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    const-string v1, "COLOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;->COLOR:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    const-string v3, "BITMAP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;->BITMAP:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;->$VALUES:[Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;
    .locals 1

    const-class v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    return-object p0
.end method

.method public static values()[Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;->$VALUES:[Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    invoke-virtual {v0}, [Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    return-object v0
.end method
