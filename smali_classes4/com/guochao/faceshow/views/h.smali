.class public Lcom/guochao/faceshow/views/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/views/h$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/views/h$a;-><init>()V

    const-string v1, ""

    invoke-static {p0, v1, p1, v0}, Lcom/guochao/faceshow/views/h;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/views/e$a;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/guochao/faceshow/views/e$a;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0, p1, p2}, Lcom/guochao/faceshow/views/h;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/views/e$a;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/views/h$b;

    invoke-direct {v0}, Lcom/guochao/faceshow/views/h$b;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/guochao/faceshow/views/h;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/views/e$a;)V

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/views/e$a;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-direct {v0, p0, p3}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    const/4 p0, 0x0

    .line 4
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->j()V

    .line 6
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/e;->b(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 7
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/views/h;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/guochao/faceshow/views/e$a;)V
    .locals 1

    if-eqz p0, :cond_3

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-direct {v0, p0, p4}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    const/4 p0, 0x0

    .line 4
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->j()V

    .line 6
    :cond_2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/e;->b(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 7
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    :cond_3
    :goto_0
    return-void
.end method
