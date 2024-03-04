.class public final Lcom/opensource/svgaplayer/bitmap/SVGABitmapByteArrayDecoder;
.super Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder<",
        "[B>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/bitmap/SVGABitmapByteArrayDecoder;",
        "Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;",
        "",
        "()V",
        "onDecode",
        "Landroid/graphics/Bitmap;",
        "data",
        "ops",
        "Landroid/graphics/BitmapFactory$Options;",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/opensource/svgaplayer/bitmap/SVGABitmapByteArrayDecoder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opensource/svgaplayer/bitmap/SVGABitmapByteArrayDecoder;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/bitmap/SVGABitmapByteArrayDecoder;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/bitmap/SVGABitmapByteArrayDecoder;->INSTANCE:Lcom/opensource/svgaplayer/bitmap/SVGABitmapByteArrayDecoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDecode(Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/bitmap/SVGABitmapByteArrayDecoder;->onDecode([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public onDecode([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ops"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
