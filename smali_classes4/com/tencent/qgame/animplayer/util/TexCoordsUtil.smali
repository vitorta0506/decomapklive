.class public final Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;",
        "",
        "()V",
        "create",
        "",
        "width",
        "",
        "height",
        "rect",
        "Lcom/tencent/qgame/animplayer/PointRect;",
        "array",
        "rotate90",
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
.field public static final INSTANCE:Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;-><init>()V

    sput-object v0, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(IILcom/tencent/qgame/animplayer/PointRect;[F)[F
    .locals 2
    .param p3    # Lcom/tencent/qgame/animplayer/PointRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getX()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/4 v1, 0x0

    aput v0, p4, v1

    .line 2
    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getY()I

    move-result v0

    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    const/4 v1, 0x1

    aput v0, p4, v1

    .line 3
    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getX()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    const/4 v1, 0x2

    aput v0, p4, v1

    .line 4
    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getH()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    div-float/2addr v0, p2

    const/4 v1, 0x3

    aput v0, p4, v1

    .line 5
    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getW()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    div-float/2addr v0, p1

    const/4 v1, 0x4

    aput v0, p4, v1

    .line 6
    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getY()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    const/4 v1, 0x5

    aput v0, p4, v1

    .line 7
    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getW()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    div-float/2addr v0, p1

    const/4 p1, 0x6

    aput v0, p4, p1

    .line 8
    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getH()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p1, p2

    const/4 p2, 0x7

    aput p1, p4, p2

    return-object p4
.end method

.method public final rotate90([F)[F
    .locals 6
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 2
    aget v3, p1, v2

    const/4 v4, 0x2

    .line 3
    aget v5, p1, v4

    aput v5, p1, v0

    const/4 v0, 0x3

    .line 4
    aget v5, p1, v0

    aput v5, p1, v2

    const/4 v2, 0x6

    .line 5
    aget v5, p1, v2

    aput v5, p1, v4

    const/4 v4, 0x7

    .line 6
    aget v5, p1, v4

    aput v5, p1, v0

    const/4 v0, 0x4

    .line 7
    aget v5, p1, v0

    aput v5, p1, v2

    const/4 v2, 0x5

    .line 8
    aget v5, p1, v2

    aput v5, p1, v4

    .line 9
    aput v1, p1, v0

    .line 10
    aput v3, p1, v2

    return-object p1
.end method
