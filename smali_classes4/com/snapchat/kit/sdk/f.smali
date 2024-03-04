.class public final Lcom/snapchat/kit/sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/f$e;,
        Lcom/snapchat/kit/sdk/f$c;
    }
.end annotation


# static fields
.field static final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Lce/c;

.field private final f:Lokhttp3/OkHttpClient;

.field private final g:Ldg/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldg/a<",
            "Lie/j;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/gson/Gson;

.field private final i:Ldg/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldg/a<",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Lge/f;

.field private k:Lcom/snapchat/kit/sdk/a/a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final l:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

.field private final m:Z

.field private n:Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;

.field private o:Lcom/snapchat/kit/sdk/c;

.field private final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field q:I
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation
.end field

.field r:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/snapchat/kit/sdk/f$a;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/f$a;-><init>()V

    sput-object v0, Lcom/snapchat/kit/sdk/f;->s:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;Lbe/d;Lce/c;Lokhttp3/OkHttpClient;Ldg/a;Lcom/google/gson/Gson;Ldg/a;Lge/f;Ldg/a;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Z)V
    .locals 5
    .param p5    # Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;",
            "Lbe/d;",
            "Lce/c;",
            "Lokhttp3/OkHttpClient;",
            "Ldg/a<",
            "Lie/j;",
            ">;",
            "Lcom/google/gson/Gson;",
            "Ldg/a<",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;>;",
            "Lge/f;",
            "Ldg/a<",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;",
            ">;>;",
            "Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/snapchat/kit/sdk/f;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput v2, v0, Lcom/snapchat/kit/sdk/f;->q:I

    move-object v1, p1

    .line 4
    iput-object v1, v0, Lcom/snapchat/kit/sdk/f;->a:Ljava/lang/String;

    move-object v1, p2

    .line 5
    iput-object v1, v0, Lcom/snapchat/kit/sdk/f;->b:Ljava/lang/String;

    move-object v1, p3

    .line 6
    iput-object v1, v0, Lcom/snapchat/kit/sdk/f;->c:Ljava/util/List;

    move-object v1, p4

    .line 7
    iput-object v1, v0, Lcom/snapchat/kit/sdk/f;->d:Landroid/content/Context;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/snapchat/kit/sdk/f;->e:Lce/c;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/snapchat/kit/sdk/f;->f:Lokhttp3/OkHttpClient;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/snapchat/kit/sdk/f;->g:Ldg/a;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/snapchat/kit/sdk/f;->h:Lcom/google/gson/Gson;

    move-object/from16 v1, p11

    .line 12
    iput-object v1, v0, Lcom/snapchat/kit/sdk/f;->i:Ldg/a;

    move-object/from16 v1, p12

    .line 13
    iput-object v1, v0, Lcom/snapchat/kit/sdk/f;->j:Lge/f;

    .line 14
    new-instance v1, Lcom/snapchat/kit/sdk/a/a;

    move-object/from16 v3, p13

    invoke-direct {v1, v3}, Lcom/snapchat/kit/sdk/a/a;-><init>(Ldg/a;)V

    iput-object v1, v0, Lcom/snapchat/kit/sdk/f;->k:Lcom/snapchat/kit/sdk/a/a;

    .line 15
    new-instance v1, Lcom/snapchat/kit/sdk/c;

    move-object v3, p5

    move-object v4, p6

    invoke-direct {v1, p5, p6}, Lcom/snapchat/kit/sdk/c;-><init>(Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;Lbe/d;)V

    iput-object v1, v0, Lcom/snapchat/kit/sdk/f;->o:Lcom/snapchat/kit/sdk/c;

    move-object/from16 v3, p14

    .line 16
    iput-object v3, v0, Lcom/snapchat/kit/sdk/f;->l:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    move/from16 v3, p15

    .line 17
    iput-boolean v3, v0, Lcom/snapchat/kit/sdk/f;->m:Z

    .line 18
    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    new-instance v1, Lcom/snapchat/kit/sdk/f$e;

    invoke-direct {v1, p0, v2}, Lcom/snapchat/kit/sdk/f$e;-><init>(Lcom/snapchat/kit/sdk/f;B)V

    new-array v2, v2, [Ljava/lang/Void;

    .line 20
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/snapchat/kit/sdk/f;)Lcom/snapchat/kit/sdk/a/a;
    .locals 0

    iget-object p0, p0, Lcom/snapchat/kit/sdk/f;->k:Lcom/snapchat/kit/sdk/a/a;

    return-object p0
.end method

.method private static c(Lokhttp3/RequestBody;Ljava/lang/String;)Lokhttp3/Request;
    .locals 4
    .param p0    # Lokhttp3/RequestBody;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 2
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "https://accounts.snapchat.com"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "%s%s"

    .line 3
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method private e(Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->i:Ldg/a;

    invoke-interface {v0}, Ldg/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/b;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/f;->j:Lge/f;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lge/f;->c(ZZ)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lde/b;->push(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->e:Lce/c;

    invoke-virtual {v0, p1}, Lce/c;->b(Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;)V

    return-void
.end method

.method private f(Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v1, "grant_type"

    const-string v2, "authorization_code"

    .line 2
    invoke-virtual {v0, v1, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    const-string v1, "code"

    .line 3
    invoke-virtual {v0, v1, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 4
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->getRedirectUri()Ljava/lang/String;

    move-result-object p2

    const-string v1, "redirect_uri"

    invoke-virtual {v0, v1, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 5
    iget-object p2, p0, Lcom/snapchat/kit/sdk/f;->a:Ljava/lang/String;

    const-string v1, "client_id"

    invoke-virtual {v0, v1, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 6
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->getCodeVerifier()Ljava/lang/String;

    move-result-object p1

    const-string p2, "code_verifier"

    invoke-virtual {v0, p2, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 7
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    const-string p2, "/accounts/oauth2/token"

    invoke-static {p1, p2}, Lcom/snapchat/kit/sdk/f;->c(Lokhttp3/RequestBody;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/snapchat/kit/sdk/f;->w()V

    return-void

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/snapchat/kit/sdk/f;->e:Lce/c;

    invoke-virtual {p2}, Lce/c;->f()V

    .line 10
    iget-object p2, p0, Lcom/snapchat/kit/sdk/f;->k:Lcom/snapchat/kit/sdk/a/a;

    sget-object v0, Lcom/snapchat/kit/sdk/a/a$a;->GRANT:Lcom/snapchat/kit/sdk/a/a$a;

    invoke-virtual {p2, v0}, Lcom/snapchat/kit/sdk/a/a;->a(Lcom/snapchat/kit/sdk/a/a$a;)V

    .line 11
    iget-object p2, p0, Lcom/snapchat/kit/sdk/f;->f:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance p2, Lcom/snapchat/kit/sdk/f$b;

    invoke-direct {p2, p0}, Lcom/snapchat/kit/sdk/f$b;-><init>(Lcom/snapchat/kit/sdk/f;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private g(Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->getRedirectUri()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->getCodeVerifier()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 4
    iput p3, p0, Lcom/snapchat/kit/sdk/f;->q:I

    .line 5
    iget-boolean p3, p0, Lcom/snapchat/kit/sdk/f;->r:Z

    if-eqz p3, :cond_1

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/snapchat/kit/sdk/f;->l(Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/snapchat/kit/sdk/f;->f(Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/snapchat/kit/sdk/f;->r:Z

    if-eqz p1, :cond_3

    .line 9
    sget-object p1, Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;->INVALID_OAUTH_RESPONSE:Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;

    invoke-direct {p0, p1}, Lcom/snapchat/kit/sdk/f;->e(Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;)V

    return-void

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/snapchat/kit/sdk/f;->w()V

    return-void
.end method

.method static synthetic h(Lcom/snapchat/kit/sdk/f;Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/snapchat/kit/sdk/f;->e(Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;)V

    return-void
.end method

.method static synthetic i(Lcom/snapchat/kit/sdk/f;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->i:Ldg/a;

    invoke-interface {v0}, Ldg/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/b;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/f;->j:Lge/f;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lge/f;->c(ZZ)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lde/b;->push(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/snapchat/kit/sdk/f;->e:Lce/c;

    invoke-virtual {p0, p1}, Lce/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/snapchat/kit/sdk/f;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method private l(Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->k:Lcom/snapchat/kit/sdk/a/a;

    sget-object v1, Lcom/snapchat/kit/sdk/a/a$a;->FIREBASE_TOKEN_GRANT:Lcom/snapchat/kit/sdk/a/a$a;

    invoke-virtual {v0, v1}, Lcom/snapchat/kit/sdk/a/a;->a(Lcom/snapchat/kit/sdk/a/a$a;)V

    .line 2
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->g:Ldg/a;

    invoke-interface {v0}, Ldg/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lie/j;

    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->getCodeVerifier()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/snapchat/kit/sdk/f$d;

    invoke-direct {v2, p0}, Lcom/snapchat/kit/sdk/f$d;-><init>(Lcom/snapchat/kit/sdk/f;)V

    .line 4
    invoke-virtual {v0, p2, v1, p1, v2}, Lie/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lie/b;)V

    return-void
.end method

.method static synthetic m(Lcom/snapchat/kit/sdk/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/snapchat/kit/sdk/f;->w()V

    return-void
.end method

.method private static n(Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic q(Lcom/snapchat/kit/sdk/f;)Lcom/google/gson/Gson;
    .locals 0

    iget-object p0, p0, Lcom/snapchat/kit/sdk/f;->h:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic s(Lcom/snapchat/kit/sdk/f;)Lcom/snapchat/kit/sdk/c;
    .locals 0

    iget-object p0, p0, Lcom/snapchat/kit/sdk/f;->o:Lcom/snapchat/kit/sdk/c;

    return-object p0
.end method

.method static synthetic u(Lcom/snapchat/kit/sdk/f;)Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/kit/sdk/f;->n:Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;

    return-object v0
.end method

.method private w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->i:Ldg/a;

    invoke-interface {v0}, Ldg/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/b;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/f;->j:Lge/f;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lge/f;->c(ZZ)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lde/b;->push(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->e:Lce/c;

    invoke-virtual {v0}, Lce/c;->g()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->o:Lcom/snapchat/kit/sdk/c;

    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/c;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final d(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "code"

    .line 1
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state"

    .line 2
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/f;->n:Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;

    .line 4
    invoke-direct {p0, v1, v0, p1}, Lcom/snapchat/kit/sdk/f;->g(Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final k()I
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->o:Lcom/snapchat/kit/sdk/c;

    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcom/snapchat/kit/sdk/f$c;->f:I

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/f;->p()I

    move-result v0

    return v0
.end method

.method final o(Landroid/net/Uri;)Z
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final p()I
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->o:Lcom/snapchat/kit/sdk/c;

    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/c;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcom/snapchat/kit/sdk/f$c;->a:I

    return v0

    .line 3
    :cond_0
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v2, "grant_type"

    const-string v3, "refresh_token"

    .line 4
    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 5
    invoke-virtual {v1, v3, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 6
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->a:Ljava/lang/String;

    const-string v2, "client_id"

    invoke-virtual {v1, v2, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 7
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    const-string v1, "/accounts/oauth2/token"

    invoke-static {v0, v1}, Lcom/snapchat/kit/sdk/f;->c(Lokhttp3/RequestBody;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/snapchat/kit/sdk/f;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    sget v0, Lcom/snapchat/kit/sdk/f$c;->c:I

    return v0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/snapchat/kit/sdk/f;->k:Lcom/snapchat/kit/sdk/a/a;

    sget-object v4, Lcom/snapchat/kit/sdk/a/a$a;->REFRESH:Lcom/snapchat/kit/sdk/a/a$a;

    invoke-virtual {v1, v4}, Lcom/snapchat/kit/sdk/a/a;->a(Lcom/snapchat/kit/sdk/a/a$a;)V

    .line 11
    sget v1, Lcom/snapchat/kit/sdk/f$c;->e:I

    .line 12
    :try_start_0
    iget-object v5, p0, Lcom/snapchat/kit/sdk/f;->f:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 14
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 15
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 16
    iget-object v6, p0, Lcom/snapchat/kit/sdk/f;->h:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v7

    const-class v8, Lcom/snapchat/kit/sdk/core/models/AuthToken;

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/snapchat/kit/sdk/core/models/AuthToken;

    goto :goto_0

    :cond_2
    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_4

    .line 17
    invoke-virtual {v6}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 18
    iget-object v7, p0, Lcom/snapchat/kit/sdk/f;->o:Lcom/snapchat/kit/sdk/c;

    invoke-virtual {v7}, Lcom/snapchat/kit/sdk/c;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->setRefreshToken(Ljava/lang/String;)V

    .line 19
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->setLastUpdated(J)V

    .line 20
    invoke-virtual {v6}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->isComplete()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 21
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->o:Lcom/snapchat/kit/sdk/c;

    invoke-virtual {v0, v6}, Lcom/snapchat/kit/sdk/c;->a(Lcom/snapchat/kit/sdk/core/models/AuthToken;)V

    .line 22
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->k:Lcom/snapchat/kit/sdk/a/a;

    invoke-virtual {v0, v4, v3}, Lcom/snapchat/kit/sdk/a/a;->b(Lcom/snapchat/kit/sdk/a/a$a;Z)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 23
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v6, 0x190

    if-ne v3, v6, :cond_5

    .line 24
    iget-object v3, p0, Lcom/snapchat/kit/sdk/f;->h:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v0

    const-class v5, Lcom/snapchat/kit/sdk/core/models/d;

    invoke-virtual {v3, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/snapchat/kit/sdk/core/models/d;

    :cond_5
    if-eqz v5, :cond_6

    .line 25
    invoke-virtual {v5}, Lcom/snapchat/kit/sdk/core/models/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/snapchat/kit/sdk/f;->s:Ljava/util/Set;

    .line 26
    invoke-virtual {v5}, Lcom/snapchat/kit/sdk/core/models/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->o:Lcom/snapchat/kit/sdk/c;

    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/c;->g()V

    .line 28
    :cond_6
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->k:Lcom/snapchat/kit/sdk/a/a;

    invoke-virtual {v0, v4, v2}, Lcom/snapchat/kit/sdk/a/a;->b(Lcom/snapchat/kit/sdk/a/a$a;Z)V

    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_7

    .line 29
    sget v1, Lcom/snapchat/kit/sdk/f$c;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 30
    :catch_0
    :try_start_1
    sget v1, Lcom/snapchat/kit/sdk/f$c;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1

    :goto_3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/f;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    throw v0
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->o:Lcom/snapchat/kit/sdk/c;

    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/c;->f()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/f;->o:Lcom/snapchat/kit/sdk/c;

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/c;->g()V

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->e:Lce/c;

    invoke-virtual {v0}, Lce/c;->i()V

    :cond_0
    return-void
.end method

.method final t()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/snapchat/kit/sdk/f;->r:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;->INVALID_OAUTH_RESPONSE:Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;

    invoke-direct {p0, v0}, Lcom/snapchat/kit/sdk/f;->e(Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/kit/sdk/f;->w()V

    return-void
.end method

.method final v()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->i:Ldg/a;

    invoke-interface {v0}, Ldg/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/b;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/f;->j:Lge/f;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lge/f;->c(ZZ)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lde/b;->push(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->e:Lce/c;

    invoke-virtual {v0}, Lce/c;->h()V

    return-void
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/f;->o:Lcom/snapchat/kit/sdk/c;

    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/c;->f()Z

    move-result v0

    return v0
.end method
