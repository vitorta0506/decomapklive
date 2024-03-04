.class public Lcom/gyailib/library/GYAIDocEnhance;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nativePtr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native documentCornerValid([F)I
.end method

.method public native documentDeshadow(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public native documentDetect(Landroid/graphics/Bitmap;)[F
.end method

.method public native documentEnhance(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public native documentWarp(Landroid/graphics/Bitmap;[F)Landroid/graphics/Bitmap;
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lcom/gyailib/library/GYAIDocEnhance;->nativePtr:J

    return-wide v0
.end method

.method public setNativePtr(J)V
    .locals 0

    iput-wide p1, p0, Lcom/gyailib/library/GYAIDocEnhance;->nativePtr:J

    return-void
.end method
