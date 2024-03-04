.class public Lcom/guochao/faceshow/aaspring/modulars/login/utils/d;
.super Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public i(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->i(IILandroid/content/Intent;)V

    const-string p2, "ERROR"

    const/16 v0, 0x400

    if-eq p1, v0, :cond_0

    const-string p1, "Unsupported Request"

    .line 2
    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p3}, Lcom/linecorp/linesdk/auth/a;->d(Landroid/content/Intent;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    .line 4
    sget-object p3, Lcom/guochao/faceshow/aaspring/modulars/login/utils/d$a;->a:[I

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->k()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->k()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->e()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiError;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    const-string p3, "Login FAILED!"

    .line 6
    invoke-static {p2, p3}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->e()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineApiError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->d()V

    const-string p1, "LINE Login Canceled by user."

    .line 9
    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->g()Lcom/linecorp/linesdk/LineCredential;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/LineCredential;->a()Lcom/linecorp/linesdk/LineAccessToken;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/LineAccessToken;->a()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->i()Lcom/linecorp/linesdk/LineProfile;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, -0x1

    const-string p2, "no profile"

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    return-void

    :cond_3
    const/16 p3, 0xb

    .line 13
    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineProfile;->getUserId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->b:Landroid/content/Context;

    const-string v1, "1571621511"

    new-instance v2, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$b;

    invoke-direct {v2}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$b;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Lqc/e;

    const/4 v4, 0x0

    sget-object v5, Lqc/e;->c:Lqc/e;

    aput-object v5, v3, v4

    .line 2
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$b;->f(Ljava/util/List;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$b;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$b;->e()Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/auth/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->b:Landroid/content/Context;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x400

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
