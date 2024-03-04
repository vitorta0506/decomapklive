.class public final Lcom/tencent/ugc/TXRecordCommon$TXUGCSimpleConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ugc/TXRecordCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TXUGCSimpleConfig"
.end annotation


# instance fields
.field public isFront:Z

.field public maxDuration:I

.field public minDuration:I

.field public needEdit:Z

.field public profile:I

.field public touchFocus:Z

.field public videoQuality:I

.field public watermark:Landroid/graphics/Bitmap;

.field public watermarkX:I

.field public watermarkY:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCSimpleConfig;->videoQuality:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCSimpleConfig;->watermark:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCSimpleConfig;->watermarkX:I

    .line 5
    iput v0, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCSimpleConfig;->watermarkY:I

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCSimpleConfig;->isFront:Z

    .line 7
    iput-boolean v0, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCSimpleConfig;->touchFocus:Z

    const/16 v0, 0x1388

    .line 8
    iput v0, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCSimpleConfig;->minDuration:I

    const v0, 0xea60

    .line 9
    iput v0, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCSimpleConfig;->maxDuration:I

    .line 10
    iput-boolean v1, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCSimpleConfig;->needEdit:Z

    return-void
.end method
