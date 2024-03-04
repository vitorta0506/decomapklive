.class public final enum Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;",
        "",
        "(Ljava/lang/String;I)V",
        "EIGHT",
        "TEN",
        "ELEVEN",
        "component_liveroom_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

.field public static final enum EIGHT:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

.field public static final enum ELEVEN:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

.field public static final enum TEN:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;


# direct methods
.method private static final synthetic $values()[Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

    sget-object v1, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;->EIGHT:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;->TEN:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;->ELEVEN:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

    const-string v1, "EIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;->EIGHT:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

    new-instance v0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

    const-string v1, "TEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;->TEN:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

    new-instance v0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

    const-string v1, "ELEVEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;->ELEVEN:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

    invoke-static {}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;->$values()[Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

    move-result-object v0

    sput-object v0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;->$VALUES:[Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;
    .locals 1

    const-class v0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

    return-object p0
.end method

.method public static values()[Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;
    .locals 1

    sget-object v0, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;->$VALUES:[Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;

    return-object v0
.end method
