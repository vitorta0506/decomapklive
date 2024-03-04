.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;
.super Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

.field c:Lcom/google/android/exoplayer2/q;

.field d:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    return-void
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;)Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;->a()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->c:Lcom/google/android/exoplayer2/q;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/l2;->C(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->c:Lcom/google/android/exoplayer2/q;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/l2;->release()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->c:Lcom/google/android/exoplayer2/q;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/l2;->isPlaying()Z

    move-result v0

    return v0
.end method

.method c()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->c:Lcom/google/android/exoplayer2/q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/l2;->l(Z)V

    return-void
.end method

.method d()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;->d()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->c:Lcom/google/android/exoplayer2/q;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/l2;->l(Z)V

    return-void
.end method

.method e(Landroid/net/Uri;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/a3$a;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/a3$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a3$a;->a()Lcom/google/android/exoplayer2/a3;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->c:Lcom/google/android/exoplayer2/q;

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/l2;)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->c:Lcom/google/android/exoplayer2/q;

    new-instance v2, Lv2/d0$b;

    new-instance v3, Lj3/q;

    const-string v4, "ExoPlayer"

    invoke-direct {v3, v0, v4}, Lj3/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lv2/d0$b;-><init>(Lj3/i$a;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/s1;->d(Landroid/net/Uri;)Lcom/google/android/exoplayer2/s1;

    move-result-object p1

    invoke-virtual {v2, p1}, Lv2/d0$b;->b(Lcom/google/android/exoplayer2/s1;)Lv2/d0;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/q;->a(Lv2/q;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->c:Lcom/google/android/exoplayer2/q;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/l2;->K(Lcom/google/android/exoplayer2/l2$d;)V

    .line 6
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->d:Ljava/util/Timer;

    .line 7
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->c:Lcom/google/android/exoplayer2/q;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/l2;->setRepeatMode(I)V

    return-void
.end method
