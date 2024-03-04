.class public final enum Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lla/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;",
        ">;",
        "Lla/e;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

.field public static final enum BITMAP:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

.field public static final enum BRUSH:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

.field public static final enum COPY:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

.field public static final enum ERASER:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

.field public static final enum MOSAIC:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

.field public static final enum TEXT:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;


# instance fields
.field private mCopyLocation:Lcom/guochao/faceshow/aaspring/views/doodle/a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    const-string v1, "BRUSH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->BRUSH:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    const-string v3, "COPY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->COPY:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    .line 3
    new-instance v3, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    const-string v5, "ERASER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->ERASER:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    .line 4
    new-instance v5, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    const-string v7, "TEXT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->TEXT:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    .line 5
    new-instance v7, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    const-string v9, "BITMAP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->BITMAP:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    .line 6
    new-instance v9, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    const-string v11, "MOSAIC"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->MOSAIC:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->$VALUES:[Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

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

.method public static valueOf(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;
    .locals 1

    const-class v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    return-object p0
.end method

.method public static values()[Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->$VALUES:[Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    invoke-virtual {v0}, [Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    return-object v0
.end method


# virtual methods
.method public config(Lla/c;Landroid/graphics/Paint;)V
    .locals 2

    .line 1
    sget-object p2, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->COPY:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-eq p0, p2, :cond_0

    sget-object p2, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->ERASER:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-ne p0, p2, :cond_2

    .line 2
    :cond_0
    invoke-interface {p1}, Lla/c;->k()Lla/a;

    move-result-object p2

    .line 3
    invoke-interface {p1}, Lla/c;->getColor()Lla/b;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1}, Lla/c;->getColor()Lla/b;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p2}, Lla/a;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    invoke-interface {p2}, Lla/a;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {p1, v0}, Lla/c;->setColor(Lla/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public copy()Lla/e;
    .locals 0

    return-object p0
.end method

.method public drawHelpers(Landroid/graphics/Canvas;Lla/a;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->COPY:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-ne p0, v0, :cond_0

    .line 2
    instance-of v0, p2, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->mCopyLocation:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    invoke-interface {p2}, Lla/a;->getSize()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->c(Landroid/graphics/Canvas;F)V

    :cond_0
    return-void
.end method

.method public getCopyLocation()Lcom/guochao/faceshow/aaspring/views/doodle/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->COPY:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->mCopyLocation:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    if-nez v0, :cond_2

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->mCopyLocation:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/a;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->mCopyLocation:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    .line 6
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->mCopyLocation:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    return-object v0
.end method
