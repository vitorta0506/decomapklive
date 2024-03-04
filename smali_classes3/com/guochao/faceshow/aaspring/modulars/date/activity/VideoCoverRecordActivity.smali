.class public Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;


# instance fields
.field a:Lcom/tencent/ugc/TXUGCRecord;

.field b:Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;

.field c:Z

.field d:Z

.field e:I

.field f:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

.field mEffectView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mProgressBar:Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTouchView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->d:Z

    const/16 v0, 0x64

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->e:I

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->getInstance(Landroid/content/Context;)Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->f:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/ugc/TXUGCRecord;->getInstance(Landroid/content/Context;)Lcom/tencent/ugc/TXUGCRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->a:Lcom/tencent/ugc/TXUGCRecord;

    .line 2
    new-instance v0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;

    invoke-direct {v0}, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->b:Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;

    const/4 v1, 0x2

    .line 3
    iput v1, v0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->videoResolution:I

    const/16 v1, 0x1388

    .line 4
    iput v1, v0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->maxDuration:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->touchFocus:Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->showLog(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->a:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v0, p0}, Lcom/tencent/ugc/TXUGCRecord;->setVideoRecordListener(Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->f:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->setBeauty(ILcom/guochao/pusher/base/ILivePusher$BeautyManager;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->a:Lcom/tencent/ugc/TXUGCRecord;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXUGCRecord;->setVideoProcessListener(Lcom/tencent/ugc/TXUGCRecord$VideoCustomProcessListener;)V

    return-void
.end method

.method private d0()V
    .locals 3

    .line 1
    :try_start_0
    const-class v0, Lcom/tencent/ugc/TXUGCRecord;

    const-string v1, "instance"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private release()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->a:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->stopRecord()I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->a:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->release()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->d:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->c:Z

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->d0()V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->f:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    invoke-virtual {v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->destroyOnMainThread()V

    return-void
.end method


# virtual methods
.method public cancel(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->finish()V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    const v0, 0x7f010025

    const v1, 0x7f010026

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->release()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00c6

    return v0
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0603ce

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appointState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_SHOW_COVER_BANNED_TIPS"

    invoke-virtual {v0, v1}, Lja/a;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const v1, 0x7f120925

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->b0()V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->mTouchView:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const/16 p2, 0x400

    if-ne p1, p2, :cond_3

    if-eqz p3, :cond_3

    const-string p1, "result"

    .line 2
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->mEffectView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->mProgressBar:Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->setProgress(F)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->release()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->a:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->pauseRecord()I

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->a:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->pauseBGM()Z

    :cond_0
    return-void
.end method

.method public onRecordComplete(Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->c:Z

    .line 2
    iget v0, p1, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;->retCode:I

    if-gez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordComplete:  \u5f55\u5236\u5931\u8d25, code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;->retCode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoCoverRecord"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ""

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p1, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;->videoPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crop"

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/gif_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x140

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$d;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;)V

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/GifUtils;->convertMp4ToGif(Ljava/lang/String;Ljava/lang/String;ILcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;)V

    return-void
.end method

.method public onRecordEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onRecordProgress(J)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->mProgressBar:Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    const p2, 0x459c4000    # 5000.0f

    div-float/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->setProgress(F)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->a:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->resumeRecord()I

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->a:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->resumeBGM()Z

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->a:Lcom/tencent/ugc/TXUGCRecord;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->b:Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/ugc/TXUGCRecord;->startCameraCustomPreview(Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;Lcom/tencent/rtmp/ui/TXCloudVideoView;)I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->a:Lcom/tencent/ugc/TXUGCRecord;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXUGCRecord;->setAspectRatio(I)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->a:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->stopCameraPreview()V

    return-void
.end method

.method public shouldShowLiveFloatWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showEffect(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;-><init>()V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->e:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->setType(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->X1(Z)V

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->setOnItemClickListener(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "pendant"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public startRecord(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crop"

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/video_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".mp4"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/thumbnail_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->a:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/ugc/TXUGCRecord;->startRecord(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3f99999a    # 1.2f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->c:Z

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->mEffectView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
