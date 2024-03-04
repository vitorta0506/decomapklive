.class public Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/player/base/ILivePlayer$PlayEventListener;


# instance fields
.field private a:Lcom/guochao/player/GCLivePlayer;

.field public b:Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

.field c:Landroid/os/Handler;

.field mImageViewAvatar:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTXCloudVideoView:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewCountDown:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->c:Landroid/os/Handler;

    return-void
.end method

.method public static P1(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01a5

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->initView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->a:Lcom/guochao/player/GCLivePlayer;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getJsUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getStreamId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->mTXCloudVideoView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, v1, v2}, Lcom/guochao/player/GCLivePlayer;->startPlayAcc(Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->mImageViewAvatar:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljc/f;

    const-string v2, "#66000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x19

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Ljc/f;-><init>(III)V

    const v2, 0x7f0f0089

    invoke-static {p1, v0, v2, v1}, Lhc/a;->i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->mTextViewCountDown:Landroid/widget/TextView;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->j(IILandroid/widget/TextView;)V

    return-void
.end method

.method public synthetic onConnectToServer(Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->a(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V

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

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->a:Lcom/guochao/player/GCLivePlayer;

    .line 5
    invoke-virtual {p1, p0}, Lcom/guochao/player/GCLivePlayer;->addPlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->a:Lcom/guochao/player/GCLivePlayer;

    invoke-virtual {v0, p0}, Lcom/guochao/player/GCLivePlayer;->removePlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->a:Lcom/guochao/player/GCLivePlayer;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getStreamId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/player/GCLivePlayer;->stopPlay(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onDrawFirstFrame(Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/player/base/ILivePlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->mImageViewAvatar:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->a:Lcom/guochao/player/GCLivePlayer;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getStreamId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/player/GCLivePlayer;->pause(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onPlayEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/guochao/player/base/a;->c(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onPlayFirstAudioFrame(Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->d(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V

    return-void
.end method

.method public synthetic onPlayerVolumeUpdate(Ljava/lang/String;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->e(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;F)V

    return-void
.end method

.method public synthetic onPublishStreamInfo(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->f(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->a:Lcom/guochao/player/GCLivePlayer;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getStreamId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/player/GCLivePlayer;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoLoading(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getStreamId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->c:Landroid/os/Handler;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;)V

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onVideoPlaying(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getStreamId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->c:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->mImageViewAvatar:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public synthetic onVideoSizeChanged(Ljava/lang/String;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/player/base/a;->i(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;II)V

    return-void
.end method
