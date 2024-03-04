.class public Lt0/b;
.super Lt0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt0/a<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lt0/g;)V
    .locals 0
    .param p1    # Lt0/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt0/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lt0/a;-><init>(Lt0/g;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lt0/b;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p1
.end method
