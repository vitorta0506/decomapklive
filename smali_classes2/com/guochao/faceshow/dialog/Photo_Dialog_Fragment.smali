.class public Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$SquareImageView;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE:I = 0x378

.field static final RES:[I

.field public static final photomark:I = 0x33

.field public static final selectPhoto:I = 0x34


# instance fields
.field protected cameraPath:Ljava/lang/String;

.field protected isVip:Z

.field protected mNoGif:Z

.field private mOpenLive:Z

.field mPermissions:[Ljava/lang/String;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewUploadTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tv_camera:Landroid/widget/TextView;

.field tv_gallery:Landroid/widget/TextView;

.field protected updatePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->RES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0f0577
        0x7f0f0578
        0x7f0f0579
        0x7f0f057a
        0x7f0f057b
        0x7f0f057c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->mNoGif:Z

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.CAMERA"

    const-string v3, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 3
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->mPermissions:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->mOpenLive:Z

    return p0
.end method

.method private selectPhoto()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/*"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x34

    invoke-virtual {v1, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method


# virtual methods
.method public close(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public getCameraPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->cameraPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01c2

    return v0
.end method

.method public getUpdatePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->updatePath:Ljava/lang/String;

    return-object v0
.end method

.method protected hideSoftKeyboard(Landroid/app/Activity;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "input_method"

    .line 1
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0c53

    .line 1
    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/AAViewCom;->getTv(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->tv_camera:Landroid/widget/TextView;

    const v0, 0x7f0a0c95

    .line 2
    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/AAViewCom;->getTv(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->tv_gallery:Landroid/widget/TextView;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->tv_camera:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$a;-><init>(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->tv_gallery:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$b;-><init>(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-boolean p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->mOpenLive:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->mTextViewTips:Landroid/widget/TextView;

    const v0, 0x7f12099f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->mTextViewUploadTitle:Landroid/widget/TextView;

    const v0, 0x7f12099e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->mTextViewTips:Landroid/widget/TextView;

    const v0, 0x7f12099a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->mTextViewUploadTitle:Landroid/widget/TextView;

    const v0, 0x7f120999

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$c;-><init>(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public isNoGif()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->mNoGif:Z

    return v0
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "openLive"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->mOpenLive:Z

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->cameraPath:Ljava/lang/String;

    const-string v1, "cameraPath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->cameraPath:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->updatePath:Ljava/lang/String;

    const-string v1, "myPath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->updatePath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    const/4 p1, -0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->setParamsHeight(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createCenterDialog()Lcom/guochao/faceshow/aaspring/base/dialog/FaceCastDialog;

    move-result-object p1

    return-object p1
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    return-void
.end method

.method public setCameraPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->cameraPath:Ljava/lang/String;

    return-void
.end method

.method public setNoGif(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->mNoGif:Z

    return-void
.end method

.method public setOpenLive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->mOpenLive:Z

    return-void
.end method

.method public setUpdatePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->updatePath:Ljava/lang/String;

    return-void
.end method

.method public setVipType(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->isVip:Z

    xor-int/lit8 p1, p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->mNoGif:Z

    return-void
.end method

.method protected startCamera()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->cameraPath:Ljava/lang/String;

    const/16 v2, 0x33

    invoke-static {v0, v2, v1}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->cameraMethod(Landroid/app/Activity;ILjava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method protected startPhotoActivity()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const-string v2, "type"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-boolean v1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->isVip:Z

    const-string v2, "isVip"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    iget-boolean v1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->mNoGif:Z

    const-string v2, "nogif"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x2727

    invoke-virtual {v1, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
