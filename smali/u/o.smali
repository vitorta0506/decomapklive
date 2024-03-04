.class public Lu/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu/o;->a:Landroid/graphics/Rect;

    .line 3
    iput p2, p0, Lu/o;->b:I

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lu/o;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lu/o;

    .line 3
    iget v2, p0, Lu/o;->b:I

    iget p1, p1, Lu/o;->b:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lu/o;->b:I

    return v0
.end method
