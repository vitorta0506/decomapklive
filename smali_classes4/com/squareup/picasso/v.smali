.class Lcom/squareup/picasso/v;
.super Lcom/squareup/picasso/u;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/squareup/picasso/u;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/squareup/picasso/v;->a:Landroid/content/Context;

    return-void
.end method

.method private static j(Landroid/content/res/Resources;ILcom/squareup/picasso/s;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/squareup/picasso/u;->d(Lcom/squareup/picasso/s;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/squareup/picasso/u;->g(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    iget v1, p2, Lcom/squareup/picasso/s;->h:I

    iget v2, p2, Lcom/squareup/picasso/s;->i:I

    invoke-static {v1, v2, v0, p2}, Lcom/squareup/picasso/u;->b(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/s;)V

    .line 5
    :cond_0
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Lcom/squareup/picasso/s;)Z
    .locals 1

    .line 1
    iget v0, p1, Lcom/squareup/picasso/s;->e:I

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/squareup/picasso/s;->d:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.resource"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/squareup/picasso/s;I)Lcom/squareup/picasso/u$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/squareup/picasso/v;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/squareup/picasso/c0;->o(Landroid/content/Context;Lcom/squareup/picasso/s;)Landroid/content/res/Resources;

    move-result-object p2

    .line 2
    invoke-static {p2, p1}, Lcom/squareup/picasso/c0;->n(Landroid/content/res/Resources;Lcom/squareup/picasso/s;)I

    move-result v0

    .line 3
    new-instance v1, Lcom/squareup/picasso/u$a;

    invoke-static {p2, v0, p1}, Lcom/squareup/picasso/v;->j(Landroid/content/res/Resources;ILcom/squareup/picasso/s;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object p2, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v1, p1, p2}, Lcom/squareup/picasso/u$a;-><init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-object v1
.end method
