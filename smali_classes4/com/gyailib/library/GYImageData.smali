.class public Lcom/gyailib/library/GYImageData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bytesPerRow:I

.field private channel:I

.field private data:[B

.field private dataOffset:I

.field private dataType:I

.field private format:I

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/gyailib/library/GYImageData;->format:I

    .line 3
    iput v0, p0, Lcom/gyailib/library/GYImageData;->width:I

    .line 4
    iput v0, p0, Lcom/gyailib/library/GYImageData;->height:I

    const/4 v1, 0x4

    .line 5
    iput v1, p0, Lcom/gyailib/library/GYImageData;->channel:I

    .line 6
    iput v0, p0, Lcom/gyailib/library/GYImageData;->bytesPerRow:I

    .line 7
    iput v0, p0, Lcom/gyailib/library/GYImageData;->dataType:I

    .line 8
    iput v0, p0, Lcom/gyailib/library/GYImageData;->dataOffset:I

    return-void
.end method
