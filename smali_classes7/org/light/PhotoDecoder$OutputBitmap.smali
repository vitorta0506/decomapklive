.class Lorg/light/PhotoDecoder$OutputBitmap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/PhotoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutputBitmap"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field height:I

.field pixels:[B

.field rowBytes:I

.field width:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/light/PhotoDecoder$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/light/PhotoDecoder$OutputBitmap;-><init>()V

    return-void
.end method
