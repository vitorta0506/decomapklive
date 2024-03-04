.class final Lcom/tencent/liteav/videobase/videobase/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videobase/videobase/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

.field public final b:I

.field public final c:Lcom/tencent/liteav/videobase/videobase/c$a;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;ILcom/tencent/liteav/videobase/videobase/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/liteav/videobase/videobase/f$a;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    .line 3
    iput p2, p0, Lcom/tencent/liteav/videobase/videobase/f$a;->b:I

    .line 4
    iput-object p3, p0, Lcom/tencent/liteav/videobase/videobase/f$a;->c:Lcom/tencent/liteav/videobase/videobase/c$a;

    return-void
.end method
