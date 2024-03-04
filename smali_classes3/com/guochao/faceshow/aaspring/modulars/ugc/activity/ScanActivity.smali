.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field private a:Landroid/view/SurfaceView;

.field private b:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;

.field private c:Z

.field private d:Lca/b;

.field private e:Lda/c;

.field private f:Lca/a;

.field private g:Landroid/view/SurfaceHolder;

.field public h:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;

.field llQrCode:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field title:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->i:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;)Lca/a;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->f:Lca/a;

    return-object p0
.end method

.method private k0(Landroid/view/SurfaceHolder;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->e:Lda/c;

    invoke-virtual {v0}, Lda/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->e:Lda/c;

    invoke-virtual {v0, p1}, Lda/c;->f(Landroid/view/SurfaceHolder;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->f:Lca/a;

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lca/a;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->e:Lda/c;

    invoke-direct {p1, p0, v0}, Lca/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;Lda/c;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->f:Lca/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->i:Ljava/lang/String;

    const-string v1, "Unexpected error initializing camera"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 6
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->i:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No SurfaceHolder provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static m0(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->isFaceToFaceFloatShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f12069f

    .line 2
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;-><init>()V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->setFullScreenScan(Z)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->setShake(Z)V

    const v2, 0x7f060350

    .line 7
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->setFrameLineColor(I)V

    const v2, 0x7f06005a

    .line 8
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->setReactColor(I)V

    .line 9
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->setScanLineColor(I)V

    const-string v2, "zxingConfig"

    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v1, 0x3e9

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const v0, 0x7f01000d

    const v1, 0x7f01000c

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public d0()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->i()V

    return-void
.end method

.method public e0()Lda/c;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->e:Lda/c;

    return-object v0
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    const v0, 0x7f01000c

    const v1, 0x7f01004d

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public g0()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->f:Lca/a;

    return-object v0
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
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f0d00a3

    return v0
.end method

.method public i0()Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;

    return-object v0
.end method

.method public initView()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLightStatusBar(Z)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "zxingConfig"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->h:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "config"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->h:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->h:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;

    :cond_0
    const v1, 0x7f120973

    .line 6
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->c:Z

    .line 8
    new-instance v1, Lca/b;

    invoke-direct {v1, p0}, Lca/b;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->d:Lca/b;

    const v1, 0x7f0a08b9

    .line 9
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->a:Landroid/view/SurfaceView;

    .line 10
    invoke-virtual {v1, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0e0d

    .line 11
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->h:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->setZxingConfig(Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;)V

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->llQrCode:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public l0()V
    .locals 3

    .line 1
    new-instance v0, Lda/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->h:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;

    invoke-direct {v0, v1, v2}, Lda/c;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->e:Lda/c;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->setCameraManager(Lda/c;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->f:Lca/a;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->g:Landroid/view/SurfaceHolder;

    .line 5
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->c:Z

    if-eqz v1, :cond_0

    .line 6
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->k0(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->d:Lca/b;

    invoke-virtual {v0}, Lca/b;->g()V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public n0(I)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/16 v1, 0x2727

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    const-string v1, "data"

    .line 4
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity$c;

    invoke-direct {v2, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V

    invoke-virtual {v1, v2}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p3

    .line 6
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {p3, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p3

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {p3, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p3

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;)V

    .line 7
    invoke-virtual {p3, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    :cond_1
    const/16 p3, 0x400

    if-ne p1, p3, :cond_2

    if-ne p2, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->finish()V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->d:Lca/b;

    invoke-virtual {v0}, Lca/b;->h()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->d:Lca/b;

    invoke-virtual {v0}, Lca/b;->f()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->n()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->e:Lda/c;

    invoke-virtual {v0}, Lda/c;->b()V

    .line 5
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->l0()V

    return-void
.end method

.method public showMore()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;)V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->c:Z

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->k0(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->c:Z

    return-void
.end method
