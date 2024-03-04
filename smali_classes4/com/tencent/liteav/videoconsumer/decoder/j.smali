.class final synthetic Lcom/tencent/liteav/videoconsumer/decoder/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoconsumer/decoder/d$a;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/decoder/d;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoconsumer/decoder/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/j;->a:Lcom/tencent/liteav/videoconsumer/decoder/d;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Lcom/tencent/liteav/videoconsumer/decoder/d$b;
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/j;->a:Lcom/tencent/liteav/videoconsumer/decoder/d;

    .line 1
    iget-boolean v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->s:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->s:Z

    .line 3
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->h:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    sget-object v3, Lcom/tencent/liteav/videoconsumer/decoder/az$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    if-ne v2, v3, :cond_4

    .line 4
    iget v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->t:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->t:I

    .line 5
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iput-boolean v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->f:Z

    .line 7
    :cond_0
    iget v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->u:I

    iget v3, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->H:I

    if-ge v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 8
    iput v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->u:I

    .line 9
    iget-object p1, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkPendingDecodeError restart. index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->H:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance p1, Lcom/tencent/liteav/videoconsumer/decoder/d$b;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->c:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/d$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$e;

    invoke-direct {p1, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/d$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d$c;Lcom/tencent/liteav/videoconsumer/decoder/d$e;)V

    return-object p1

    .line 11
    :cond_1
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/d;->b(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    iget-object p1, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v2, Lcom/tencent/liteav/videobase/videobase/h$b;->d:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "MediaCodec doesn\'t work, switch HW to SW decode"

    invoke-interface {p1, v2, v3, v1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object p1, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->a:Ljava/lang/String;

    const-string v0, "checkPendingDecodeError switch HW to SW decode"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p1, Lcom/tencent/liteav/videoconsumer/decoder/d$b;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->e:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/d$e;->f:Lcom/tencent/liteav/videoconsumer/decoder/d$e;

    invoke-direct {p1, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/d$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d$c;Lcom/tencent/liteav/videoconsumer/decoder/d$e;)V

    return-object p1

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/d;->a()V

    .line 17
    :cond_3
    new-instance p1, Lcom/tencent/liteav/videoconsumer/decoder/d$b;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->g:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/d$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$e;

    invoke-direct {p1, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/d$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d$c;Lcom/tencent/liteav/videoconsumer/decoder/d$e;)V

    return-object p1

    .line 18
    :cond_4
    sget-object v3, Lcom/tencent/liteav/videoconsumer/decoder/az$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    if-ne v2, v3, :cond_9

    .line 19
    iget v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->u:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->u:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_5

    .line 20
    iget-object p1, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->a:Ljava/lang/String;

    const-string v0, "checkPendingDecodeError failed decoder count is less max count."

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance p1, Lcom/tencent/liteav/videoconsumer/decoder/d$b;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->c:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/d$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$e;

    invoke-direct {p1, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/d$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d$c;Lcom/tencent/liteav/videoconsumer/decoder/d$e;)V

    return-object p1

    .line 22
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 23
    iput-boolean v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->e:Z

    .line 24
    :cond_6
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/d;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->t:I

    if-gtz v1, :cond_7

    .line 25
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isRPSEnable()Z

    move-result v1

    if-nez v1, :cond_7

    .line 26
    iget-object p1, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->a:Ljava/lang/String;

    const-string v0, "checkPendingDecodeError switch SW to HW decode"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance p1, Lcom/tencent/liteav/videoconsumer/decoder/d$b;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->d:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/d$e;->f:Lcom/tencent/liteav/videoconsumer/decoder/d$e;

    invoke-direct {p1, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/d$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d$c;Lcom/tencent/liteav/videoconsumer/decoder/d$e;)V

    return-object p1

    .line 28
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 29
    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/d;->a()V

    .line 30
    :cond_8
    new-instance p1, Lcom/tencent/liteav/videoconsumer/decoder/d$b;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->g:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/d$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$e;

    invoke-direct {p1, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/d$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d$c;Lcom/tencent/liteav/videoconsumer/decoder/d$e;)V

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method
