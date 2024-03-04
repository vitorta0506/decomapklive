.class public final Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u001a\u0010\u0000\u001a\u00020\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "option",
        "Landroid/graphics/BitmapFactory$Options;",
        "getOption",
        "()Landroid/graphics/BitmapFactory$Options;",
        "setOption",
        "(Landroid/graphics/BitmapFactory$Options;)V",
        "com.opensource.svgaplayer"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static option:Landroid/graphics/BitmapFactory$Options;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoderKt;->option:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method

.method public static final getOption()Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoderKt;->option:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public static final setOption(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .param p0    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoderKt;->option:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method
