.class public Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;
    }
.end annotation


# static fields
.field public static final RC_SIGN_IN:I = 0x65

.field private static final SERVER_CLIENT_ID:Ljava/lang/String; = "608585919828-m85rs3dlf3v5h32ju76sdqu3jjlbuoho.apps.googleusercontent.com"

.field private static sHelper:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;


# instance fields
.field private activity:Landroid/app/Activity;

.field private mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/b;

.field private final mGso:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field private showLogin:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->mGso:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;)V
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

    new-instance p2, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$1;

    invoke-direct {p2, p0, p3, p4}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static getInstance()Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->sHelper:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->sHelper:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->sHelper:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->sHelper:Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    return-object v0
.end method


# virtual methods
.method public accessTokenGetId(ILjava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 2
    invoke-interface {p4, p3}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;->onAuthResponse(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "user/openid"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "accessToken"

    .line 5
    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string p2, "uid"

    .line 6
    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$2;

    invoke-direct {p2, p0, p4}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$2;-><init>(Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;)V

    .line 7
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public login(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p2, ""

    .line 1
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/b;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/b;->s()Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x65

    .line 4
    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->activity:Landroid/app/Activity;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->showLogin:Z

    goto :goto_0

    .line 7
    :cond_2
    instance-of p2, p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz p2, :cond_3

    .line 8
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->activity:Landroid/app/Activity;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x65

    if-ne p1, p2, :cond_1

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/a;->c(Landroid/content/Intent;)Lt4/g;

    move-result-object p1

    .line 3
    :try_start_0
    const-class p2, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, p2}, Lt4/g;->l(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz p1, :cond_1

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
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;)V
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

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debug(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 14
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

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->activity:Landroid/app/Activity;

    instance-of p2, p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz p2, :cond_1

    .line 16
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public register(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->activity:Landroid/app/Activity;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->mGso:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/api/signin/a;->a(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/b;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/b;

    .line 3
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->showLogin:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/b;->s()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x65

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public unregister()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->activity:Landroid/app/Activity;

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/b;

    return-void
.end method
