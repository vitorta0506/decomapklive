.class public Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchLiveHolder"

.field private static cameraPath:Ljava/lang/String;

.field private static myPath:Ljava/lang/String;


# instance fields
.field bottomButtonArea:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private context:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

.field faceBookShare:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public isErrorPush:Z

.field public isFontCamera:Z

.field private isPersons:Z

.field private isReleased:Z

.field private lastIndex:I

.field launchLiveEdit:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field launchNextBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private launchTime:J

.field liveLaunchDice:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mCurPersonsTitle:I

.field mImageViewCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLaunchBottomSwitchHolder:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;

.field private mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

.field private mLiveRoomModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

.field private mMainHandler:Landroid/os/Handler;

.field private mPhotoDialogFragment:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

.field mPicTipsIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPushUrl:Ljava/lang/String;

.field private mTXLivePusher:Lcom/guochao/pusher/GCLivePusher;

.field private onResultListener:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;

.field private parentResumed:Z

.field private pushRunnable:Ljava/lang/Runnable;

.field private pushed:Z

.field private rootView:Landroid/view/ViewGroup;

.field private selectShare:[Z

.field shareArea:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field spaceArea:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field switchPrivateLive:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field syncDynamicDivider:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field syncDynamicLay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field syncDynamicToggle:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field twitterShare:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field voiceRoomBackground:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private voiceRoomIsCreate:Z

.field weiboShare:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field weichatShare:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private withPk:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 6

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->lastIndex:I

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isFontCamera:Z

    .line 17
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->voiceRoomIsCreate:Z

    const/4 v1, -0x1

    .line 18
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCurPersonsTitle:I

    const-wide/16 v1, 0x0

    .line 19
    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchTime:J

    .line 20
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$n;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$n;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->pushRunnable:Ljava/lang/Runnable;

    .line 21
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mMainHandler:Landroid/os/Handler;

    .line 22
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    .line 23
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 24
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    const-string v2, "com.tencent.mm"

    const/16 v3, 0x8

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    new-array v1, v1, [Z

    .line 25
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    .line 26
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->faceBookShare:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->twitterShare:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weiboShare:Landroid/widget/ImageView;

    invoke-static {v1, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/d;->c(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 27
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->checkApkExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->faceBookShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weichatShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weichatShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->faceBookShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const-string v1, "com.tencent.mqq"

    .line 32
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->checkApkExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.tencent.mobileqq"

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->checkApkExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->twitterShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 34
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->twitterShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    const-string v1, "com.sina.weibo"

    .line 35
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->checkApkExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weiboShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 37
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weiboShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_4
    const/4 v1, 0x4

    new-array v1, v1, [Z

    .line 38
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    const-string v1, "com.facebook.katana"

    .line 39
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->checkApkExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 40
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->faceBookShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 41
    :cond_5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->faceBookShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    :goto_3
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->checkApkExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weichatShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 44
    :cond_6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weichatShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    const-string v1, "com.twitter.android"

    .line 45
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->checkApkExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 46
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->twitterShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 47
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->twitterShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    :goto_5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    .line 49
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->setEditData(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;)V

    .line 50
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 52
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->faceBookShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weichatShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->twitterShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weiboShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->faceBookShare:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weichatShare:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->twitterShare:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_9

    const v0, 0x7f0a0a67

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->context:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->switchPrivateLive:Landroid/widget/ImageView;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->isLivePrivateEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0a0614

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchNextBtn:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->checkShowNewBeautyPopupWindow()V

    if-eqz p3, :cond_1

    const-string p1, "my_path"

    .line 7
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->myPath:Ljava/lang/String;

    const-string p1, "camera_path"

    .line 8
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->cameraPath:Ljava/lang/String;

    const-string p1, "uri"

    .line 9
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    sput-object p1, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mCameraUri:Landroid/net/Uri;

    .line 10
    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "savedInstance"

    invoke-static {p3, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const p2, 0x7f0a0281

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    if-eqz p1, :cond_2

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->voiceRoomBackground:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->setImageView(Landroid/widget/ImageView;)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$f;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->lastIndex:I

    return p0
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->setEditData(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isReleased:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->pushed:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->onResultListener:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->parentResumed:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->createRoomSuccess()V

    return-void
.end method

.method static synthetic access$1600(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->notifyNetServer()V

    return-void
.end method

.method static synthetic access$1800(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLiveRoomModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->context:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->myPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$300(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    return-object p0
.end method

.method static synthetic access$400(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->onLocationResponse()V

    return-void
.end method

.method static synthetic access$500(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)[Z
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    return-object p0
.end method

.method static synthetic access$600(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->uploadInfoToServer()V

    return-void
.end method

.method static synthetic access$802(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->voiceRoomIsCreate:Z

    return p1
.end method

.method static synthetic access$900(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->setVoiceTitleAndCover()V

    return-void
.end method

.method private checkShowNewBeautyPopupWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->context:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->hasOldBeautyItemSaved()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private createRoomSuccess()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "live_index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->m:Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->onResultListener:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    const/4 v3, 0x4

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    const/4 v3, 0x3

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_3

    :goto_0
    const/4 v2, 0x2

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;->D1(I)V

    .line 8
    :cond_4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->removeLaunchView()V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->saveModelData()V

    .line 10
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->dismissProgressDialog()V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fdb\u5165\u76f4\u64ad\u95f4\uff0c\u51c6\u5907\u63a8\u6d41\u4fe1\u606f\u4e2d... \uff0c \u8017\u65f6 \uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\u6beb\u79d2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LaunchLiveHolder"

    invoke-static {v2, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchTime:J

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->pushRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->checkLocalLiving(Lr7/a$a;Z)V

    const-wide/16 v2, 0x0

    .line 15
    sput-wide v2, Lcom/guochao/faceshow/aaspring/manager/a;->d:J

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/guochao/faceshow/aaspring/manager/a;->w(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;I)V

    return-void
.end method

.method private delayThreeSecond()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    :cond_0
    return-void
.end method

.method private getLiveRoomMsg()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons:Z

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$g;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->setOnResultListener(ZLcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$OnResultListener;)V

    return-void
.end method

.method private notifyNetServer()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v1, :cond_1

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isErrorPush:Z

    if-eqz v1, :cond_2

    return-void

    .line 5
    :cond_2
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v2, "tokens/live/newLive/startLive"

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    const-string v2, "streamType"

    const-string v3, "1"

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    .line 7
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPicUrl()Ljava/lang/String;

    move-result-object v2

    const-string v4, "liveImg"

    invoke-virtual {v1, v4, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 8
    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons:Z

    const-string v4, ""

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPersonsTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPersonsTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 9
    :cond_4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getNormalTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getNormalTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v2, "infoName"

    .line 10
    invoke-virtual {v1, v2, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicToggle:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    const-string v4, "0"

    if-eqz v2, :cond_6

    move-object v2, v3

    goto :goto_1

    :cond_6
    move-object v2, v4

    :goto_1
    const-string v5, "isSync"

    invoke-virtual {v1, v5, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x4

    goto :goto_2

    :cond_7
    const/4 v5, 0x3

    :goto_2
    aget-boolean v2, v2, v5

    const-string v5, "2"

    if-eqz v2, :cond_8

    move-object v2, v5

    goto :goto_3

    :cond_8
    move-object v2, v3

    :goto_3
    const-string v6, "statues"

    invoke-virtual {v1, v6, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 13
    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons:Z

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->getLastMicStatus()Ljava/lang/String;

    move-result-object v4

    :goto_4
    const-string v2, "isLockMicrophone"

    invoke-virtual {v1, v2, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 14
    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons:Z

    if-eqz v2, :cond_a

    move-object v3, v5

    :cond_a
    const-string v2, "types"

    invoke-virtual {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 15
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private onLocationResponse()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchBottomSwitchHolder:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;

    iget v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->b:I

    const v1, 0x7f1204e2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchNextBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const v2, 0x7f1204e6

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchNextBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/i;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchNextBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    return-void

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->dismissPopupwindow()V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchBottomSwitchHolder:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;

    if-eqz v4, :cond_5

    iget v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->b:I

    if-ne v4, v2, :cond_5

    .line 13
    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->getCoverIV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchNextBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    return-void

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->getTitleTV()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const v2, 0x7f120a86

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchNextBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    return-void

    .line 20
    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->getCoverIV()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$k;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->createVoiceRoom(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V

    return-void

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$l;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private refreshShareLay()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_a

    if-eqz v1, :cond_8

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    aget-boolean v2, v2, v1

    const/16 v4, 0x8

    if-eqz v2, :cond_3

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->switchPrivateLive:Landroid/widget/ImageView;

    const v5, 0x7f0f0375

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "FirstShowLiveToast"

    invoke-static {v2, v5, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f0f0379

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->context:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    const v9, 0x7f1204c0

    .line 6
    invoke-virtual {v8, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->context:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    const v9, 0x7f120738

    .line 7
    invoke-virtual {v8, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    if-nez v9, :cond_1

    const/16 v9, 0x64

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPrivateOnlineNum()I

    move-result v9

    :goto_1
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v0

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v2, v6, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showLiveToast(Landroid/content/Context;ILjava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicLay:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicToggle:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2

    .line 13
    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->switchPrivateLive:Landroid/widget/ImageView;

    const v3, 0x7f0f0374

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicLay:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :goto_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->switchPrivateLive:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    aget-boolean v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->setSelected(Landroid/view/View;Z)V

    goto/16 :goto_6

    .line 17
    :cond_4
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_5

    .line 18
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weichatShare:Landroid/widget/ImageView;

    const v3, 0x7f0f02ad

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1204f1

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_3

    .line 20
    :cond_5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weichatShare:Landroid/widget/ImageView;

    const v3, 0x7f0f02ac

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    :goto_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weichatShare:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    aget-boolean v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->setSelected(Landroid/view/View;Z)V

    goto :goto_6

    .line 22
    :cond_6
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_7

    .line 23
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->twitterShare:Landroid/widget/ImageView;

    const v3, 0x7f0f02b0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1204f0

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_4

    .line 25
    :cond_7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->twitterShare:Landroid/widget/ImageView;

    const v3, 0x7f0f0264

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    :goto_4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->twitterShare:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    aget-boolean v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->setSelected(Landroid/view/View;Z)V

    goto :goto_6

    .line 27
    :cond_8
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_9

    .line 28
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->faceBookShare:Landroid/widget/ImageView;

    const v3, 0x7f0f02aa

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1204ef

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_5

    .line 30
    :cond_9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->faceBookShare:Landroid/widget/ImageView;

    const v3, 0x7f0f02a9

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    :goto_5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->faceBookShare:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    aget-boolean v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->setSelected(Landroid/view/View;Z)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private removeLaunchView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setEditData(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->lastIndex:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->setVoiceTitleAndCover()V

    goto/16 :goto_2

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mImageViewCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mPicTipsIV:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f0f036e

    if-nez v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mImageViewCover:Landroid/widget/ImageView;

    invoke-static {v1, v0, v2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mImageViewCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    :goto_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons:Z

    const-string v1, ""

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPersonsTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPersonsTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPersonsTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getNormalTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getNormalTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getNormalTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_7
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private setSelected(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method private setVoiceTitleAndCover()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->getTitleTV()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->getTitleTV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->getTitleTV()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 4
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->voiceRoomIsCreate:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    const v2, 0x7f0f036e

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->getCoverIV()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->getCoverIV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->voiceRoomIsCreate:Z

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mImageViewCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mPicTipsIV:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mImageViewCover:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->getCoverIV()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mImageViewCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mImageViewCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    const v1, 0x7f0f0634

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->getBgUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->context:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {v0}, Lcom/bumptech/glide/c;->w(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->getBgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->voiceRoomBackground:Landroid/widget/ImageView;

    .line 17
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto :goto_2

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->voiceRoomBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method

.method private showProgressDialog()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private uploadInfoToServer()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLiveRoomModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->setLiveCoverImg(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->setPersonsTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->setNormalTitle(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_16

    .line 6
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_15

    const v2, 0x7f1204ea

    const v3, 0x7f1204eb

    const v4, 0x7f1204ec

    const v5, 0x7f1204ed

    const/4 v6, 0x1

    if-eqz v1, :cond_10

    if-eq v1, v6, :cond_b

    const/4 v7, 0x2

    if-eq v1, v7, :cond_6

    const/4 v7, 0x3

    if-eq v1, v7, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->createRoomSuccess()V

    return-void

    .line 8
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/app/Activity;

    sget-object v8, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$WechatMoments;->NAME:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    iget-boolean v9, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons:Z

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    const v4, 0x7f1204ed

    :goto_2
    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v6

    invoke-interface {v6}, Lb8/d;->c()Lb8/a;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v6}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons:Z

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const v2, 0x7f1204eb

    :goto_3
    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    .line 12
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPicUrl()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLiveRoomModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getShareUrl()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 13
    invoke-static/range {v7 .. v14}, Lv9/c;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;)V

    .line 14
    :cond_5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->createRoomSuccess()V

    return-void

    .line 15
    :cond_6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLiveRoomModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->createRoomSuccess()V

    return-void

    .line 17
    :cond_7
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 18
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$SinaWeibo;->NAME:Ljava/lang/String;

    goto :goto_4

    .line 19
    :cond_8
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$WechatMoments;->NAME:Ljava/lang/String;

    :goto_4
    move-object v8, v1

    .line 20
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/app/Activity;

    .line 21
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    iget-boolean v9, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons:Z

    if-eqz v9, :cond_9

    goto :goto_5

    :cond_9
    const v4, 0x7f1204ed

    :goto_5
    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v6

    invoke-interface {v6}, Lb8/d;->c()Lb8/a;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v6}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 22
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons:Z

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    const v2, 0x7f1204eb

    :goto_6
    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    .line 23
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPicUrl()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLiveRoomModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getShareUrl()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 24
    invoke-static/range {v7 .. v14}, Lv9/c;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;)V

    .line 25
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->delayThreeSecond()V

    return-void

    .line 26
    :cond_b
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLiveRoomModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 27
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->createRoomSuccess()V

    return-void

    .line 28
    :cond_c
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, ""

    goto :goto_7

    :cond_d
    const-string v1, "Twitter"

    :goto_7
    move-object v8, v1

    .line 29
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/app/Activity;

    .line 30
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    iget-boolean v9, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons:Z

    if-eqz v9, :cond_e

    goto :goto_8

    :cond_e
    const v4, 0x7f1204ed

    :goto_8
    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v6

    invoke-interface {v6}, Lb8/d;->c()Lb8/a;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v6}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 31
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons:Z

    if-eqz v1, :cond_f

    goto :goto_9

    :cond_f
    const v2, 0x7f1204eb

    :goto_9
    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    .line 32
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPicUrl()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLiveRoomModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getShareUrl()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 33
    invoke-static/range {v7 .. v14}, Lv9/c;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;)V

    .line 34
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->delayThreeSecond()V

    return-void

    .line 35
    :cond_10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLiveRoomModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 36
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->createRoomSuccess()V

    return-void

    .line 37
    :cond_11
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 38
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Wechat;->NAME:Ljava/lang/String;

    goto :goto_a

    .line 39
    :cond_12
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$FaceBook;->NAME:Ljava/lang/String;

    :goto_a
    move-object v8, v1

    .line 40
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/app/Activity;

    .line 41
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    iget-boolean v9, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons:Z

    if-eqz v9, :cond_13

    goto :goto_b

    :cond_13
    const v4, 0x7f1204ed

    :goto_b
    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v6

    invoke-interface {v6}, Lb8/d;->c()Lb8/a;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v6}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 42
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons:Z

    if-eqz v1, :cond_14

    goto :goto_c

    :cond_14
    const v2, 0x7f1204eb

    :goto_c
    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    .line 43
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPicUrl()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLiveRoomModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getShareUrl()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 44
    invoke-static/range {v7 .. v14}, Lv9/c;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;)V

    .line 45
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->delayThreeSecond()V

    return-void

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 46
    :cond_16
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->createRoomSuccess()V

    return-void
.end method


# virtual methods
.method public dismissPopupwindow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_LIVE_NEW_BEAUTY"

    invoke-virtual {v0, v1}, Lja/a;->e(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "FaceBean"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mPopupWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method protected getLastMicStatus()Ljava/lang/String;
    .locals 2

    const-string v0, "last_mic_status"

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getSelfInt2(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "0"

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d02f0

    return v0
.end method

.method public getLiveRoomModel()Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLiveRoomModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    return-object v0
.end method

.method public isPersons()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->myPath:Ljava/lang/String;

    const-string v1, "LaunchLiveHolder:myPath"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LaunchLiveHolder:this"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object p2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->myPath:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const/16 p2, 0x33

    if-eq p1, p2, :cond_6

    const/16 p2, 0x34

    if-eq p1, p2, :cond_5

    const/16 p2, 0x45

    if-eq p1, p2, :cond_4

    const/16 p2, 0x79

    if-eq p1, p2, :cond_3

    const/16 p2, 0x2727

    if-eq p1, p2, :cond_2

    goto/16 :goto_0

    :cond_2
    if-eqz p3, :cond_7

    .line 4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string p2, "intent_extra_key_qr_scan"

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "uri"

    .line 6
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 7
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->context:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->myPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->context:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p3, p2, v0, p1, v1}, Lcom/guochao/faceshow/utils/Photo_Take_Util;->startPhotoZoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 8
    :cond_3
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;-><init>()V

    .line 9
    sget-object p2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->myPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setThumb(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getDisplayThumbUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setUri(Landroid/net/Uri;)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, p1, v0}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->copy(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Z)Lio/reactivex/k;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 13
    invoke-virtual {p1, p1, v0}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->copy(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Z)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$i;

    invoke-direct {v0, p0, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;J)V

    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-static {p3}, Lcom/yalantis/ucrop/a;->b(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->context:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$h;

    invoke-direct {v1, p0, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;J)V

    invoke-static {v0, p1, v1}, Lba/a;->p(Landroid/content/Context;Landroid/net/Uri;Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_7

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/AAImageUtil;->getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->myPath:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->context:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p2, p1, v0, p3, v1}, Lcom/guochao/faceshow/utils/Photo_Take_Util;->startPhotoZoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V

    goto :goto_0

    .line 19
    :cond_6
    invoke-static {}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->getmCameraUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PhotoCameraPermissionUtils"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->cameraPath:Ljava/lang/String;

    sget-object p3, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->myPath:Ljava/lang/String;

    invoke-static {}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->getmCameraUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->context:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1, p2, p3, v0, v1}, Lcom/guochao/faceshow/utils/Photo_Take_Util;->startPhotoZoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 17
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_11

    .line 2
    :sswitch_0
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    array-length v2, v7

    if-ge v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    .line 4
    aget-boolean v2, v7, v3

    xor-int/2addr v2, v6

    aput-boolean v2, v7, v3

    goto :goto_1

    .line 5
    :cond_0
    aput-boolean v5, v7, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->faceBookShare:Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->twitterShare:Landroid/widget/ImageView;

    iget-object v11, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weichatShare:Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->switchPrivateLive:Landroid/widget/ImageView;

    iget-object v13, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicLay:Landroid/view/View;

    iget-object v14, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicDivider:Landroid/view/View;

    iget-object v15, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicToggle:Landroid/view/View;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weiboShare:Landroid/widget/ImageView;

    move-object/from16 v16, v1

    invoke-static/range {v7 .. v16}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/d;->a([ZLandroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V

    goto/16 :goto_11

    :cond_2
    const/4 v1, 0x0

    .line 7
    :goto_2
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_4

    if-ne v1, v4, :cond_3

    .line 8
    aget-boolean v3, v2, v4

    xor-int/2addr v3, v6

    aput-boolean v3, v2, v4

    goto :goto_3

    .line 9
    :cond_3
    aput-boolean v5, v2, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->refreshShareLay()V

    goto/16 :goto_11

    :sswitch_1
    const/4 v1, 0x0

    .line 11
    :goto_4
    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    array-length v2, v7

    if-ge v1, v2, :cond_6

    if-ne v1, v4, :cond_5

    .line 12
    aget-boolean v2, v7, v4

    xor-int/2addr v2, v6

    aput-boolean v2, v7, v4

    goto :goto_5

    .line 13
    :cond_5
    aput-boolean v5, v7, v1

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 14
    :cond_6
    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->faceBookShare:Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->twitterShare:Landroid/widget/ImageView;

    iget-object v11, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weichatShare:Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->switchPrivateLive:Landroid/widget/ImageView;

    iget-object v13, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicLay:Landroid/view/View;

    iget-object v14, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicDivider:Landroid/view/View;

    iget-object v15, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicToggle:Landroid/view/View;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weiboShare:Landroid/widget/ImageView;

    move-object/from16 v16, v1

    invoke-static/range {v7 .. v16}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/d;->a([ZLandroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V

    goto/16 :goto_11

    :sswitch_2
    const/4 v1, 0x0

    .line 15
    :goto_6
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_8

    if-ne v1, v6, :cond_7

    .line 16
    aget-boolean v3, v2, v6

    xor-int/2addr v3, v6

    aput-boolean v3, v2, v6

    goto :goto_7

    .line 17
    :cond_7
    aput-boolean v5, v2, v1

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 18
    :cond_8
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 19
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->faceBookShare:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->twitterShare:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weichatShare:Landroid/widget/ImageView;

    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->switchPrivateLive:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicLay:Landroid/view/View;

    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicDivider:Landroid/view/View;

    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicToggle:Landroid/view/View;

    iget-object v11, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weiboShare:Landroid/widget/ImageView;

    invoke-static/range {v2 .. v11}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/d;->a([ZLandroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V

    goto/16 :goto_11

    .line 20
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->refreshShareLay()V

    goto/16 :goto_11

    .line 21
    :sswitch_3
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    .line 22
    :goto_8
    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    array-length v2, v7

    if-ge v1, v2, :cond_b

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    .line 23
    aget-boolean v3, v7, v2

    xor-int/2addr v3, v6

    aput-boolean v3, v7, v2

    goto :goto_9

    .line 24
    :cond_a
    aput-boolean v5, v7, v1

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 25
    :cond_b
    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->faceBookShare:Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->twitterShare:Landroid/widget/ImageView;

    iget-object v11, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weichatShare:Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->switchPrivateLive:Landroid/widget/ImageView;

    iget-object v13, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicLay:Landroid/view/View;

    iget-object v14, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicDivider:Landroid/view/View;

    iget-object v15, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicToggle:Landroid/view/View;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weiboShare:Landroid/widget/ImageView;

    move-object/from16 v16, v1

    invoke-static/range {v7 .. v16}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/d;->a([ZLandroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V

    goto/16 :goto_11

    :cond_c
    const/4 v1, 0x0

    .line 26
    :goto_a
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    array-length v4, v2

    if-ge v1, v4, :cond_e

    if-ne v1, v3, :cond_d

    .line 27
    aget-boolean v4, v2, v3

    xor-int/2addr v4, v6

    aput-boolean v4, v2, v3

    goto :goto_b

    .line 28
    :cond_d
    aput-boolean v5, v2, v1

    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 29
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->refreshShareLay()V

    goto/16 :goto_11

    .line 30
    :sswitch_4
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPersonsTitles()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPersonsTitles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_e

    .line 31
    :cond_f
    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCurPersonsTitle:I

    const-string v2, ""

    if-gez v1, :cond_14

    .line 32
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 33
    :cond_10
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPersonsTitles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_11

    .line 34
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPersonsTitles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 35
    iget v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCurPersonsTitle:I

    if-eq v4, v3, :cond_10

    .line 36
    iput v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCurPersonsTitle:I

    .line 37
    :cond_11
    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCurPersonsTitle:I

    if-gez v1, :cond_12

    .line 38
    iput v5, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCurPersonsTitle:I

    .line 39
    :cond_12
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPersonsTitles()Ljava/util/List;

    move-result-object v1

    iget v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCurPersonsTitle:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 40
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->setPersonsTitle(Ljava/lang/String;)V

    .line 41
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    if-nez v1, :cond_13

    goto :goto_c

    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_c
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_11

    :cond_14
    add-int/2addr v1, v6

    .line 43
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCurPersonsTitle:I

    .line 44
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPersonsTitles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_15

    .line 45
    iput v5, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCurPersonsTitle:I

    .line 46
    :cond_15
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getPersonsTitles()Ljava/util/List;

    move-result-object v1

    iget v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCurPersonsTitle:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    if-nez v1, :cond_16

    goto :goto_d

    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_d
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_11

    :cond_17
    :goto_e
    return-void

    .line 49
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    xor-int/2addr v2, v6

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto/16 :goto_11

    .line 50
    :sswitch_6
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->context:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->switchCamera()V

    goto/16 :goto_11

    .line 51
    :sswitch_7
    invoke-static/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_18

    return-void

    .line 52
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    .line 53
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "Photo_Dialog_Fragment"

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 54
    instance-of v4, v2, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    if-eqz v4, :cond_19

    .line 55
    check-cast v2, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    iput-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mPhotoDialogFragment:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    .line 56
    :cond_19
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mPhotoDialogFragment:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    if-nez v2, :cond_1a

    .line 57
    new-instance v2, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    invoke-direct {v2}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;-><init>()V

    iput-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mPhotoDialogFragment:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    .line 58
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "openLive"

    .line 59
    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mPhotoDialogFragment:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    invoke-virtual {v4, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    :cond_1a
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mPhotoDialogFragment:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1b

    return-void

    .line 62
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "crop"

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".jpg"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->myPath:Ljava/lang/String;

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->cameraPath:Ljava/lang/String;

    .line 64
    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mPhotoDialogFragment:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    invoke-virtual {v4, v2}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->setCameraPath(Ljava/lang/String;)V

    .line 65
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mPhotoDialogFragment:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    sget-object v4, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->myPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->setUpdatePath(Ljava/lang/String;)V

    .line 66
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mPhotoDialogFragment:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 67
    :sswitch_8
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->getInstance()Lcom/guochao/faceshow/utils/SensitiveWordFilter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->checkKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1c

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 70
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    const v3, 0x7f1205a0

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 71
    :cond_1c
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLiveRoomModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    invoke-virtual {v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->setLiveTitle(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchTime:J

    .line 73
    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 74
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/i;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 75
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    const v3, 0x7f12005d

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 76
    invoke-virtual {v1, v6}, Landroid/view/View;->setClickable(Z)V

    return-void

    .line 77
    :cond_1d
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchBottomSwitchHolder:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;

    if-eqz v2, :cond_1e

    iget v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->b:I

    if-ne v2, v4, :cond_1e

    .line 78
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->onLocationResponse()V

    return-void

    .line 79
    :cond_1e
    iget-boolean v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->withPk:Z

    if-eqz v2, :cond_1f

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->onLocationResponse()V

    goto :goto_11

    .line 81
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$j;

    invoke-direct {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/i;->d(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/modulars/live/common/i$a;)V

    goto :goto_11

    :sswitch_9
    const/4 v1, 0x0

    .line 82
    :goto_f
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_21

    if-nez v1, :cond_20

    .line 83
    aget-boolean v3, v2, v5

    xor-int/2addr v3, v6

    aput-boolean v3, v2, v5

    goto :goto_10

    .line 84
    :cond_20
    aput-boolean v5, v2, v1

    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 85
    :cond_21
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 86
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->selectShare:[Z

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->faceBookShare:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->twitterShare:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weichatShare:Landroid/widget/ImageView;

    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->switchPrivateLive:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicLay:Landroid/view/View;

    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicDivider:Landroid/view/View;

    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicToggle:Landroid/view/View;

    iget-object v11, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weiboShare:Landroid/widget/ImageView;

    invoke-static/range {v2 .. v11}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/d;->a([ZLandroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V

    goto :goto_11

    .line 87
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->refreshShareLay()V

    :goto_11
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a03bb -> :sswitch_9
        0x7f0a0614 -> :sswitch_8
        0x7f0a0615 -> :sswitch_7
        0x7f0a0617 -> :sswitch_6
        0x7f0a0687 -> :sswitch_5
        0x7f0a06a1 -> :sswitch_4
        0x7f0a0b0e -> :sswitch_3
        0x7f0a0d5d -> :sswitch_2
        0x7f0a0e46 -> :sswitch_1
        0x7f0a0e47 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLiveFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->pushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->parentResumed:Z

    return-void
.end method

.method public onPushSuccess()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->pushed:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->pushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63a8\u6d41\u6210\u529f, \u8017\u65f6 \uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\u6beb\u79d2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LaunchLiveHolder"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->parentResumed:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->isProgressLoading()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->createRoomSuccess()V

    :cond_1
    return-void
.end method

.method public onSaveInstantState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->myPath:Ljava/lang/String;

    const-string v1, "my_path"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->cameraPath:Ljava/lang/String;

    const-string v1, "camera_path"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->getmCameraUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public pushStream(Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u51c6\u5907\u63a8\u6d41 pushUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LaunchLiveHolder"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mPushUrl:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mTXLivePusher:Lcom/guochao/pusher/GCLivePusher;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/pusher/GCLivePusher;->setLiveResolution(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mTXLivePusher:Lcom/guochao/pusher/GCLivePusher;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mPushUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->getLiveRoomModel()Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->getStreamId()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lcom/guochao/user/RoomInfo;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->getLiveRoomModel()Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->getLiveRoomModel()Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->getLiveRoomModel()Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->getStreamId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const-string v8, ""

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/guochao/user/RoomInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p1, v0, v2, v9}, Lcom/guochao/pusher/GCLivePusher;->startPush(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/user/RoomInfo;)I

    move-result p1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchTime:J

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u51c6\u5907\u63a8\u6d41 i = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->release()V

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isReleased:Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->release()V

    .line 8
    invoke-static {}, Lv9/c;->c()V

    return-void
.end method

.method public reloadNet()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->isPersonsLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getNetPersonsTitles(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$OnResultListener;)V

    :cond_0
    return-void
.end method

.method public setBottomHolder(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchBottomSwitchHolder:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;

    return-void
.end method

.method public setCurrentIndex(IZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons:Z

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->lastIndex:I

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-ne p1, v2, :cond_5

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;->getVoiceRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    const p2, 0x7f120a43

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getId()I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchNextBtn:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchNextBtn:Landroid/widget/TextView;

    const p2, 0x7f120a45

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->voiceRoomIsCreate:Z

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchNextBtn:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$m;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    invoke-virtual {p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->getData(Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$IData;)V

    .line 11
    :goto_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->setVoiceTitleAndCover()V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    const p2, 0x7f120a86

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->shareArea:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->spaceArea:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->voiceRoomBackground:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    const p2, 0x7f0f0634

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->getBgUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->context:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p1}, Lcom/bumptech/glide/c;->w(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->getBgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->voiceRoomBackground:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto :goto_2

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->voiceRoomBackground:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->bottomButtonArea:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchNextBtn:Landroid/widget/TextView;

    const v0, 0x7f1204bf

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    const v0, 0x7f1204b6

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->spaceArea:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->voiceRoomBackground:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->shareArea:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->bottomButtonArea:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_6

    .line 27
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->getLiveRoomMsg()V

    goto :goto_3

    .line 28
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLaunchLiveTitleModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->setEditData(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;)V

    .line 29
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->liveLaunchDice:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    .line 30
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons:Z

    if-eqz p2, :cond_7

    .line 31
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_7
    const/16 p2, 0x8

    .line 32
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public setLiveRoomModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLiveRoomModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getShareUrl()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mLiveRoomModel:Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->setShareUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setOnResultListener(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->onResultListener:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;

    return-void
.end method

.method public setPusher(Lcom/guochao/pusher/GCLivePusher;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mTXLivePusher:Lcom/guochao/pusher/GCLivePusher;

    return-void
.end method

.method public startLiveWithPk()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->withPk:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchNextBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    :cond_0
    return-void
.end method
