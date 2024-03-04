.class public final enum Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

.field public static final enum CLICK:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

.field public static final enum DRAG:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

.field public static final enum FLING:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;->CLICK:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

    const-string v3, "FLING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;->FLING:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

    new-instance v3, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

    const-string v5, "DRAG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;->DRAG:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;->$VALUES:[Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

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

.method public static valueOf(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;
    .locals 1

    const-class v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

    return-object p0
.end method

.method public static values()[Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;->$VALUES:[Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

    invoke-virtual {v0}, [Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

    return-object v0
.end method
