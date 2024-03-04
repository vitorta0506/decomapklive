.class Leb/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leb/b;->D(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leb/b;


# direct methods
.method constructor <init>(Leb/b;)V
    .locals 0

    iput-object p1, p0, Leb/b$c;->a:Leb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetWorkError()V
    .locals 1

    .line 1
    iget-object v0, p0, Leb/b$c;->a:Leb/b;

    invoke-static {v0}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Leb/b$c;->a:Leb/b;

    invoke-static {v0}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/m;->c()V

    :cond_0
    return-void
.end method

.method public onWaterMarkFinish(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2
    iget-object p2, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p2}, Leb/b;->b(Leb/b;)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p2}, Leb/b;->b(Leb/b;)Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Leb/b$c;->a:Leb/b;

    invoke-static {v0}, Leb/b;->q(Leb/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Leb/b$c;->a:Leb/b;

    invoke-static {v1}, Leb/b;->r(Leb/b;)Lu9/a;

    move-result-object v1

    invoke-static {p2, p1, v0, p3, v1}, Lv9/c;->f(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lu9/a;)V

    .line 4
    :cond_0
    iget-object p1, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p1}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    const p2, 0x7f1207b6

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p1}, Leb/b;->l(Leb/b;)I

    move-result p1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    .line 6
    iget-object p1, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p1}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/m;->d()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p1}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    const/16 p3, 0x64

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/views/m;->i(I)V

    .line 8
    :goto_0
    iget-object p1, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p1}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    iget-object p3, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p3}, Leb/b;->b(Leb/b;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/views/m;->k(Ljava/lang/String;)V

    .line 9
    :cond_2
    iget-object p1, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p1}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p1}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/m;->c()V

    .line 11
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    iget-object p3, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p3}, Leb/b;->b(Leb/b;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_1

    .line 12
    :cond_4
    iget-object p1, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p1}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p1}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/m;->c()V

    .line 14
    :cond_5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    iget-object p2, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p2}, Leb/b;->b(Leb/b;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1207b8

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_1
    return-void
.end method

.method public onWaterMarkProgress(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Leb/b$c;->a:Leb/b;

    invoke-static {v0}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Leb/b$c;->a:Leb/b;

    new-instance v1, Lcom/guochao/faceshow/views/m;

    invoke-direct {v1}, Lcom/guochao/faceshow/views/m;-><init>()V

    invoke-static {v0, v1}, Leb/b;->k(Leb/b;Lcom/guochao/faceshow/views/m;)Lcom/guochao/faceshow/views/m;

    .line 3
    iget-object v0, p0, Leb/b$c;->a:Leb/b;

    invoke-static {v0}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    iget-object v1, p0, Leb/b$c;->a:Leb/b;

    invoke-static {v1}, Leb/b;->b(Leb/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/m;->b(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Leb/b$c;->a:Leb/b;

    invoke-static {v0}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/m;->g(Z)V

    .line 5
    iget-object v0, p0, Leb/b$c;->a:Leb/b;

    invoke-static {v0}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/m;->h(Z)V

    .line 6
    iget-object v0, p0, Leb/b$c;->a:Leb/b;

    invoke-static {v0}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    iget-object v1, p0, Leb/b$c;->a:Leb/b;

    invoke-static {v1}, Leb/b;->b(Leb/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1209d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/m;->j(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Leb/b$c;->a:Leb/b;

    invoke-static {v0}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    iget-object v1, p0, Leb/b$c;->a:Leb/b;

    invoke-static {v1}, Leb/b;->b(Leb/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1208a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Leb/b$c$a;

    invoke-direct {v2, p0}, Leb/b$c$a;-><init>(Leb/b$c;)V

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/views/m;->f(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    iget-object v0, p0, Leb/b$c;->a:Leb/b;

    invoke-static {v0, p1}, Leb/b;->m(Leb/b;I)I

    const/4 v0, -0x1

    const v1, 0x7f12007b

    if-ne p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p1}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/m;->d()V

    .line 10
    iget-object p1, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p1}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Leb/b$c;->a:Leb/b;

    invoke-static {v2}, Leb/b;->b(Leb/b;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/m;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    if-lt p1, v0, :cond_2

    const/16 p1, 0x63

    .line 11
    :cond_2
    iget-object v0, p0, Leb/b$c;->a:Leb/b;

    invoke-static {v0}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/m;->i(I)V

    .line 12
    iget-object p1, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p1}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    iget-object v0, p0, Leb/b$c;->a:Leb/b;

    invoke-static {v0}, Leb/b;->b(Leb/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/m;->k(Ljava/lang/String;)V

    .line 13
    :goto_0
    iget-object p1, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p1}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/m;->e()Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Leb/b$c;->a:Leb/b;

    invoke-static {p1}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/m;->l()V

    :cond_3
    return-void
.end method
