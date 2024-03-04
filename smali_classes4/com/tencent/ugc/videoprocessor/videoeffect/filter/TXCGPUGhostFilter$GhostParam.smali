.class public Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;
.super Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase$VideoEffectParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GhostParam"
.end annotation


# instance fields
.field public alpha:F

.field public blur:F

.field public shift:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase$VideoEffectParams;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->shift:F

    .line 3
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->blur:F

    .line 4
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->alpha:F

    return-void
.end method
