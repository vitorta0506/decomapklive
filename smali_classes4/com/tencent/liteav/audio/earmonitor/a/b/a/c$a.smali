.class public final enum Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;

.field public static final enum b:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;

.field public static final enum c:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;

.field private static final synthetic d:[Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;


# instance fields
.field mParameName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;

    const-string v1, "CMD_SET_AUDIO_EFFECT_MODE_BASE"

    const/4 v2, 0x0

    const-string v3, "Karaoke_reverb_mode="

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;->a:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;

    .line 2
    new-instance v1, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;

    const-string v3, "CMD_SET_VOCAL_VOLUME_BASE"

    const/4 v4, 0x1

    const-string v5, "Karaoke_volume="

    invoke-direct {v1, v3, v4, v5}, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;->b:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;

    .line 3
    new-instance v3, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;

    const-string v5, "CMD_SET_VOCAL_EQUALIZER_MODE"

    const/4 v6, 0x2

    const-string v7, "Karaoke_eq_mode="

    invoke-direct {v3, v5, v6, v7}, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;->c:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;->d:[Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;->mParameName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;
    .locals 1

    const-class v0, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;->d:[Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;

    invoke-virtual {v0}, [Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;

    return-object v0
.end method
