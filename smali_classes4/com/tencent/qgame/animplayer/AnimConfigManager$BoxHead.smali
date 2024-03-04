.class final Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qgame/animplayer/AnimConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BoxHead"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;",
        "",
        "()V",
        "length",
        "",
        "getLength",
        "()I",
        "setLength",
        "(I)V",
        "startIndex",
        "",
        "getStartIndex",
        "()J",
        "setStartIndex",
        "(J)V",
        "type",
        "",
        "getType",
        "()Ljava/lang/String;",
        "setType",
        "(Ljava/lang/String;)V",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private length:I

.field private startIndex:J

.field private type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLength()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;->length:I

    return v0
.end method

.method public final getStartIndex()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;->startIndex:J

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final setLength(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;->length:I

    return-void
.end method

.method public final setStartIndex(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;->startIndex:J

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;->type:Ljava/lang/String;

    return-void
.end method
