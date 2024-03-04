.class Lt/x;
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
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2
    iget p3, p2, Landroid/graphics/Rect;->left:I

    if-le p3, p1, :cond_0

    .line 3
    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p1

    sub-int/2addr v0, p3

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 4
    iput p1, p2, Landroid/graphics/Rect;->left:I

    :cond_0
    return-object p2
.end method
