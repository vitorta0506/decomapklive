.class public final enum Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/V2TXLiveDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "V2TXLiveFillMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

.field public static final enum V2TXLiveFillModeFill:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

.field public static final enum V2TXLiveFillModeFit:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

.field public static final enum V2TXLiveFillModeScaleFill:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    const-string v1, "V2TXLiveFillModeFill"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->V2TXLiveFillModeFill:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    .line 2
    new-instance v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    const-string v3, "V2TXLiveFillModeFit"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->V2TXLiveFillModeFit:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    .line 3
    new-instance v3, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    const-string v5, "V2TXLiveFillModeScaleFill"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->V2TXLiveFillModeScaleFill:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->$VALUES:[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;
    .locals 1

    const-class v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    return-object p0
.end method

.method public static values()[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;
    .locals 1

    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->$VALUES:[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    invoke-virtual {v0}, [Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    return-object v0
.end method
