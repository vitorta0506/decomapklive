.class Lcom/linecorp/linesdk/auth/internal/c$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/linecorp/linesdk/auth/internal/a$c;",
        "Ljava/lang/Void;",
        "Lcom/linecorp/linesdk/auth/LineLoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/linecorp/linesdk/auth/internal/c;


# direct methods
.method private constructor <init>(Lcom/linecorp/linesdk/auth/internal/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/c$b;->a:Lcom/linecorp/linesdk/auth/internal/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/auth/internal/c;Lcom/linecorp/linesdk/auth/internal/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/auth/internal/c$b;-><init>(Lcom/linecorp/linesdk/auth/internal/c;)V

    return-void
.end method

.method private c(Lcom/linecorp/linesdk/LineIdToken;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/c$b;->a:Lcom/linecorp/linesdk/auth/internal/c;

    .line 2
    invoke-static {v0}, Lcom/linecorp/linesdk/auth/internal/c;->f(Lcom/linecorp/linesdk/auth/internal/c;)Lwc/e;

    move-result-object v0

    invoke-virtual {v0}, Lwc/e;->c()Lqc/c;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lqc/c;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lqc/c;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvc/h;

    .line 5
    new-instance v1, Lwc/b$b;

    invoke-direct {v1}, Lwc/b$b;-><init>()V

    .line 6
    invoke-virtual {v1, p1}, Lwc/b$b;->k(Lcom/linecorp/linesdk/LineIdToken;)Lwc/b$b;

    move-result-object p1

    .line 7
    invoke-virtual {v0}, Lvc/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lwc/b$b;->h(Ljava/lang/String;)Lwc/b$b;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Lwc/b$b;->j(Ljava/lang/String;)Lwc/b$b;

    move-result-object p1

    iget-object p2, p0, Lcom/linecorp/linesdk/auth/internal/c$b;->a:Lcom/linecorp/linesdk/auth/internal/c;

    .line 9
    invoke-static {p2}, Lcom/linecorp/linesdk/auth/internal/c;->e(Lcom/linecorp/linesdk/auth/internal/c;)Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lwc/b$b;->g(Ljava/lang/String;)Lwc/b$b;

    move-result-object p1

    iget-object p2, p0, Lcom/linecorp/linesdk/auth/internal/c$b;->a:Lcom/linecorp/linesdk/auth/internal/c;

    .line 10
    invoke-static {p2}, Lcom/linecorp/linesdk/auth/internal/c;->a(Lcom/linecorp/linesdk/auth/internal/c;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lwc/b$b;->i(Ljava/lang/String;)Lwc/b$b;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lwc/b$b;->f()Lwc/b;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lwc/b;->b()V

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get OpenId Discovery Document.  Response Code: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Lqc/c;->d()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Error Data: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Lqc/c;->c()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected varargs a([Lcom/linecorp/linesdk/auth/internal/a$c;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 11
    .param p1    # [Lcom/linecorp/linesdk/auth/internal/a$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    .line 2
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/a$c;->g()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/c$b;->a:Lcom/linecorp/linesdk/auth/internal/c;

    invoke-static {v1}, Lcom/linecorp/linesdk/auth/internal/c;->a(Lcom/linecorp/linesdk/auth/internal/c;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->f()Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/linecorp/linesdk/auth/internal/c$b;->a:Lcom/linecorp/linesdk/auth/internal/c;

    invoke-static {v2}, Lcom/linecorp/linesdk/auth/internal/c;->a(Lcom/linecorp/linesdk/auth/internal/c;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->g()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v1, :cond_5

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 7
    :cond_0
    iget-object v3, p0, Lcom/linecorp/linesdk/auth/internal/c$b;->a:Lcom/linecorp/linesdk/auth/internal/c;

    .line 8
    invoke-static {v3}, Lcom/linecorp/linesdk/auth/internal/c;->f(Lcom/linecorp/linesdk/auth/internal/c;)Lwc/e;

    move-result-object v3

    iget-object v4, p0, Lcom/linecorp/linesdk/auth/internal/c$b;->a:Lcom/linecorp/linesdk/auth/internal/c;

    .line 9
    invoke-static {v4}, Lcom/linecorp/linesdk/auth/internal/c;->e(Lcom/linecorp/linesdk/auth/internal/c;)Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->b()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v3, v4, v0, v1, v2}, Lwc/e;->d(Ljava/lang/String;Ljava/lang/String;Lcom/linecorp/linesdk/internal/pkce/PKCECode;Ljava/lang/String;)Lqc/c;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lqc/c;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    invoke-static {v0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->d(Lqc/c;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    invoke-virtual {v0}, Lqc/c;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvc/e;

    .line 14
    invoke-virtual {v0}, Lvc/e;->a()Lvc/d;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lvc/e;->c()Ljava/util/List;

    move-result-object v2

    .line 16
    sget-object v3, Lqc/e;->c:Lqc/e;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 17
    iget-object v3, p0, Lcom/linecorp/linesdk/auth/internal/c$b;->a:Lcom/linecorp/linesdk/auth/internal/c;

    invoke-static {v3}, Lcom/linecorp/linesdk/auth/internal/c;->g(Lcom/linecorp/linesdk/auth/internal/c;)Lwc/i;

    move-result-object v3

    invoke-virtual {v3, v1}, Lwc/i;->d(Lvc/d;)Lqc/c;

    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lqc/c;->g()Z

    move-result v4

    if-nez v4, :cond_2

    .line 19
    invoke-static {v3}, Lcom/linecorp/linesdk/auth/LineLoginResult;->d(Lqc/c;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    return-object p1

    .line 20
    :cond_2
    invoke-virtual {v3}, Lqc/c;->e()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/linecorp/linesdk/LineProfile;

    .line 21
    invoke-virtual {v4}, Lcom/linecorp/linesdk/LineProfile;->getUserId()Ljava/lang/String;

    move-result-object v3

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_0

    :cond_3
    move-object v3, v4

    .line 22
    :goto_0
    iget-object v5, p0, Lcom/linecorp/linesdk/auth/internal/c$b;->a:Lcom/linecorp/linesdk/auth/internal/c;

    invoke-static {v5}, Lcom/linecorp/linesdk/auth/internal/c;->h(Lcom/linecorp/linesdk/auth/internal/c;)Lvc/a;

    move-result-object v5

    invoke-virtual {v5, v1}, Lvc/a;->g(Lvc/d;)V

    .line 23
    invoke-virtual {v0}, Lvc/e;->b()Lcom/linecorp/linesdk/LineIdToken;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 24
    :try_start_0
    invoke-direct {p0, v0, v4}, Lcom/linecorp/linesdk/auth/internal/c$b;->c(Lcom/linecorp/linesdk/LineIdToken;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->m(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    return-object p1

    .line 26
    :cond_4
    :goto_1
    new-instance v4, Lcom/linecorp/linesdk/auth/LineLoginResult$b;

    invoke-direct {v4}, Lcom/linecorp/linesdk/auth/LineLoginResult$b;-><init>()V

    iget-object v5, p0, Lcom/linecorp/linesdk/auth/internal/c$b;->a:Lcom/linecorp/linesdk/auth/internal/c;

    .line 27
    invoke-static {v5}, Lcom/linecorp/linesdk/auth/internal/c;->a(Lcom/linecorp/linesdk/auth/internal/c;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/linecorp/linesdk/auth/LineLoginResult$b;->n(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/LineLoginResult$b;

    move-result-object v4

    .line 28
    invoke-virtual {v4, v3}, Lcom/linecorp/linesdk/auth/LineLoginResult$b;->m(Lcom/linecorp/linesdk/LineProfile;)Lcom/linecorp/linesdk/auth/LineLoginResult$b;

    move-result-object v3

    .line 29
    invoke-virtual {v3, v0}, Lcom/linecorp/linesdk/auth/LineLoginResult$b;->l(Lcom/linecorp/linesdk/LineIdToken;)Lcom/linecorp/linesdk/auth/LineLoginResult$b;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/a$c;->e()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$b;->j(Ljava/lang/Boolean;)Lcom/linecorp/linesdk/auth/LineLoginResult$b;

    move-result-object p1

    new-instance v0, Lcom/linecorp/linesdk/LineCredential;

    new-instance v9, Lcom/linecorp/linesdk/LineAccessToken;

    .line 31
    invoke-virtual {v1}, Lvc/d;->a()Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-virtual {v1}, Lvc/d;->b()J

    move-result-wide v5

    .line 33
    invoke-virtual {v1}, Lvc/d;->c()J

    move-result-wide v7

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/linecorp/linesdk/LineAccessToken;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {v0, v9, v2}, Lcom/linecorp/linesdk/LineCredential;-><init>(Lcom/linecorp/linesdk/LineAccessToken;Ljava/util/List;)V

    .line 34
    invoke-virtual {p1, v0}, Lcom/linecorp/linesdk/auth/LineLoginResult$b;->k(Lcom/linecorp/linesdk/LineCredential;)Lcom/linecorp/linesdk/auth/LineLoginResult$b;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$b;->h()Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    const-string p1, "Requested data is missing."

    .line 36
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->m(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/linecorp/linesdk/auth/LineLoginResult;)V
    .locals 1
    .param p1    # Lcom/linecorp/linesdk/auth/LineLoginResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/c$b;->a:Lcom/linecorp/linesdk/auth/internal/c;

    invoke-static {v0}, Lcom/linecorp/linesdk/auth/internal/c;->a(Lcom/linecorp/linesdk/auth/internal/c;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->a()V

    .line 2
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/c$b;->a:Lcom/linecorp/linesdk/auth/internal/c;

    invoke-static {v0}, Lcom/linecorp/linesdk/auth/internal/c;->b(Lcom/linecorp/linesdk/auth/internal/c;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->d(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, [Lcom/linecorp/linesdk/auth/internal/a$c;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/auth/internal/c$b;->a([Lcom/linecorp/linesdk/auth/internal/a$c;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/linecorp/linesdk/auth/LineLoginResult;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/auth/internal/c$b;->b(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    return-void
.end method
