.class Lcom/twitter/sdk/android/tweetui/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

.field final b:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

.field final c:Landroid/widget/ProgressBar;

.field final d:Landroid/widget/TextView;

.field final e:Landroid/view/View;

.field f:I

.field g:Z

.field final h:Lcom/twitter/sdk/android/tweetui/internal/i$a;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/twitter/sdk/android/tweetui/internal/i$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/s;->g:Z

    .line 3
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/s;->e:Landroid/view/View;

    .line 4
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->video_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    .line 5
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->video_control_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->b:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    .line 6
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->video_progress_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->c:Landroid/widget/ProgressBar;

    .line 7
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->call_to_action_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/s;->d:Landroid/widget/TextView;

    .line 8
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/s;->h:Lcom/twitter/sdk/android/tweetui/internal/i$a;

    return-void
.end method

.method public static synthetic a(Lcom/twitter/sdk/android/tweetui/s;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/s;->f(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic b(Lcom/twitter/sdk/android/tweetui/s;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/s;->i(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/twitter/sdk/android/tweetui/s;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetui/s;->g(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/twitter/sdk/android/tweetui/s;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/s;->h(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/twitter/sdk/android/tweetui/s;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/s;->j(Landroid/view/View;)V

    return-void
.end method

.method private synthetic f(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/s;->c:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private synthetic g(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/4 p1, 0x1

    const/16 p3, 0x2be

    if-ne p2, p3, :cond_0

    .line 1
    iget-object p2, p0, Lcom/twitter/sdk/android/tweetui/s;->c:Landroid/widget/ProgressBar;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return p1

    :cond_0
    const/16 p3, 0x2bd

    const/4 v0, 0x0

    if-ne p2, p3, :cond_1

    .line 2
    iget-object p2, p0, Lcom/twitter/sdk/android/tweetui/s;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return p1

    :cond_1
    return v0
.end method

.method private synthetic h(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/s;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/twitter/sdk/android/core/f;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method private synthetic i(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/s;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/s;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->pause()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/s;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->start()V

    :goto_0
    return-void
.end method

.method private synthetic j(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/s;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/s;->d:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/s;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method k()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->F()V

    return-void
.end method

.method l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/s;->g:Z

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/s;->f:I

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->pause()V

    return-void
.end method

.method m()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/s;->f:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/s;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->seekTo(I)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/s;->g:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->start()V

    .line 5
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->b:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->n()V

    :cond_1
    return-void
.end method

.method n(Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/s;->o(Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;)V

    .line 2
    iget-boolean v0, p1, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->looping:Z

    iget-boolean v1, p1, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->showVideoControls:Z

    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/s;->s(ZZ)V

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/s;->h:Lcom/twitter/sdk/android/tweetui/internal/i$a;

    .line 4
    invoke-static {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/i;->d(Landroid/view/View;Lcom/twitter/sdk/android/tweetui/internal/i$a;)Lcom/twitter/sdk/android/tweetui/internal/i;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/s;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/o;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetui/o;-><init>(Lcom/twitter/sdk/android/tweetui/s;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 7
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/n;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetui/n;-><init>(Lcom/twitter/sdk/android/tweetui/s;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 8
    iget-object v0, p1, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/s;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    iget-boolean p1, p1, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->looping:Z

    invoke-virtual {v1, v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->E(Landroid/net/Uri;Z)V

    .line 10
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/s;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v0

    const-string v1, "PlayerController"

    const-string v2, "Error occurred during video playback"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method o(Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->callToActionText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->callToActionUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->callToActionText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p1, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->callToActionUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/s;->p(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/s;->t()V

    :cond_0
    return-void
.end method

.method p(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/r;

    invoke-direct {v1, p0, p1}, Lcom/twitter/sdk/android/tweetui/r;-><init>(Lcom/twitter/sdk/android/tweetui/s;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->b:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/p;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetui/p;-><init>(Lcom/twitter/sdk/android/tweetui/s;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method r()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->a:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/s;->b:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->setMediaController(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)V

    return-void
.end method

.method s(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/s;->q()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/s;->r()V

    :goto_0
    return-void
.end method

.method t()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/s;->e:Landroid/view/View;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/q;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetui/q;-><init>(Lcom/twitter/sdk/android/tweetui/s;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
