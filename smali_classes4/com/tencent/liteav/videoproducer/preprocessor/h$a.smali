.class final Lcom/tencent/liteav/videoproducer/preprocessor/h$a;
.super Lcom/tencent/liteav/videobase/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoproducer/preprocessor/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final b:Lcom/tencent/liteav/videobase/videobase/c;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/a/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h$a;->b:Lcom/tencent/liteav/videobase/videobase/c;

    return-void
.end method


# virtual methods
.method public final a(JLcom/tencent/liteav/videobase/frame/d;)Lcom/tencent/liteav/videobase/frame/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h$a;->b:Lcom/tencent/liteav/videobase/videobase/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/liteav/videobase/videobase/c;->a(JLcom/tencent/liteav/videobase/frame/d;)V

    :cond_0
    return-object p3
.end method
