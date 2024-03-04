.class final Lcom/tencent/liteav/videoconsumer/decoder/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoconsumer/decoder/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/tencent/tmediacodec/b;

.field public b:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Exception;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s$a;->a:Lcom/tencent/tmediacodec/b;

    .line 3
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s$a;->b:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 4
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s$a;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s$a;->d:Ljava/lang/Exception;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/s$a;-><init>()V

    return-void
.end method
