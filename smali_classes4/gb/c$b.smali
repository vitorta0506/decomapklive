.class Lgb/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgb/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgb/c;->q(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgb/c;


# direct methods
.method constructor <init>(Lgb/c;)V
    .locals 0

    iput-object p1, p0, Lgb/c$b;->a:Lgb/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lgb/c$b;->a:Lgb/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgb/c;->e(Lgb/c;Z)Z

    .line 2
    iget-object p1, p0, Lgb/c$b;->a:Lgb/c;

    invoke-static {p1, p2}, Lgb/c;->g(Lgb/c;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lgb/c$b;->a:Lgb/c;

    invoke-static {p1}, Lgb/c;->h(Lgb/c;)Lgb/a;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lgb/a;->l(I)V

    .line 4
    iget-object p1, p0, Lgb/c$b;->a:Lgb/c;

    invoke-static {p1}, Lgb/c;->h(Lgb/c;)Lgb/a;

    move-result-object p1

    invoke-virtual {p1}, Lgb/a;->d()V

    .line 5
    iget-object p1, p0, Lgb/c$b;->a:Lgb/c;

    invoke-static {p1}, Lgb/c;->f(Lgb/c;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/utils/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result p1

    const p2, 0x7f120990

    if-nez p1, :cond_1

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 7
    iget-object p1, p0, Lgb/c$b;->a:Lgb/c;

    invoke-static {p1}, Lgb/c;->h(Lgb/c;)Lgb/a;

    move-result-object p1

    invoke-virtual {p1}, Lgb/a;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lgb/c$b;->a:Lgb/c;

    invoke-static {p1}, Lgb/c;->i(Lgb/c;)Lgb/d;

    move-result-object p1

    invoke-virtual {p1}, Lgb/d;->a()V

    :cond_0
    return-void

    .line 9
    :cond_1
    iget-object p1, p0, Lgb/c$b;->a:Lgb/c;

    invoke-static {p1}, Lgb/c;->h(Lgb/c;)Lgb/a;

    move-result-object p1

    invoke-virtual {p1}, Lgb/a;->e()Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lgb/c$b;->a:Lgb/c;

    invoke-static {p1}, Lgb/c;->i(Lgb/c;)Lgb/d;

    move-result-object p1

    invoke-virtual {p1}, Lgb/d;->c()V

    .line 11
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/utils/PermissionTools;->checkUnKnowResourcePer()Z

    move-result p1

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lgb/c$b;->a:Lgb/c;

    invoke-static {p1}, Lgb/c;->j(Lgb/c;)V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    const v0, 0x7f120685

    invoke-virtual {p2, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 15
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

    return-void

    .line 16
    :cond_3
    iget-object p1, p0, Lgb/c$b;->a:Lgb/c;

    invoke-static {p1}, Lgb/c;->f(Lgb/c;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lgb/c;->k(Lgb/c;Ljava/lang/String;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f120990

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 2
    iget-object p1, p0, Lgb/c$b;->a:Lgb/c;

    invoke-static {p1}, Lgb/c;->h(Lgb/c;)Lgb/a;

    move-result-object p1

    invoke-virtual {p1}, Lgb/a;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lgb/c$b;->a:Lgb/c;

    invoke-static {p1}, Lgb/c;->i(Lgb/c;)Lgb/d;

    move-result-object p1

    invoke-virtual {p1}, Lgb/d;->a()V

    .line 4
    :cond_0
    iget-object p1, p0, Lgb/c$b;->a:Lgb/c;

    invoke-static {p1}, Lgb/c;->h(Lgb/c;)Lgb/a;

    move-result-object p1

    invoke-virtual {p1}, Lgb/a;->d()V

    .line 5
    iget-object p1, p0, Lgb/c$b;->a:Lgb/c;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lgb/c;->e(Lgb/c;Z)Z

    return-void
.end method

.method public onProgress(I)V
    .locals 1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/16 p1, 0x63

    .line 1
    :cond_0
    iget-object v0, p0, Lgb/c$b;->a:Lgb/c;

    invoke-static {v0}, Lgb/c;->h(Lgb/c;)Lgb/a;

    move-result-object v0

    invoke-virtual {v0}, Lgb/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lgb/c$b;->a:Lgb/c;

    invoke-static {v0}, Lgb/c;->i(Lgb/c;)Lgb/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgb/d;->b(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lgb/c$b;->a:Lgb/c;

    invoke-static {v0}, Lgb/c;->h(Lgb/c;)Lgb/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgb/a;->l(I)V

    :goto_0
    return-void
.end method
