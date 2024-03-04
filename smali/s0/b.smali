.class public Ls0/b;
.super Ls0/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls0/f<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Ls0/f;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic h(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Ls0/b;->j(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected j(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Ls0/l;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
