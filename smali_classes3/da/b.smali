.class final Lda/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "b"

.field private static final e:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lda/b;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lda/b;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;I)I
    .locals 10

    const-string v0, "CameraManager"

    const-string v1, "findBestMotZoomValue"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lda/b;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    .line 3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 4
    :try_start_0
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double v6, v6, v4

    double-to-int v6, v6

    int-to-double v7, p1

    sub-double/2addr v7, v4

    .line 5
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sub-int v7, p1, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v7, v7

    cmpg-double v9, v4, v7

    if-gez v9, :cond_0

    move v3, v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    return p1

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private static b(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10

    .line 1
    sget-object v0, Lda/b;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v6, p0, v3

    .line 2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x78

    .line 3
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const-string v8, "Bad preview-size: "

    if-gez v7, :cond_0

    .line 4
    sget-object v7, Lda/b;->d:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v7, v7, 0x1

    .line 6
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget v7, p1, Landroid/graphics/Point;->x:I

    sub-int v7, v9, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p1, Landroid/graphics/Point;->y:I

    sub-int v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    if-nez v7, :cond_1

    move v5, v6

    move v4, v9

    goto :goto_2

    :cond_1
    if-ge v7, v2, :cond_2

    move v5, v6

    move v2, v7

    move v4, v9

    goto :goto_1

    .line 8
    :catch_0
    sget-object v7, Lda/b;->d:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-lez v4, :cond_4

    if-lez v5, :cond_4

    .line 9
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    const-string v0, "preview-size-values"

    .line 1
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "preview-size-value"

    .line 2
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 p0, 0x0

    if-eqz v0, :cond_1

    .line 3
    sget-object p0, Lda/b;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preview-size-values parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {v0, p1}, Lda/b;->b(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    :cond_1
    if-nez p0, :cond_2

    .line 5
    new-instance p0, Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    iget p1, p1, Landroid/graphics/Point;->y:I

    shr-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    invoke-direct {p0, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    :cond_2
    return-object p0
.end method

.method private h(Landroid/hardware/Camera$Parameters;)V
    .locals 8

    const-string v0, "CameraManager"

    const-string v1, "setZoom"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "zoom-supported"

    .line 2
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    const-string v1, "max-zoom"

    .line 4
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    if-eqz v1, :cond_1

    .line 5
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    mul-double v4, v4, v2

    double-to-int v4, v4

    if-le v0, v4, :cond_1

    move v0, v4

    goto :goto_0

    .line 6
    :catch_0
    sget-object v4, Lda/b;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad max-zoom: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string v4, "taking-picture-zoom-max"

    .line 7
    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 8
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-le v0, v5, :cond_2

    move v0, v5

    goto :goto_1

    .line 9
    :catch_1
    sget-object v5, Lda/b;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad taking-picture-zoom-max: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const-string v5, "mot-zoom-values"

    .line 10
    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 11
    invoke-static {v5, v0}, Lda/b;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    :cond_3
    const-string v6, "mot-zoom-step"

    .line 12
    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 13
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double v6, v6, v2

    double-to-int v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_4

    .line 14
    rem-int v6, v0, v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    sub-int/2addr v0, v6

    goto :goto_2

    :catch_2
    nop

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    int-to-double v5, v0

    div-double/2addr v5, v2

    .line 15
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zoom"

    invoke-virtual {p1, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v4, :cond_7

    const-string v1, "taking-picture-zoom"

    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :cond_7
    return-void
.end method


# virtual methods
.method c()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lda/b;->c:Landroid/graphics/Point;

    return-object v0
.end method

.method e()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lda/b;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method f(Landroid/hardware/Camera;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lda/b;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lda/b;->b:Landroid/graphics/Point;

    .line 5
    sget-object v0, Lda/b;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen resolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lda/b;->b:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 7
    iget-object v1, p0, Lda/b;->b:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 8
    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 9
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    if-ge v2, v3, :cond_0

    .line 10
    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 11
    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 12
    :cond_0
    invoke-static {p1, v0}, Lda/b;->d(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lda/b;->c:Landroid/graphics/Point;

    return-void
.end method

.method g(Landroid/hardware/Camera;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2
    sget-object v1, Lda/b;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting preview size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lda/b;->c:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lda/b;->c:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 4
    invoke-direct {p0, v0}, Lda/b;->h(Landroid/hardware/Camera$Parameters;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Nexus 5X"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10e

    .line 6
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x5a

    .line 7
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 8
    :goto_0
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method
