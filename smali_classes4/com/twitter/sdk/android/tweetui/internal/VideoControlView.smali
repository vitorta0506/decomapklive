.class public Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;
    }
.end annotation


# instance fields
.field a:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;

.field b:Landroid/widget/ImageButton;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/SeekBar;

.field private final f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$a;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$a;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->f:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$a;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$a;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->f:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$a;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$a;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->f:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->h(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private synthetic h(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;

    invoke-interface {p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;

    invoke-interface {p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;->pause()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;

    invoke-interface {p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;->start()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->m()V

    return-void
.end method


# virtual methods
.method c()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$b;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$b;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)V

    return-object v0
.end method

.method d()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/k;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/internal/k;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)V

    return-object v0
.end method

.method e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->f:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x96

    .line 2
    invoke-static {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/a;->b(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3
    sget v1, Lcom/twitter/sdk/android/tweetui/R$layout;->tw__video_control:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__state_control:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->b:Landroid/widget/ImageButton;

    .line 5
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__current_time:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->c:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__duration:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->d:Landroid/widget/TextView;

    .line 7
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__progress:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->e:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 9
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->e:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->c()Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 10
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->b:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->d()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setDuration(I)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setCurrentTime(I)V

    .line 13
    invoke-virtual {p0, v0, v0, v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->k(III)V

    return-void
.end method

.method public g()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->b:Landroid/widget/ImageButton;

    sget v1, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__video_pause_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->b:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$string;->tw__pause:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->b:Landroid/widget/ImageButton;

    sget v1, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__video_play_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->b:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$string;->tw__play:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method k(III)V
    .locals 4

    if-lez p2, :cond_0

    const-wide/16 v0, 0x3e8

    int-to-long v2, p1

    mul-long v2, v2, v0

    int-to-long p1, p2

    .line 1
    div-long/2addr v2, p1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->e:Landroid/widget/SeekBar;

    long-to-int p2, v2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->e:Landroid/widget/SeekBar;

    mul-int/lit8 p3, p3, 0xa

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    return-void
.end method

.method l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->b:Landroid/widget/ImageButton;

    sget v1, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__video_replay_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->b:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$string;->tw__replay:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->f:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/16 v0, 0x96

    .line 2
    invoke-static {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/a;->a(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->f:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;->getDuration()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;

    invoke-interface {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;->getCurrentPosition()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;

    invoke-interface {v2}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;->getBufferPercentage()I

    move-result v2

    .line 4
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setDuration(I)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setCurrentTime(I)V

    .line 6
    invoke-virtual {p0, v1, v0, v2}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->k(III)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->f()V

    return-void
.end method

.method p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->i()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;

    invoke-interface {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;->getDuration()I

    move-result v1

    add-int/lit16 v1, v1, -0x1f4

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->l()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->j()V

    :goto_0
    return-void
.end method

.method setCurrentTime(I)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->c:Landroid/widget/TextView;

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/d;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setDuration(I)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->d:Landroid/widget/TextView;

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/d;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMediaPlayer(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;

    return-void
.end method
