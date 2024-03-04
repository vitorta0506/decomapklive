.class public final enum Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

.field public static final enum C2C_SEND_FSX1:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

.field public static final enum C2C_SEND_GIFT:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

.field public static final enum CARD:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

.field public static final enum GIF:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

.field public static final enum GIFT:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

.field public static final enum INVALID:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

.field public static final enum MUSIC:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

.field public static final enum TYPING:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    const-string v1, "TYPING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->TYPING:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    const-string v3, "INVALID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->INVALID:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    .line 3
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    const-string v5, "GIF"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->GIF:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    .line 4
    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    const-string v7, "GIFT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->GIFT:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    .line 5
    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    const-string v9, "MUSIC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->MUSIC:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    .line 6
    new-instance v9, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    const-string v11, "CARD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->CARD:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    .line 7
    new-instance v11, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    const-string v13, "C2C_SEND_GIFT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->C2C_SEND_GIFT:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    .line 8
    new-instance v13, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    const-string v15, "C2C_SEND_FSX1"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->C2C_SEND_FSX1:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->$VALUES:[Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;
    .locals 1

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    return-object p0
.end method

.method public static values()[Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->$VALUES:[Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    invoke-virtual {v0}, [Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    return-object v0
.end method
