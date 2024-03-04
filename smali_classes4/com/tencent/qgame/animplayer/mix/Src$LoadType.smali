.class public final enum Lcom/tencent/qgame/animplayer/mix/Src$LoadType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qgame/animplayer/mix/Src;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/qgame/animplayer/mix/Src$LoadType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/mix/Src$LoadType;",
        "",
        "type",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "UNKNOWN",
        "NET",
        "LOCAL",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

.field public static final enum LOCAL:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

.field public static final enum NET:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

.field public static final enum UNKNOWN:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;


# instance fields
.field private final type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    new-instance v1, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    const-string/jumbo v4, "unknown"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;->UNKNOWN:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    const-string v2, "NET"

    const/4 v3, 0x1

    const-string v4, "net"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;->NET:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    const-string v2, "LOCAL"

    const/4 v3, 0x2

    const-string v4, "local"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;->LOCAL:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;->$VALUES:[Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qgame/animplayer/mix/Src$LoadType;
    .locals 1

    const-class v0, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/qgame/animplayer/mix/Src$LoadType;
    .locals 1

    sget-object v0, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;->$VALUES:[Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    invoke-virtual {v0}, [Lcom/tencent/qgame/animplayer/mix/Src$LoadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;->type:Ljava/lang/String;

    return-object v0
.end method
