.class Lgb/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgb/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgb/c;->w(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lgb/c;


# direct methods
.method constructor <init>(Lgb/c;ZLandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lgb/c$a;->c:Lgb/c;

    iput-boolean p2, p0, Lgb/c$a;->a:Z

    iput-object p3, p0, Lgb/c$a;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgb/c$a;->c:Lgb/c;

    invoke-static {v0}, Lgb/c;->d(Lgb/c;)Lgb/b;

    move-result-object v0

    invoke-virtual {v0}, Lgb/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    iget-object p1, p0, Lgb/c$a;->c:Lgb/c;

    invoke-static {p1}, Lgb/c;->d(Lgb/c;)Lgb/b;

    move-result-object p1

    invoke-virtual {p1}, Lgb/b;->d()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 5
    :goto_0
    iget-object p1, p0, Lgb/c$a;->c:Lgb/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgb/c;->e(Lgb/c;Z)Z

    return-void
.end method

.method public b(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lgb/c$a;->a:Z

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "market://details?id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lgb/c$a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "com.android.vending"

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    :try_start_0
    iget-object p1, p0, Lgb/c$a;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string/jumbo v0, "\u624b\u673a\u672a\u5b89\u88c5\u8c37\u6b4c\u5546\u5e97"

    .line 6
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debug(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 7
    iget-object v0, p0, Lgb/c$a;->b:Landroid/app/Activity;

    const-string v1, "https://www.buzzcast.info"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 8
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/PermissionTools;->checkStoragePer()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lgb/c$a;->c:Lgb/c;

    invoke-static {p1}, Lgb/c;->a(Lgb/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lgb/c;->b(Lgb/c;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lgb/c$a;->b:Landroid/app/Activity;

    iget-object v0, p0, Lgb/c$a;->c:Lgb/c;

    invoke-static {v0}, Lgb/c;->c(Lgb/c;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/PermissionTools;->requestStoragePer(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method
