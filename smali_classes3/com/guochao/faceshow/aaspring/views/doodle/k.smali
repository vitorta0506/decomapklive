.class public Lcom/guochao/faceshow/aaspring/views/doodle/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Landroid/graphics/PointF;

.field private c:F

.field private d:F

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/k;->b:Landroid/graphics/PointF;

    return-object v0
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/k;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/k;->d:F

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/k;->c:F

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f(Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/k;->b:Landroid/graphics/PointF;

    return-void
.end method

.method public g(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/k;->a:Landroid/graphics/Rect;

    return-void
.end method

.method public h(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/k;->d:F

    return-void
.end method

.method public i(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/k;->c:F

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/k;->e:Ljava/lang/String;

    return-void
.end method
