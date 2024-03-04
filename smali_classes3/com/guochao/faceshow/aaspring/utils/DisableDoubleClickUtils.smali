.class public Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mClickTime:J

.field private static mCurViewId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canClick(I)Z
    .locals 5

    .line 1
    sget-wide v0, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mCurViewId:J

    int-to-long v2, p0

    const/4 p0, 0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    sput-wide v2, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mCurViewId:J

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mClickTime:J

    return p0

    .line 4
    :cond_0
    sget-wide v0, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mClickTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 5
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mClickTime:J

    return p0
.end method

.method public static canClick(IJ)Z
    .locals 5

    .line 6
    sget-wide v0, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mCurViewId:J

    int-to-long v2, p0

    const/4 p0, 0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 7
    sput-wide v2, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mCurViewId:J

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mClickTime:J

    return p0

    .line 9
    :cond_0
    sget-wide v0, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mClickTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mClickTime:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 10
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mClickTime:J

    return p0
.end method

.method public static canClick(Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    .line 12
    :goto_0
    sget-wide v1, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mCurViewId:J

    int-to-long v3, p0

    const/4 p0, 0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 13
    sput-wide v3, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mCurViewId:J

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mClickTime:J

    return p0

    .line 15
    :cond_1
    sget-wide v1, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mClickTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mClickTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    return v0

    .line 16
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mClickTime:J

    return p0
.end method

.method public static canClick(Landroid/view/View;J)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    .line 18
    :goto_0
    sget-wide v1, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mCurViewId:J

    int-to-long v3, p0

    const/4 p0, 0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 19
    sput-wide v3, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mCurViewId:J

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mClickTime:J

    return p0

    .line 21
    :cond_1
    sget-wide v1, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mClickTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mClickTime:J

    sub-long/2addr v1, v3

    cmp-long v3, v1, p1

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    return v0

    .line 22
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->mClickTime:J

    return p0
.end method
