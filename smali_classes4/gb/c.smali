.class public Lgb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/Object;

.field private static l:Lgb/c;


# instance fields
.field private a:Lgb/a;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/guochao/faceshow/activity/MainActivity;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lgb/b;

.field private g:Lgb/d;

.field private h:Z

.field private i:I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lgb/c;->k:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1065

    .line 2
    iput v0, p0, Lgb/c;->c:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lgb/c;->d:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lgb/c;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lgb/c;->h:Z

    .line 6
    new-instance v0, Lgb/a;

    invoke-direct {v0}, Lgb/a;-><init>()V

    iput-object v0, p0, Lgb/c;->a:Lgb/a;

    .line 7
    new-instance v0, Lgb/b;

    invoke-direct {v0}, Lgb/b;-><init>()V

    iput-object v0, p0, Lgb/c;->f:Lgb/b;

    .line 8
    new-instance v0, Lgb/d;

    invoke-direct {v0}, Lgb/d;-><init>()V

    iput-object v0, p0, Lgb/c;->g:Lgb/d;

    .line 9
    invoke-virtual {v0}, Lgb/d;->d()V

    return-void
.end method

.method static synthetic a(Lgb/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgb/c;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lgb/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lgb/c;->q(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lgb/c;)I
    .locals 0

    iget p0, p0, Lgb/c;->c:I

    return p0
.end method

.method static synthetic d(Lgb/c;)Lgb/b;
    .locals 0

    iget-object p0, p0, Lgb/c;->f:Lgb/b;

    return-object p0
.end method

.method static synthetic e(Lgb/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lgb/c;->h:Z

    return p1
.end method

.method static synthetic f(Lgb/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgb/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lgb/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lgb/c;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lgb/c;)Lgb/a;
    .locals 0

    iget-object p0, p0, Lgb/c;->a:Lgb/a;

    return-object p0
.end method

.method static synthetic i(Lgb/c;)Lgb/d;
    .locals 0

    iget-object p0, p0, Lgb/c;->g:Lgb/d;

    return-object p0
.end method

.method static synthetic j(Lgb/c;)V
    .locals 0

    invoke-direct {p0}, Lgb/c;->v()V

    return-void
.end method

.method static synthetic k(Lgb/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lgb/c;->r(Ljava/lang/String;)V

    return-void
.end method

.method private m(Landroid/app/Activity;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lgb/c;->f:Lgb/b;

    invoke-virtual {v0}, Lgb/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lgb/c;->h:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lgb/c;->h:Z

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 6
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 7
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lgb/c;->i:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 9
    :goto_0
    invoke-direct {p0, p1, v0}, Lgb/c;->w(Landroid/app/Activity;Z)V

    return-void
.end method

.method private n()V
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public static p()Lgb/c;
    .locals 2

    .line 1
    sget-object v0, Lgb/c;->l:Lgb/c;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lgb/c;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lgb/c;->l:Lgb/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lgb/c;

    invoke-direct {v1}, Lgb/c;-><init>()V

    sput-object v1, Lgb/c;->l:Lgb/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lgb/c;->l:Lgb/c;

    return-object v0
.end method

.method private q(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/PermissionTools;->checkUnKnowResourcePer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lgb/c;->v()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lgb/c;->a:Lgb/a;

    invoke-virtual {v0}, Lgb/a;->d()V

    .line 4
    invoke-direct {p0}, Lgb/c;->n()V

    .line 5
    iget-object v0, p0, Lgb/c;->f:Lgb/b;

    new-instance v1, Lgb/c$b;

    invoke-direct {v1, p0}, Lgb/c$b;-><init>(Lgb/c;)V

    invoke-virtual {v0, p1, v1}, Lgb/b;->e(Ljava/lang/String;Lgb/b$b;)V

    .line 6
    iget-object p1, p0, Lgb/c;->a:Lgb/a;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f120992

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgb/a;->i(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lgb/c;->a:Lgb/a;

    invoke-virtual {p1}, Lgb/a;->o()V

    .line 8
    iget-object p1, p0, Lgb/c;->a:Lgb/a;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1208a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgb/a;->f(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lgb/c;->a:Lgb/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lgb/a;->l(I)V

    return-void
.end method

.method private r(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const-string v4, "application/vnd.android.package-archive"

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 6
    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 8
    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/high16 p1, 0x10000000

    .line 9
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private v()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const v2, 0x7f12098d

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgb/c$c;

    invoke-direct {v2, p0, v0}, Lgb/c$c;-><init>(Lgb/c;Landroid/app/Activity;)V

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/views/h;->b(Landroid/content/Context;Ljava/lang/String;Lcom/guochao/faceshow/views/e$a;)V

    return-void
.end method

.method private w(Landroid/app/Activity;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lgb/c;->a:Lgb/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgb/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getDownloadlink()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgb/c;->e:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lgb/c;->a:Lgb/a;

    invoke-virtual {v1, p1}, Lgb/a;->c(Landroid/content/Context;)V

    .line 6
    iget-object v1, p0, Lgb/c;->a:Lgb/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgb/a;->g(Z)V

    .line 7
    iget-object v1, p0, Lgb/c;->a:Lgb/a;

    invoke-virtual {v1, v2}, Lgb/a;->h(Z)V

    .line 8
    iget-object v1, p0, Lgb/c;->a:Lgb/a;

    iget-boolean v2, p0, Lgb/c;->j:Z

    invoke-virtual {v1, v2}, Lgb/a;->j(Z)V

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUpdateCopywriting()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\\n"

    const-string v2, "\n"

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 12
    :cond_2
    iget-object v1, p0, Lgb/c;->a:Lgb/a;

    invoke-virtual {v1, v0}, Lgb/a;->m(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lgb/c;->a:Lgb/a;

    const v1, 0x7f120993

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgb/a;->i(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lgb/c;->a:Lgb/a;

    const v1, 0x7f120991

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgb/a;->f(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lgb/c;->a:Lgb/a;

    new-instance v1, Lgb/c$a;

    invoke-direct {v1, p0, p2, p1}, Lgb/c$a;-><init>(Lgb/c;ZLandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lgb/a;->k(Lgb/a$c;)V

    .line 16
    iget-object p1, p0, Lgb/c;->a:Lgb/a;

    invoke-virtual {p1}, Lgb/a;->n()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public l(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lgb/c;->m(Landroid/app/Activity;)V

    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgb/c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lgb/c;->a:Lgb/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lgb/a;->d()V

    .line 4
    :cond_0
    iget-object v0, p0, Lgb/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lgb/c;->h:Z

    return-void
.end method

.method public s(II)V
    .locals 2

    const/16 p2, 0x6b

    if-ne p1, p2, :cond_1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/PermissionTools;->checkUnKnowResourcePer()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1206e5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    const v0, 0x7f120685

    invoke-virtual {p2, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lgb/c;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lgb/c;->q(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgb/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lgb/c;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgb/c;->q(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public u(Z)Lgb/c;
    .locals 0

    iput-boolean p1, p0, Lgb/c;->j:Z

    return-object p0
.end method
