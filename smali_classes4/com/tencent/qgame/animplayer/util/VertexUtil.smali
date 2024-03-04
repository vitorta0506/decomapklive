.class public final Lcom/tencent/qgame/animplayer/util/VertexUtil;
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
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0010\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000cH\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/util/VertexUtil;",
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
        "switchX",
        "",
        "x",
        "switchY",
        "y",
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
.field public static final INSTANCE:Lcom/tencent/qgame/animplayer/util/VertexUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/qgame/animplayer/util/VertexUtil;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/util/VertexUtil;-><init>()V

    sput-object v0, Lcom/tencent/qgame/animplayer/util/VertexUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/VertexUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final switchX(F)F
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    return p1
.end method

.method private final switchY(F)F
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    sub-float/2addr p1, v0

    const/high16 v0, -0x40800000    # -1.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    return p1
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

    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->switchX(F)F

    move-result v0

    const/4 v1, 0x0

    aput v0, p4, v1

    .line 2
    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getY()I

    move-result v0

    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->switchY(F)F

    move-result v0

    const/4 v1, 0x1

    aput v0, p4, v1

    .line 3
    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getX()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->switchX(F)F

    move-result v0

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

    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->switchY(F)F

    move-result v0

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

    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->switchX(F)F

    move-result v0

    const/4 v1, 0x4

    aput v0, p4, v1

    .line 6
    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getY()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->switchY(F)F

    move-result v0

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

    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->switchX(F)F

    move-result p1

    const/4 v0, 0x6

    aput p1, p4, v0

    .line 8
    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/PointRect;->getH()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->switchY(F)F

    move-result p1

    const/4 p2, 0x7

    aput p1, p4, p2

    return-object p4
.end method
