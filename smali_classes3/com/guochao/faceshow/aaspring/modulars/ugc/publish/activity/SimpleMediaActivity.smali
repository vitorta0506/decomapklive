.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$g;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/simpleMediaActivity"
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

.field private b:Ljava/io/File;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->c:Ljava/util/ArrayList;

    const/16 v0, 0x9

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->e:I

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;)Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->b:Ljava/io/File;

    return-object p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->b:Ljava/io/File;

    return-object p1
.end method

.method public static g0(Landroid/app/Activity;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/16 v0, 0x9

    invoke-static {p0, p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->i0(Landroid/app/Activity;Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static i0(Landroid/app/Activity;Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key1"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "key2"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00b5

    return v0
.end method

.method public initView()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->d:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x9

    const-string v2, "key2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->e:I

    :cond_0
    const v0, 0x7f12096f

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v2, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;-><init>()V

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    .line 8
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/16 v3, 0x65

    const-string v4, "MediaType"

    .line 9
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->d:Ljava/util/ArrayList;

    const-string v4, "SelectPaths"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const v3, 0x7f12069a

    .line 11
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Confirm"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "showBottom"

    .line 12
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->e:I

    const-string v5, "maxCount"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-virtual {v4, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 15
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0a0440

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v1}, Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;->initFragments(ILandroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 18
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f06009d

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;II)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_1

    .line 20
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightTextClickListener(Lcom/guochao/faceshow/aaspring/views/v$e;)V

    .line 21
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/16 v2, 0xc9

    if-ne p1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->b:Ljava/io/File;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-direct {v2, v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;-><init>(I)V

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setFileName(Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setPath(Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setCreateTime(J)V

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e2()V

    :cond_1
    if-ne p2, v1, :cond_2

    const/16 p2, 0xca

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_2

    .line 10
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/UriUtils;->uriToFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    new-instance p2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-direct {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;-><init>(I)V

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setFileName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setPath(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setCreateTime(J)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public onCameraClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->isFaceToFaceFloatShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f12069f

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/tbruyelle/rxpermissions2/a;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onFinishImageEvent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "FINISH_IMAGE_EVENT"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onGalleryClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {p1, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->c:Ljava/util/ArrayList;

    const-string v0, "media"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 4
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
