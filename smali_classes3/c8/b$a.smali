.class Lc8/b$a;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/b;->y(Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/Fragment;

.field final synthetic b:Lc8/b;


# direct methods
.method constructor <init>(Lc8/b;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lc8/b$a;->b:Lc8/b;

    iput-object p2, p0, Lc8/b$a;->a:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc8/b$a;->b:Lc8/b;

    invoke-static {v0}, Lc8/b;->d(Lc8/b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lc8/b$a;->b:Lc8/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/b;->e(Lc8/b;Z)Z

    .line 4
    iget-object v0, p0, Lc8/b$a;->b:Lc8/b;

    invoke-static {v0}, Lc8/b;->f(Lc8/b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/b$a;->b:Lc8/b;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lc8/b;->a(Lc8/b;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/b$a;->b:Lc8/b;

    invoke-virtual {v0}, Lc8/b;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/b$a;->a:Landroidx/fragment/app/Fragment;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/b$a;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/b$a;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/b$a;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lc8/b$a;->b:Lc8/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/b;->g(Lc8/b;Z)Z

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getToday()Ljava/lang/String;

    move-result-object v1

    const-string v2, "localActivityTime2"

    invoke-static {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPrivateRootPathV2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "live_activity.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lc8/b$a;->b:Lc8/b;

    invoke-virtual {v1, p1, v0}, Lc8/b;->i(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lc8/b$a;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v1, p0, Lc8/b$a;->b:Lc8/b;

    invoke-static {v1}, Lc8/b;->b(Lc8/b;)Lcom/guochao/faceshow/bean/LiveActivityDialogBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/LiveActivityDialogBean;->getLiveFrame()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;->Y1(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lc8/b$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
