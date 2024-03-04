.class public Lcom/guochao/faceshow/aaspring/modulars/login/utils/c;
.super Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;
.source "SourceFile"


# instance fields
.field private e:Lcom/google/android/gms/auth/api/signin/b;

.field private final f:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field g:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object v0

    const-string v1, "608585919828-m85rs3dlf3v5h32ju76sdqu3jjlbuoho.apps.googleusercontent.com"

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->g(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 7
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c;->g:Landroid/app/Activity;

    return-void
.end method

.method private o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance p1, Lokhttp3/OkHttpClient;

    invoke-direct {p1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 2
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v1, "client_id"

    const-string v2, "608585919828-m85rs3dlf3v5h32ju76sdqu3jjlbuoho.apps.googleusercontent.com"

    .line 3
    invoke-virtual {v0, v1, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    const-string v1, "client_secret"

    const-string v2, "3cqu8zuFINHsHHo2hbbcqVAl"

    .line 4
    invoke-virtual {v0, v1, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, ""

    :cond_0
    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p2

    const-string v0, "redirect_uri"

    const-string v1, "https://facecast-1522727057744.firebaseapp.com/__/auth/handler"

    .line 6
    invoke-virtual {p2, v0, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p2

    const-string v0, "grant_type"

    const-string v1, "authorization_code"

    .line 7
    invoke-virtual {p2, v0, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p2

    .line 9
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "https://oauth2.googleapis.com/token"

    .line 10
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a;

    invoke-direct {p2, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/c;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method


# virtual methods
.method public i(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->i(IILandroid/content/Intent;)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/a;->c(Landroid/content/Intent;)Lt4/g;

    move-result-object p1

    .line 3
    :try_start_0
    const-class p2, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, p2}, Lt4/g;->l(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->I()Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->M()Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->L()Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->K()Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->P()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->c0()Landroid/net/Uri;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->R()Ljava/lang/String;

    move-result-object p3

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->p0()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p0, p3, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u8c37\u6b4c\u767b\u5f55\u5931\u8d25,"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/common/api/Status;->M()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debug(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    const/4 p2, -0x1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "signInResult:failed code="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "zune"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c;->g:Landroid/app/Activity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/api/signin/a;->a(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/b;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c;->e:Lcom/google/android/gms/auth/api/signin/b;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/b;->s()Landroid/content/Intent;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c;->g:Landroid/app/Activity;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
