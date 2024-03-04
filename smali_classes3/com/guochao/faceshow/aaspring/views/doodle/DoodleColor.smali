.class public Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lla/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/graphics/Bitmap;

.field private c:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

.field private d:Landroid/graphics/Matrix;

.field private e:I

.field private f:Landroid/graphics/Shader$TileMode;

.field private g:Landroid/graphics/Shader$TileMode;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->e:I

    .line 3
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->f:Landroid/graphics/Shader$TileMode;

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->g:Landroid/graphics/Shader$TileMode;

    .line 5
    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;->COLOR:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->c:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    .line 6
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 1

    .line 8
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->e:I

    .line 11
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->f:Landroid/graphics/Shader$TileMode;

    .line 12
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->g:Landroid/graphics/Shader$TileMode;

    .line 13
    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;->BITMAP:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->c:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    .line 14
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->d:Landroid/graphics/Matrix;

    .line 15
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->b:Landroid/graphics/Bitmap;

    .line 16
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->f:Landroid/graphics/Shader$TileMode;

    .line 17
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->g:Landroid/graphics/Shader$TileMode;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->e:I

    return v0
.end method

.method public c()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->d:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public config(Lla/c;Landroid/graphics/Paint;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/views/doodle/b;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->c:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;->COLOR:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    if-ne p1, v0, :cond_0

    .line 3
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->a:I

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;->BITMAP:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    if-ne p1, v0, :cond_1

    .line 6
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->f:Landroid/graphics/Shader$TileMode;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->g:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->d:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 8
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    :goto_0
    return-void
.end method

.method public copy()Lla/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->c:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    sget-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;->COLOR:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->a:I

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;-><init>(I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->f:Landroid/graphics/Shader$TileMode;

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->f:Landroid/graphics/Shader$TileMode;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->g:Landroid/graphics/Shader$TileMode;

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->g:Landroid/graphics/Shader$TileMode;

    .line 6
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->d:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->d:Landroid/graphics/Matrix;

    .line 7
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->e:I

    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->e:I

    return-object v0
.end method

.method public d()Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->c:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->e:I

    return-void
.end method

.method public f(Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->d:Landroid/graphics/Matrix;

    return-void
.end method
