.class public Lcom/gyailib/library/PicEnhanceOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public enableDeblur:I

.field public enableDelogo:I

.field public enableHdr:I

.field public enableUpperDims:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setPicEnhanceOptions(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gyailib/library/PicEnhanceOptions;->enableDelogo:I

    .line 2
    iput p2, p0, Lcom/gyailib/library/PicEnhanceOptions;->enableDeblur:I

    .line 3
    iput p3, p0, Lcom/gyailib/library/PicEnhanceOptions;->enableHdr:I

    .line 4
    iput p4, p0, Lcom/gyailib/library/PicEnhanceOptions;->enableUpperDims:I

    return-void
.end method
