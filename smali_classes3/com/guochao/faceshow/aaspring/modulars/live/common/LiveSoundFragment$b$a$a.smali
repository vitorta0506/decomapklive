.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a$a;
.super Lcom/guochao/faceshow/aaspring/manager/a$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/manager/a$j<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/manager/a$j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p3, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a$a;->d(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/io/File;)V

    return-void
.end method

.method public d(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/io/File;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/manager/a$j;->c(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/Object;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;

    iget-boolean p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->e:Z

    if-eqz p1, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;->R1()Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    new-instance p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v0

    invoke-direct {p1, v0, p3}, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;-><init>(ILjava/lang/String;)V

    const/4 p3, 0x0

    .line 9
    iput-boolean p3, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->isShortFile:Z

    const/4 p3, 0x1

    .line 10
    iput-boolean p3, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->publish:Z

    .line 11
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;

    iget-object p3, p3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;

    iget-object p3, p3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/tencent/trtc/TRTCCloud;->sharedInstance(Landroid/content/Context;)Lcom/tencent/trtc/TRTCCloud;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tencent/trtc/TRTCCloud;->getAudioEffectManager()Lcom/tencent/liteav/audio/TXAudioEffectManager;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManager;->startPlayMusic(Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;)Z

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A2()Lcom/guochao/pusher/GCLivePusher;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/guochao/pusher/GCLivePusher;->playBGM(Ljava/lang/String;)V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;

    const-string p3, "tokens/source/statisticsClicks"

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result p2

    const-string p3, "soundeffectid"

    invoke-virtual {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_5
    :goto_1
    return-void
.end method
