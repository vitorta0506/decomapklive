.class Lt/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/o;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2
    iget p3, p1, Landroid/graphics/Rect;->right:I

    if-ge p3, p2, :cond_0

    .line 3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int p3, p2, p3

    add-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 4
    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    return-object p1
.end method
