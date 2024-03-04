.class public final Lcom/google/android/gms/internal/recaptcha/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/recaptcha/b;


# static fields
.field private static final h:Lcom/google/android/gms/internal/recaptcha/j1;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/recaptcha/j0;

.field private final c:Lcom/google/android/gms/internal/recaptcha/h0;

.field private final d:Lcom/google/android/gms/internal/recaptcha/b0;

.field private final e:Lcom/google/android/gms/internal/recaptcha/m1;

.field private final f:Lcom/google/android/gms/internal/recaptcha/q1;

.field private final g:Lcom/google/android/gms/internal/recaptcha/g1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/k1;->a()Lcom/google/android/gms/internal/recaptcha/j1;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/n;->h:Lcom/google/android/gms/internal/recaptcha/j1;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/recaptcha/j0;Lcom/google/android/gms/internal/recaptcha/h0;Lcom/google/android/gms/internal/recaptcha/b0;Lcom/google/android/gms/internal/recaptcha/m1;Lcom/google/android/gms/internal/recaptcha/q1;Lcom/google/android/gms/internal/recaptcha/g1;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/n;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/n;->b:Lcom/google/android/gms/internal/recaptcha/j0;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/n;->c:Lcom/google/android/gms/internal/recaptcha/h0;

    iput-object p4, p0, Lcom/google/android/gms/internal/recaptcha/n;->d:Lcom/google/android/gms/internal/recaptcha/b0;

    iput-object p5, p0, Lcom/google/android/gms/internal/recaptcha/n;->e:Lcom/google/android/gms/internal/recaptcha/m1;

    iput-object p6, p0, Lcom/google/android/gms/internal/recaptcha/n;->f:Lcom/google/android/gms/internal/recaptcha/q1;

    iput-object p7, p0, Lcom/google/android/gms/internal/recaptcha/n;->g:Lcom/google/android/gms/internal/recaptcha/g1;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/google/android/gms/internal/recaptcha/n;
    .locals 9

    new-instance v8, Lcom/google/android/gms/internal/recaptcha/n;

    new-instance v2, Lcom/google/android/gms/internal/recaptcha/j0;

    .line 1
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/recaptcha/j0;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/google/android/gms/internal/recaptcha/h0;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/recaptcha/h0;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/gms/internal/recaptcha/b0;

    invoke-direct {v4}, Lcom/google/android/gms/internal/recaptcha/b0;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/recaptcha/m1;

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/n;->h:Lcom/google/android/gms/internal/recaptcha/j1;

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/recaptcha/m1;-><init>(Lcom/google/android/gms/internal/recaptcha/j1;)V

    new-instance v6, Lcom/google/android/gms/internal/recaptcha/q1;

    invoke-direct {v6, p0, v0}, Lcom/google/android/gms/internal/recaptcha/q1;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/recaptcha/j1;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/g1;->b()Lcom/google/android/gms/internal/recaptcha/g1;

    move-result-object v7

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/recaptcha/n;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/recaptcha/j0;Lcom/google/android/gms/internal/recaptcha/h0;Lcom/google/android/gms/internal/recaptcha/b0;Lcom/google/android/gms/internal/recaptcha/m1;Lcom/google/android/gms/internal/recaptcha/q1;Lcom/google/android/gms/internal/recaptcha/g1;)V

    return-object v8
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/google/android/gms/recaptcha/RecaptchaAction;)Lt4/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/recaptcha/RecaptchaHandle;",
            "Lcom/google/android/gms/recaptcha/RecaptchaAction;",
            ")",
            "Lt4/g<",
            "Lcom/google/android/gms/recaptcha/RecaptchaResultData;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lt4/h;

    invoke-direct {v0}, Lt4/h;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/l;

    .line 2
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/recaptcha/l;-><init>(Lcom/google/android/gms/internal/recaptcha/n;Lt4/h;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/n;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/recaptcha/RecaptchaHandle;->L()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/recaptcha/p1;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/n;->c:Lcom/google/android/gms/internal/recaptcha/h0;

    new-instance v4, Lcom/google/android/gms/recaptcha/RecaptchaAction;

    .line 4
    invoke-direct {v4, p2, v2}, Lcom/google/android/gms/recaptcha/RecaptchaAction;-><init>(Lcom/google/android/gms/recaptcha/RecaptchaAction;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/n;->g:Lcom/google/android/gms/internal/recaptcha/g1;

    invoke-virtual {v3, v1, p1, v4, p2}, Lcom/google/android/gms/internal/recaptcha/h0;->e(Lcom/google/android/gms/internal/recaptcha/d;Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/google/android/gms/recaptcha/RecaptchaAction;Lcom/google/android/gms/internal/recaptcha/g1;)V

    .line 5
    invoke-virtual {v0}, Lt4/h;->a()Lt4/g;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Cannot call execute with a null RecaptchaHandle or a null RecaptchaAction. Make sure to call init first."

    .line 7
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lcom/google/android/gms/recaptcha/RecaptchaHandle;)Lt4/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/recaptcha/RecaptchaHandle;",
            ")",
            "Lt4/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "Cannot call close with a null RecaptchaHandle."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance p1, Lt4/h;

    invoke-direct {p1}, Lt4/h;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/m;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/m;-><init>(Lcom/google/android/gms/internal/recaptcha/n;Lt4/h;)V

    .line 4
    :try_start_0
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/b;->P(Lcom/google/android/gms/common/api/Status;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RecaptchaOPClose"

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/recaptcha/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    invoke-virtual {p1}, Lt4/h;->a()Lt4/g;

    move-result-object p1

    return-object p1
.end method

.method public final init(Ljava/lang/String;)Lt4/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lt4/g<",
            "Lcom/google/android/gms/recaptcha/RecaptchaHandle;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt4/h;

    invoke-direct {v0}, Lt4/h;-><init>()V

    const-string v1, "Cannot call init with a null site key."

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/k;

    .line 3
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/recaptcha/k;-><init>(Lcom/google/android/gms/internal/recaptcha/n;Lt4/h;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/n;->b:Lcom/google/android/gms/internal/recaptcha/j0;

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/n;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/n;->g:Lcom/google/android/gms/internal/recaptcha/g1;

    invoke-virtual {v2, v1, p1, v3, v4}, Lcom/google/android/gms/internal/recaptcha/j0;->b(Lcom/google/android/gms/internal/recaptcha/f;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/g1;)V

    .line 5
    invoke-virtual {v0}, Lt4/h;->a()Lt4/g;

    move-result-object p1

    return-object p1
.end method
