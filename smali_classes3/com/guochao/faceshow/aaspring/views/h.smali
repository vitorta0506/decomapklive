.class public Lcom/guochao/faceshow/aaspring/views/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/h$b;
    }
.end annotation


# static fields
.field private static a:J

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/guochao/faceshow/aaspring/views/h;->b:I

    return-void
.end method

.method static synthetic a()J
    .locals 2

    sget-wide v0, Lcom/guochao/faceshow/aaspring/views/h;->a:J

    return-wide v0
.end method

.method static synthetic b()I
    .locals 1

    sget v0, Lcom/guochao/faceshow/aaspring/views/h;->b:I

    return v0
.end method

.method public static c(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/h$b;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/guochao/faceshow/aaspring/views/h;->a:J

    sub-long/2addr v0, v2

    sget v2, Lcom/guochao/faceshow/aaspring/views/h;->b:I

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/guochao/faceshow/aaspring/views/h;->a:J

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p0}, Lcom/guochao/faceshow/aaspring/views/h$b;->onDoubleTabClick(Landroid/view/View;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/guochao/faceshow/aaspring/views/h;->a:J

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/h$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/views/h$a;-><init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/h$b;)V

    int-to-long p0, v2

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
