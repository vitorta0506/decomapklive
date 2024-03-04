.class public Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$Zoomable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$d;,
        Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$e;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

.field private c:Z

.field d:Lcom/google/android/exoplayer2/q;

.field e:Lv2/q;

.field f:Lh1/f;

.field g:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$d;

.field h:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$e;

.field i:Lcom/google/android/exoplayer2/l2$d;

.field j:Z

.field mDownloadDialogProgressView:Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewThumb:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mProgressTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mProgressViewArea:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->c:Z

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$d;

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->i:Lcom/google/android/exoplayer2/l2$d;

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->j:Z

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->c:Z

    return p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    return-object p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->V1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->W1(Landroid/net/Uri;)V

    return-void
.end method

.method private T1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getVideo()Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getLocalThumbnailPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getVideo()Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getSnapshotSize()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mImageViewThumb:Landroid/widget/ImageView;

    invoke-static {v1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lic/d;->J(Ljava/io/File;)Lic/c;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mImageViewThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getVideo()Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getSnapshotUrl(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static U1(I)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "position"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private V1(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private W1(Landroid/net/Uri;)V
    .locals 4

    .line 1
    new-instance v0, Lv2/d0$b;

    new-instance v1, Lj3/q;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Exo"

    invoke-direct {v1, v2, v3}, Lj3/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lv2/d0$b;-><init>(Lj3/i$a;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/s1;->d(Landroid/net/Uri;)Lcom/google/android/exoplayer2/s1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lv2/d0$b;->b(Lcom/google/android/exoplayer2/s1;)Lv2/d0;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->e:Lv2/q;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->d:Lcom/google/android/exoplayer2/q;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/q;->a(Lv2/q;)V

    return-void
.end method


# virtual methods
.method public content(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->f:Lh1/f;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Lh1/f;->onPhotoTap(Landroid/widget/ImageView;FF)V

    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0060

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->i0()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0f03b5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->i0()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    .line 4
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->d:Lcom/google/android/exoplayer2/q;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/l2;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->d:Lcom/google/android/exoplayer2/q;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/l2;->l(Z)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->d:Lcom/google/android/exoplayer2/q;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/l2;->setRepeatMode(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->d:Lcom/google/android/exoplayer2/q;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->i:Lcom/google/android/exoplayer2/l2$d;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/l2;->K(Lcom/google/android/exoplayer2/l2$d;)V

    .line 11
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->T1()V

    return-void
.end method

.method protected loadData()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getVideo()Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getVideoPath()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getLocalVideoPath()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mProgressViewArea:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->W1(Landroid/net/Uri;)V

    return-void

    .line 9
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getVideoPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$e;

    if-nez v1, :cond_2

    .line 11
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$e;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$e;

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getVideo()Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getVideoSize()I

    move-result v1

    int-to-long v3, v1

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mProgressViewArea:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->W1(Landroid/net/Uri;)V

    goto :goto_0

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mProgressViewArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$e;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->registerDownloadCallback(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$d;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->registerProgressCallback(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->download()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->a:I

    .line 4
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/a3$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/a3$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a3$a;->a()Lcom/google/android/exoplayer2/a3;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->d:Lcom/google/android/exoplayer2/q;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->d:Lcom/google/android/exoplayer2/q;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/l2;->C(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->d:Lcom/google/android/exoplayer2/q;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->i:Lcom/google/android/exoplayer2/l2$d;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/l2;->g(Lcom/google/android/exoplayer2/l2$d;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->d:Lcom/google/android/exoplayer2/q;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/l2;->release()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->h:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$e;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->unregisterDownloadCallback(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$d;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->unregisterProgressCallback(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 7
    :cond_0
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    return-void
.end method

.method public play(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->d:Lcom/google/android/exoplayer2/q;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/l2;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->e:Lv2/q;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->d:Lcom/google/android/exoplayer2/q;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/q;->a(Lv2/q;)V

    :cond_0
    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public save(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method public scaled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setOnPhotoTapListener(Lh1/f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->f:Lh1/f;

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->setUserVisibleHint(Z)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->d:Lcom/google/android/exoplayer2/q;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->d:Lcom/google/android/exoplayer2/q;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->stop()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->T1()V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->loadData()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->d:Lcom/google/android/exoplayer2/q;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/l2;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->d:Lcom/google/android/exoplayer2/q;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/l2;->stop()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->j:Z

    return-void
.end method
