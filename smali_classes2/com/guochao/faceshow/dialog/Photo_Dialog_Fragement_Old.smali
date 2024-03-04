.class public Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field final i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->c:Z

    const/16 v0, 0x65

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->i:I

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->a:Z

    return p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->selectPhoto()V

    return-void
.end method

.method static synthetic S1(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->startPhotoActivity()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0c55

    .line 1
    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/AAViewCom;->getTv(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0c53

    .line 2
    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/AAViewCom;->getTv(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->g:Landroid/widget/TextView;

    const v0, 0x7f0a0c95

    .line 3
    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/AAViewCom;->getTv(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->h:Landroid/widget/TextView;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->f:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$a;-><init>(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->g:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$b;-><init>(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->h:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$c;-><init>(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
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

    const/4 v1, 0x0

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image*/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x34

    invoke-virtual {v1, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private startPhotoActivity()V
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
    iget-boolean v1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->b:Z

    const-string v2, "isVip"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    iget-boolean v1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->c:Z

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
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public T1()Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public U1(I)Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    const-string p1, "android.permission.CAMERA"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-nez v0, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    filled-new-array {p1, v2, v1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public V1(I[I)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    aget p1, p2, v1

    if-nez p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->selectPhoto()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u83b7\u53d6\u8bfb\u5199\u6743\u9650\u5931\u8d25\uff0c\u8bf7\u5728\u624b\u673a\u4e2d\u8bbe\u7f6e\u5141\u8bb8\u8bfb\u5199"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_0

    .line 4
    :cond_2
    aget p1, p2, v1

    if-nez p1, :cond_3

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 p2, 0x33

    iget-object v0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->d:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->cameraMethod(Landroid/app/Activity;ILjava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u83b7\u53d6\u62cd\u7167\u6743\u9650\u5931\u8d25\uff0c\u8bf7\u5728\u624b\u673a\u4e2d\u8bbe\u7f6e\u5141\u8bb8\u62cd\u7167"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_0
    return-void
.end method

.method public W1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->c:Z

    return-void
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

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 1
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f13012a

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0d01c3

    .line 4
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x50

    .line 8
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 9
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->V1(I[I)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setCameraPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->d:Ljava/lang/String;

    return-void
.end method

.method public setUpdatePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->e:Ljava/lang/String;

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "androidx.fragment.app.DialogFragment"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    const-string v1, "mDismissed"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "mShownByMe"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 8
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
