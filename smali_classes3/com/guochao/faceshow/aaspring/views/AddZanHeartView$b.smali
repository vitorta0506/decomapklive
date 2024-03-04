.class Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFFFF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float v1, v0, v0

    mul-float v1, v1, v0

    mul-float v1, v1, p2

    const/high16 p2, 0x40400000    # 3.0f

    mul-float p2, p2, v0

    mul-float v0, v0, p2

    mul-float v0, v0, p1

    mul-float v0, v0, p4

    add-float/2addr v1, v0

    mul-float p2, p2, p1

    mul-float p2, p2, p1

    mul-float p2, p2, p5

    add-float/2addr v1, p2

    mul-float p2, p1, p1

    mul-float p2, p2, p1

    mul-float p2, p2, p3

    add-float/2addr v1, p2

    return v1
.end method
