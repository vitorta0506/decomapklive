.class Lcom/scwang/smartrefresh/header/DropBoxHeader$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/header/DropBoxHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scwang/smartrefresh/header/DropBoxHeader$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/scwang/smartrefresh/header/DropBoxHeader$e;-><init>()V

    return-void
.end method


# virtual methods
.method a(IIII)Lcom/scwang/smartrefresh/header/DropBoxHeader$e;
    .locals 5

    .line 1
    iput p3, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$e;->i:I

    .line 2
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$e;->a:I

    sub-int/2addr p2, p4

    .line 3
    iput p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$e;->c:I

    mul-int/lit8 p4, p3, 0x2

    sub-int/2addr p2, p4

    .line 4
    iput p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$e;->d:I

    int-to-double v1, p3

    const-wide v3, 0x3ff0c152382d7365L    # 1.0471975511965976

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    double-to-int p2, v1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$e;->e:I

    .line 6
    iget p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$e;->d:I

    div-int/lit8 p4, p3, 0x2

    add-int/2addr p2, p4

    iput p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$e;->f:I

    .line 7
    iget p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$e;->c:I

    sub-int p4, p2, p4

    iput p4, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$e;->g:I

    sub-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$e;->h:I

    sub-int/2addr p2, p3

    .line 9
    iput p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$e;->b:I

    return-object p0
.end method
