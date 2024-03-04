.class public Lv9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/snapchat/kit/sdk/a;->c(Landroid/content/Context;)Lne/a;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/snapchat/kit/sdk/a;->b(Landroid/content/Context;)Lle/a;

    move-result-object v1

    .line 3
    :try_start_0
    new-instance v2, Loe/c;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lne/a;->a(Ljava/io/File;)Lne/c;

    move-result-object p4

    invoke-direct {v2, p4}, Loe/c;-><init>(Lne/c;)V

    .line 4
    invoke-virtual {v2, p1}, Loe/a;->g(Ljava/lang/String;)V

    .line 5
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lcom/snapchat/kit/sdk/creative/exceptions/SnapKitBaseException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "\n"

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    :cond_0
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 9
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_2
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Loe/a;->h(Ljava/lang/String;)V

    .line 12
    new-instance p1, Lv9/d$b;

    invoke-direct {p1}, Lv9/d$b;-><init>()V

    invoke-virtual {v1, v2, p1}, Lle/a;->a(Loe/a;Lle/c;)V
    :try_end_1
    .catch Lcom/snapchat/kit/sdk/creative/exceptions/SnapKitBaseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Media too large to share"

    .line 13
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_0
    return-void
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/snapchat/kit/sdk/a;->c(Landroid/content/Context;)Lne/a;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/snapchat/kit/sdk/a;->b(Landroid/content/Context;)Lle/a;

    move-result-object v1

    .line 3
    :try_start_0
    new-instance v2, Loe/d;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lne/a;->b(Ljava/io/File;)Lne/e;

    move-result-object p2

    invoke-direct {v2, p2}, Loe/d;-><init>(Lne/e;)V

    .line 4
    invoke-virtual {v2, p1}, Loe/a;->h(Ljava/lang/String;)V

    .line 5
    new-instance p1, Lv9/d$a;

    invoke-direct {p1}, Lv9/d$a;-><init>()V

    invoke-virtual {v1, v2, p1}, Lle/a;->a(Loe/a;Lle/c;)V
    :try_end_0
    .catch Lcom/snapchat/kit/sdk/creative/exceptions/SnapKitBaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Media too large to share"

    .line 6
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_0
    return-void
.end method
