.class Lgb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgb/b$b;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/base/utils/a;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lgb/b;->c:Z

    return-void
.end method

.method static synthetic a(Lgb/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lgb/b;->c:Z

    return p1
.end method

.method static synthetic b(Lgb/b;Lcom/guochao/faceshow/aaspring/base/utils/a;)Lcom/guochao/faceshow/aaspring/base/utils/a;
    .locals 0

    iput-object p1, p0, Lgb/b;->a:Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-object p1
.end method

.method static synthetic c(Lgb/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgb/b;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgb/b;->a:Lcom/guochao/faceshow/aaspring/base/utils/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/base/utils/a;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lgb/b;->c:Z

    return-void
.end method

.method declared-synchronized e(Ljava/lang/String;Lgb/b$b;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lgb/b;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1200fc

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    :try_start_1
    iput-boolean v0, p0, Lgb/b;->c:Z

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/TimeUtil;->getDateStrName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgb/b;->b:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->h(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lgb/b;->b:Ljava/lang/String;

    new-instance v3, Lgb/b$a;

    invoke-direct {v3, p0, p2}, Lgb/b$a;-><init>(Lgb/b;Lgb/b$b;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->a(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    move-result-object p1

    iput-object p1, p0, Lgb/b;->a:Lcom/guochao/faceshow/aaspring/base/utils/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method f()Z
    .locals 1

    iget-boolean v0, p0, Lgb/b;->c:Z

    return v0
.end method
