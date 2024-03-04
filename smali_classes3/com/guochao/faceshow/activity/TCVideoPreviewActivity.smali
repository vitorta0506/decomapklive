.class public Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/tencent/rtmp/ITXLivePlayListener;


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Z

.field c:Z

.field d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field g:Landroid/widget/ImageView;

.field private h:Lcom/tencent/rtmp/TXLivePlayer;

.field private i:Lcom/tencent/rtmp/TXLivePlayConfig;

.field private j:Lcom/tencent/rtmp/ui/TXCloudVideoView;

.field private k:Landroid/widget/SeekBar;

.field private l:Landroid/widget/TextView;

.field private m:J

.field private n:Z

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->b:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->c:Z

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->d:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->h:Lcom/tencent/rtmp/TXLivePlayer;

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->i:Lcom/tencent/rtmp/TXLivePlayConfig;

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->m:J

    .line 8
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->n:Z

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;)Lcom/tencent/rtmp/TXLivePlayer;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->h:Lcom/tencent/rtmp/TXLivePlayer;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->m:J

    return-wide p1
.end method

.method private e()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private f()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f080322

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->h:Lcom/tencent/rtmp/TXLivePlayer;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->j:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayer;->setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->h:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0, p0}, Lcom/tencent/rtmp/TXLivePlayer;->setPlayListener(Lcom/tencent/rtmp/ITXLivePlayListener;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->h:Lcom/tencent/rtmp/TXLivePlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayer;->enableHardwareDecode(Z)Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->h:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayer;->setRenderRotation(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->h:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayer;->setRenderMode(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->h:Lcom/tencent/rtmp/TXLivePlayer;

    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->i:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {v0, v2}, Lcom/tencent/rtmp/TXLivePlayer;->setConfig(Lcom/tencent/rtmp/TXLivePlayConfig;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->h:Lcom/tencent/rtmp/TXLivePlayer;

    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->e:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Lcom/tencent/rtmp/TXLivePlayer;->startLivePlay(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->a:Landroid/widget/ImageView;

    const v2, 0x7f080323

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->b:Z

    return v0
.end method

.method private g()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->e:Ljava/lang/String;

    const-string v2, "videoPath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->f:Ljava/lang/String;

    const-string v2, "coverPath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected h(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->h:Lcom/tencent/rtmp/TXLivePlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayer;->setPlayListener(Lcom/tencent/rtmp/ITXLivePlayListener;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->h:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXLivePlayer;->stopPlay(Z)I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->b:Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a094e

    if-eq p1, v0, :cond_4

    const v0, 0x7f0a0951

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0953

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->g()V

    goto :goto_0

    .line 3
    :cond_1
    iget-boolean p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->b:Z

    if-eqz p1, :cond_3

    .line 4
    iget-boolean p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->c:Z

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->h:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {p1}, Lcom/tencent/rtmp/TXLivePlayer;->resume()V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f080322

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->c:Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->h:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {p1}, Lcom/tencent/rtmp/TXLivePlayer;->pause()V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f080323

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->c:Z

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->f()Z

    goto :goto_0

    .line 12
    :cond_4
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->e()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x200000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const p1, 0x7f0d00ca

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0a0951

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->a:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->e:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "coverpath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->f:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "topicName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->o:Ljava/lang/String;

    const p1, 0x7f0a027c

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->g:Landroid/widget/ImageView;

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 13
    invoke-static {p0}, Lcom/bumptech/glide/c;->t(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->n(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 14
    :cond_0
    new-instance p1, Lcom/tencent/rtmp/TXLivePlayer;

    invoke-direct {p1, p0}, Lcom/tencent/rtmp/TXLivePlayer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->h:Lcom/tencent/rtmp/TXLivePlayer;

    .line 15
    new-instance p1, Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-direct {p1}, Lcom/tencent/rtmp/TXLivePlayConfig;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->i:Lcom/tencent/rtmp/TXLivePlayConfig;

    const p1, 0x7f0a0df2

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->j:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->disableLog(Z)V

    const p1, 0x7f0a0a48

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->k:Landroid/widget/SeekBar;

    .line 19
    new-instance v0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity$a;-><init>(Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p1, 0x7f0a08d3

    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->l:Landroid/widget/TextView;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->j:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->onDestroy()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->h(Z)V

    return-void
.end method

.method public onNetStatus(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->j:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->onPause()V

    .line 3
    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->c:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->h:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXLivePlayer;->pause()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->d:Z

    :cond_0
    return-void
.end method

.method public onPlayEvent(ILandroid/os/Bundle;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x7d5

    if-ne p1, v2, :cond_4

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->n:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "EVT_PLAY_PROGRESS"

    .line 2
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "EVT_PLAY_DURATION"

    .line 3
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5
    iget-wide v4, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->m:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    return-void

    .line 6
    :cond_1
    iput-wide v2, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->m:J

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->k:Landroid/widget/SeekBar;

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->l:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 10
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit8 v5, p1, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    rem-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    const/4 p1, 0x2

    div-int/lit8 v0, p2, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p1

    const/4 p1, 0x3

    rem-int/lit8 v0, p2, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p1

    const-string p1, "%02d:%02d/%02d:%02d"

    invoke-static {v3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->k:Landroid/widget/SeekBar;

    if-eqz p1, :cond_8

    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0

    :cond_4
    const/16 p2, -0x8fd

    if-ne p1, p2, :cond_5

    goto :goto_0

    :cond_5
    const/16 p2, 0x7d6

    if-ne p1, p2, :cond_8

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->l:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 14
    sget-object p2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "00:00/00:00"

    aput-object v2, v0, v1

    const-string v2, "%s"

    invoke-static {p2, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->k:Landroid/widget/SeekBar;

    if-eqz p1, :cond_7

    .line 16
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 17
    :cond_7
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->h(Z)V

    .line 18
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->f()Z

    :cond_8
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->j:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->onResume()V

    .line 3
    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->d:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->h:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXLivePlayer;->resume()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->d:Z

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
