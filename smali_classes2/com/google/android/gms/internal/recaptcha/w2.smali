.class public final Lcom/google/android/gms/internal/recaptcha/w2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Landroid/accounts/Account;

.field private f:Ljava/lang/String;

.field private final g:Lcom/google/android/gms/internal/recaptcha/q8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/q8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/recaptcha/v2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "files"

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/w2;->c:Ljava/lang/String;

    const-string p2, "common"

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/w2;->d:Ljava/lang/String;

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/recaptcha/x2;->b:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/w2;->e:Landroid/accounts/Account;

    const-string p2, ""

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/w2;->f:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzj()Lcom/google/android/gms/internal/recaptcha/q8;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/w2;->g:Lcom/google/android/gms/internal/recaptcha/q8;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array p2, p2, [Ljava/lang/Object;

    const-string v1, "Context cannot be null"

    .line 3
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/recaptcha/m3;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/w2;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/w2;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/w2;->c:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/w2;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/w2;->e:Landroid/accounts/Account;

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/q2;->b(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/w2;->f:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "/%s/%s/%s/%s"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/w2;->g:Lcom/google/android/gms/internal/recaptcha/q8;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/q8;->f()Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/l3;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/Uri$Builder;

    .line 4
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "android"

    .line 5
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/w2;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/w2;
    .locals 0

    const-string p1, "recaptcha"

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/x2;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/w2;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/w2;
    .locals 0

    sget p1, Lcom/google/android/gms/internal/recaptcha/x2;->e:I

    const-string p1, "token.pb"

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/w2;->f:Ljava/lang/String;

    return-object p0
.end method
