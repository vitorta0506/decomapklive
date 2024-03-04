.class public Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field qCode:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field qCodeDownload:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;Landroid/app/Dialog;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->Z1(Landroid/app/Dialog;Z)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;Lte/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->Y1(Lte/a;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;Lte/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->X1(Lte/a;)V

    return-void
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private U1()V
    .locals 2

    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/Fragment;)V

    const-string v1, "android.permission.CAMERA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->o([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lia/c;

    invoke-direct {v1, p0}, Lia/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lvh/g;)Lth/b;

    return-void
.end method

.method private V1()V
    .locals 2

    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/Fragment;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->o([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lia/b;

    invoke-direct {v1, p0}, Lia/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lvh/g;)Lth/b;

    return-void
.end method

.method public static W1(Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;)Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    const-string v2, "user"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private synthetic X1(Lte/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lte/a;->b:Z

    const-string v1, "PeopleNearbyActivity"

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->m0(Landroid/app/Activity;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lte/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is granted."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p1, Lte/a;->c:Z

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lte/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is denied. More info should be provided."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/PerMissionsUtils;->checkPermission(Landroid/content/Context;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lte/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is denied."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic Y1(Lte/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lte/a;->b:Z

    const v1, 0x7f12094d

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->a:Landroid/graphics/Bitmap;

    const-string v2, "qrFile"

    invoke-static {p1, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->saveImageToGallery(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x7f1207b6

    .line 3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean p1, p1, Lte/a;->c:Z

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "sp_scan_missions_code"

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private synthetic Z1(Landroid/app/Dialog;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/PerMissionsUtils;->checkPermission(Landroid/content/Context;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d013c

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "user"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPersonalInformationScan()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {p0}, Lcom/bumptech/glide/c;->w(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/h;->b()Lcom/bumptech/glide/g;

    move-result-object v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getAvatar()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getUserImg()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/g;->Z0(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;

    invoke-direct {v2, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const p1, 0x7f130197

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    return-object p1
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a05d4

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0911

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "sp_scan_missions_code"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f1201bb

    .line 3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f120068

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lia/a;

    invoke-direct {v2, p0}, Lia/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;)V

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->V1()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/PerMissionsUtils;->lacksPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->U1()V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->m0(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lio/reactivex/k;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;

    move-result-object p1

    .line 9
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;)V

    .line 10
    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    :goto_0
    return-void
.end method
