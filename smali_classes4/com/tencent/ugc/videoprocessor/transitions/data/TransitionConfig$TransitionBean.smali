.class public Lcom/tencent/ugc/videoprocessor/transitions/data/TransitionConfig$TransitionBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ugc/videoprocessor/transitions/data/TransitionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionBean"
.end annotation


# instance fields
.field public endTimeMs:J

.field public startTimeMs:J

.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/tencent/ugc/videoprocessor/transitions/data/TransitionConfig$TransitionBean;->startTimeMs:J

    .line 3
    iput-wide v0, p0, Lcom/tencent/ugc/videoprocessor/transitions/data/TransitionConfig$TransitionBean;->endTimeMs:J

    .line 4
    iput p1, p0, Lcom/tencent/ugc/videoprocessor/transitions/data/TransitionConfig$TransitionBean;->type:I

    return-void
.end method
