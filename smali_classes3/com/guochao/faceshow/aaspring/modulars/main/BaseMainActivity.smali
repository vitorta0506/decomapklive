.class public abstract Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Ly7/a$a;
.implements Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Z

.field private d:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;

.field private e:Ljava/lang/Runnable;

.field f:Landroid/app/Dialog;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/PopupWindow;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/PopupWindow;

.field private k:Landroid/view/View;

.field private l:Lcom/guochao/faceshow/views/e;

.field protected m:Z

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->a:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->c:Z

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->e:Ljava/lang/Runnable;

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->n:Z

    return-void
.end method

.method private B0()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignInShown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getNetToday()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getNetToday()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/guochao/faceshow/signin/SigninManager;->checkSignInTask(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/signin/SigninManager;->setServerDiffTime(J)V

    :cond_0
    return-void
.end method

.method private E0(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "roomId"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chatGroupId"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    invoke-direct {v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;-><init>()V

    .line 6
    invoke-virtual {v2, v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setRoomId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setUserId(Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setId(I)V

    .line 9
    invoke-virtual {v2, p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setChatGroupId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 11
    invoke-static {p0, p1, v1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->gotoVoiceRoom(Landroid/content/Context;ILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private G0(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;I)V"
        }
    .end annotation

    const/4 p3, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 2
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getModuleCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object v1

    const/16 v3, 0x2712

    invoke-virtual {v1, p1, v0, v3, v2}, Lcom/guochao/faceshow/aaspring/manager/a;->k(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/manager/a$k;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v2}, Lcom/guochao/faceshow/aaspring/manager/a;->l(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/manager/a$k;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private H0(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-direct {p0, v2, v3, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->G0(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Ljava/util/List;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private I0()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->getInstance(Landroid/content/Context;)Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->getFilterItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/pusher/beauty/FilterItem;

    .line 4
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lut"

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXShowPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/guochao/pusher/beauty/FilterItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v2}, Lcom/guochao/pusher/beauty/FilterItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$i;

    invoke-direct {v5, p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Ljava/io/File;)V

    invoke-static {v2, v4, v5}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->download(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private N0(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$h;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Landroid/util/SparseArray;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method private S0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const v1, 0x7f0d0404

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->k:Landroid/view/View;

    const v1, 0x7f0a070e

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->i:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->k:Landroid/view/View;

    const v1, 0x7f0a027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->g:Landroid/widget/ImageView;

    return-void
.end method

.method private T0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->d:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "SHORT_VIDEO_UPLOAD_STATUS"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->d:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private W0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->l:Lcom/guochao/faceshow/views/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->l:Lcom/guochao/faceshow/views/e;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1209a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->l:Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1209a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->l:Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1208a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->i(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->l:Lcom/guochao/faceshow/views/e;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->g()V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->l:Lcom/guochao/faceshow/views/e;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->h(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->l:Lcom/guochao/faceshow/views/e;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method private Z0(J)V
    .locals 7

    .line 1
    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$b;

    const-wide/16 v0, 0x3e8

    mul-long v2, p1, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;JJ)V

    .line 2
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->u0(ZZ)V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->I0()V

    return-void
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->k:Landroid/view/View;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->n:Z

    return p1
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->N0(Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->H0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic l0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic m0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->h:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic n0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->h:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic o0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->g:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic p0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->g:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic q0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->j:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic r0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->j:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic s0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->Z0(J)V

    return-void
.end method

.method static synthetic t0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->W0()V

    return-void
.end method

.method private u0(ZZ)V
    .locals 3

    if-eqz p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "with_token"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-class p2, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    .line 3
    invoke-virtual {p0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->Q0(Landroid/app/Activity;)V

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getBirthdayStr()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/bean/UserBean;

    iget p2, p2, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    iget p1, p1, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->Y0()V

    .line 6
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->v0()V

    return-void

    :cond_3
    const-string p2, "api/sys/tokenLogin"

    .line 7
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p2

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-string v2, "userToken"

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "token"

    invoke-virtual {p2, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->K(Z)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Z)V

    .line 9
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public static v0()V
    .locals 4

    const-string v0, "last_login_day"

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getSelfString2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "USER_LOGIN"

    .line 4
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->track(Ljava/lang/String;)V

    .line 5
    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setSelfString2(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method A0()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected F0(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->checkWhereToGo(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->u0(ZZ)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-class v2, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->clear(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Main OnCreate"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TAG_KEY_FORM_PUSH"

    invoke-static {v3, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "n_extras"

    .line 9
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 12
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$d;

    invoke-direct {v3, p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Ljava/util/Map;Z)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-direct {p0, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->u0(ZZ)V

    return-void

    .line 19
    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->u0(ZZ)V

    .line 20
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->E0(Landroid/content/Intent;)V

    return-void

    .line 21
    :cond_3
    iget-boolean v3, v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;->goToWelcomePage:Z

    if-eqz v3, :cond_4

    .line 22
    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;->goToWelcomePage:Z

    .line 23
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->X0()V

    .line 24
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$e;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Z)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 25
    :cond_4
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;->pushData:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 26
    invoke-static {p0, v3, v2}, Lcom/guochao/faceshow/utils/PushUtils;->openNotification(Landroid/content/Context;Ljava/util/Map;Z)V

    .line 27
    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->u0(ZZ)V

    .line 28
    :cond_5
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;->shareData:Ljava/util/Map;

    if-eqz v3, :cond_6

    .line 29
    invoke-static {p0, v3, v2}, Lcom/guochao/faceshow/utils/PushUtils;->openShareActivity(Landroid/content/Context;Ljava/util/Map;Z)V

    .line 30
    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->u0(ZZ)V

    .line 31
    :cond_6
    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;->withChat:Z

    if-nez v1, :cond_7

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;->withEmptyChat:Z

    if-eqz v0, :cond_8

    .line 32
    :cond_7
    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->u0(ZZ)V

    :cond_8
    return-void
.end method

.method public P0(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->n:Z

    const-string v0, "tokens/live/cache/getLiveList"

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object v0

    const-string v1, "page"

    const-string v2, "1"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const/16 v1, 0x14

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "limit"

    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const-string v1, "typeId"

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;I)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method protected Q0(Landroid/app/Activity;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getBindMobileLimit()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->isSouthKorea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean;->mobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-class p1, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-static {p0, v1, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->u0(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;ILjava/lang/String;I)V

    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getIsUpdate()I

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lgb/c;->p()Lgb/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getIsUpdate()I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lgb/c;->u(Z)Lgb/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgb/c;->l(Landroid/app/Activity;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->y0()V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->o()Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->s()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->o()Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->s()V

    return-void
.end method

.method public X0()V
    .locals 15

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-string v1, "splashInfoData"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData$ResultData;

    if-eqz v0, :cond_15

    .line 2
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData$ResultData;->clickAction:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 3
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData$ResultData;->schemeUrl:Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "1"

    const-string v5, "0"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v3, "5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :pswitch_1
    const-string v3, "4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :pswitch_2
    const-string v3, "3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :pswitch_3
    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :pswitch_4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    const-string v1, "titleName"

    const-string v3, "userId"

    const-string v9, "&"

    const-string v10, "="

    const-string v11, ""

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_9

    .line 5
    :pswitch_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "facecast://homepage?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 6
    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 8
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 9
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    aget-object v4, v0, v2

    .line 10
    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 11
    array-length v5, v4

    if-ne v5, v6, :cond_6

    .line 12
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    aget-object v9, v4, v8

    aget-object v4, v4, v7

    invoke-virtual {v5, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 17
    :pswitch_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "facecast://musictopic?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 18
    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 20
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 21
    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    .line 22
    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 23
    array-length v5, v4

    if-ne v5, v6, :cond_8

    .line 24
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    aget-object v9, v4, v8

    aget-object v4, v4, v7

    invoke-virtual {v5, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 25
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    const-string v3, "musicId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 27
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    const-string v5, "musicName"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 28
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    const-string v6, "musicUrl"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 33
    :pswitch_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "facecast://videotopic?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 34
    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 36
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 37
    array-length v2, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_b

    aget-object v4, v0, v3

    .line 38
    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 39
    array-length v5, v4

    if-ne v5, v6, :cond_a

    .line 40
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    aget-object v9, v4, v8

    aget-object v4, v4, v7

    invoke-virtual {v5, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 41
    :cond_b
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    const-class v3, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 42
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    const-string v3, "topicId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    const-string v4, "topicName"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "topic_id"

    .line 45
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 48
    :pswitch_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "facecast://video/detail?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 49
    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 51
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 52
    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_c

    aget-object v4, v0, v2

    .line 53
    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 54
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    aget-object v6, v4, v8

    aget-object v4, v4, v7

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 55
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/activity/VideoPlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    const-string v2, "videoId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "video_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    const-string v2, "videoUrl"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    const-string v2, "videoImg"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "imgUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 61
    :pswitch_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "facecast://live/detail?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 62
    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 64
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 66
    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 67
    array-length v4, v3

    if-ne v4, v6, :cond_d

    .line 68
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    aget-object v5, v3, v8

    aget-object v3, v3, v7

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 69
    :cond_e
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    const-string v1, "liveId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 71
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/LiveInfoUtils;->getLiveInfoAndJumpIfNeed(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_9

    .line 72
    :pswitch_b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "facecast://webview?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 73
    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 75
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 77
    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 78
    array-length v12, v9

    if-ne v12, v6, :cond_f

    .line 79
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    aget-object v12, v9, v8

    aget-object v9, v9, v7

    invoke-virtual {v3, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 80
    :cond_f
    iget-object v12, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    aget-object v13, v9, v8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v9, v8

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 81
    :cond_10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    const-string v1, "h5Type"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 82
    :cond_11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    const-string v1, "h5Url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_8

    :cond_12
    move-object v0, v11

    .line 83
    :goto_8
    invoke-static {v5, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 84
    new-instance v1, Lcom/guochao/faceshow/bean/ShareActivityBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/bean/ShareActivityBean;-><init>()V

    .line 85
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    const-string v3, "shareUrl"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 86
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    const-string v5, "shareImg"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 87
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    const-string v6, "shareText"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 88
    iput-object v3, v1, Lcom/guochao/faceshow/bean/ShareActivityBean;->shareImgUrl:Ljava/lang/String;

    .line 89
    iput-object v2, v1, Lcom/guochao/faceshow/bean/ShareActivityBean;->webPageUrl:Ljava/lang/String;

    .line 90
    iput-object v5, v1, Lcom/guochao/faceshow/bean/ShareActivityBean;->shareTextCn:Ljava/lang/String;

    .line 91
    iput-object v5, v1, Lcom/guochao/faceshow/bean/ShareActivityBean;->shareTextEn:Ljava/lang/String;

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 93
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b:Ljava/util/HashMap;

    const-string v6, "isShare"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 94
    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/guochao/faceshow/web/WebViewActivity$e;->g(Z)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/web/WebViewActivity$e;->i(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/web/WebViewActivity$e;->h(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/web/WebViewActivity$e;->k(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    goto :goto_9

    .line 97
    :cond_13
    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    goto :goto_9

    .line 98
    :cond_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 99
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 100
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_15
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public Y0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getBirthdayStr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "birthday"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    iget v1, v1, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    const-string v2, "sex"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0074

    return v0
.end method

.method public goRandomLive()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->P0(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    invoke-static {}, Lgb/c;->p()Lgb/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgb/c;->s(II)V

    const/4 v0, -0x1

    if-nez p1, :cond_3

    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_3

    const/4 v1, 0x0

    const-string v2, "checkStartLive"

    .line 3
    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "KEY_NOTIFICATION_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "module_notification"

    invoke-static {p3, v3, v2}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-eq p3, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p3

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/utils/NotificationsUtils;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p3

    const-string v2, "KEY_OPEN_LIVE"

    invoke-virtual {p3, v2}, Lja/a;->f(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    .line 8
    instance-of v2, p3, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    if-eqz v2, :cond_2

    .line 9
    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->W1()V

    goto :goto_0

    .line 10
    :cond_2
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->c:Z

    :cond_3
    :goto_0
    const/16 p3, 0x3e9

    if-ne p1, p3, :cond_4

    if-ne p2, v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    const-string p2, "1"

    iput-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->mobile:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->Q0(Landroid/app/Activity;)V

    :cond_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->c(Landroid/content/Context;)Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v1

    sget-object v2, Lcom/guochao/faceshow/aaspring/manager/user/UserModelUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/user/UserModelUtils;

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/manager/user/UserModelUtils;->convert(Lcom/guochao/faceshow/bean/UserBean;)Lcom/guochao/faceshow/session/model/UserSessionModel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->updateUserSession(Lcom/guochao/faceshow/session/model/UserSessionModel;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->initWhenSplashOrMain()V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->checkNetworkToken()V

    .line 5
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-class v0, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->S0()V

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->T0()V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->r()V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->A0()V

    .line 11
    invoke-static {}, Ly7/a;->a()Ly7/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Ly7/a;->c(Ly7/a$a;)V

    const/4 p1, 0x0

    .line 12
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/NewYearEventUtils;->checkNewYearEvent(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->Z()V

    .line 14
    sget-object p1, Lcom/guochao/faceshow/utils/LiveRandomGo;->INSTANCE:Lcom/guochao/faceshow/utils/LiveRandomGo;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/utils/LiveRandomGo;->registerRandomLiveListener(Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;)V

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->B0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Ly7/a;->a()Ly7/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ly7/a;->d(Ly7/a$a;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->d:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->d:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lgb/c;->p()Lgb/c;

    move-result-object v0

    invoke-virtual {v0}, Lgb/c;->o()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    invoke-static {}, Lc8/a;->r()Lc8/a;

    move-result-object v0

    invoke-virtual {v0}, Lc8/a;->z()V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/utils/Foreground;->get()Lcom/guochao/faceshow/utils/Foreground;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/utils/Foreground;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 10
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->L4:Z

    if-nez v0, :cond_2

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->release()V

    .line 12
    :cond_2
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz8/c;->N(Lz8/b;)V

    .line 13
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lz8/c;->J(ZZ)V

    .line 14
    sget-object v0, Lcom/guochao/faceshow/utils/LiveRandomGo;->INSTANCE:Lcom/guochao/faceshow/utils/LiveRandomGo;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/utils/LiveRandomGo;->unRegisterRandomLiveListener(Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->F0(Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onServerConfigChanged(Lcom/guochao/faceshow/aaspring/config/ServerConfig;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onServerConfigChanged(Lcom/guochao/faceshow/aaspring/config/ServerConfig;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V

    .line 2
    invoke-static {p0, p2}, Lcom/guochao/faceshow/aaspring/utils/NewYearEventUtils;->checkNewYearEvent(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V

    return-void
.end method

.method public sendVideo()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;-><init>()V

    const/4 v3, 0x1

    const-string v4, "main_menu"

    .line 3
    invoke-static {v0, v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;->showFragmentAsDialog(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;ZLjava/lang/String;)V

    return-void
.end method

.method protected y0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "agree_license"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, p0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0113

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->f:Landroid/app/Dialog;

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->o()Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->f:Landroid/app/Dialog;

    iput-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->d:Landroid/app/Dialog;

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->o()Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->g(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f06038c

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v0, 0x7f0a016c

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$j;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0b41

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$k;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a08aa

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$l;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public z()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->Q0(Landroid/app/Activity;)V

    return-void
.end method
