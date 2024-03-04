.class public final Lcom/google/android/gms/internal/recaptcha/w;
.super Lcom/google/android/gms/common/api/c;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/recaptcha/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/c<",
        "Lcom/google/android/gms/common/api/a$d$c;",
        ">;",
        "Lcom/google/android/gms/recaptcha/b;"
    }
.end annotation


# static fields
.field private static final n:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lcom/google/android/gms/internal/recaptcha/x;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Lcom/google/android/gms/internal/recaptcha/j1;

.field private static final p:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "Lcom/google/android/gms/internal/recaptcha/x;",
            "Lcom/google/android/gms/common/api/a$d$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final q:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/common/api/a$d$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final k:Landroid/content/Context;

.field private final l:Lcom/google/android/gms/internal/recaptcha/m1;

.field private final m:Lcom/google/android/gms/internal/recaptcha/q1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/w;->n:Lcom/google/android/gms/common/api/a$g;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/k1;->a()Lcom/google/android/gms/internal/recaptcha/j1;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/recaptcha/w;->o:Lcom/google/android/gms/internal/recaptcha/j1;

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/recaptcha/r;

    invoke-direct {v1}, Lcom/google/android/gms/internal/recaptcha/r;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/recaptcha/w;->p:Lcom/google/android/gms/common/api/a$a;

    .line 4
    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "Recaptcha.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lcom/google/android/gms/internal/recaptcha/w;->q:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/w;->q:Lcom/google/android/gms/common/api/a;

    .line 1
    sget-object v1, Lcom/google/android/gms/common/api/a$d;->T:Lcom/google/android/gms/common/api/a$d$c;

    sget-object v2, Lcom/google/android/gms/common/api/c$a;->c:Lcom/google/android/gms/common/api/c$a;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/c$a;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/w;->k:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/m1;

    sget-object v1, Lcom/google/android/gms/internal/recaptcha/w;->o:Lcom/google/android/gms/internal/recaptcha/j1;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/recaptcha/m1;-><init>(Lcom/google/android/gms/internal/recaptcha/j1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/w;->l:Lcom/google/android/gms/internal/recaptcha/m1;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/q1;

    .line 3
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/recaptcha/q1;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/recaptcha/j1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/w;->m:Lcom/google/android/gms/internal/recaptcha/q1;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/google/android/gms/recaptcha/RecaptchaAction;)Lt4/g;
    .locals 2
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
    invoke-static {}, Lcom/google/android/gms/common/api/internal/d;->a()Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/p;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/p;-><init>(Lcom/google/android/gms/internal/recaptcha/w;Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/google/android/gms/recaptcha/RecaptchaAction;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/d$a;->b(Lv3/i;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/google/android/gms/common/Feature;

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/recaptcha/d;->c:Lcom/google/android/gms/common/Feature;

    aput-object v1, p2, v0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/d$a;->d([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p1

    const/16 p2, 0x4d5b

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/d$a;->e(I)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/d$a;->a()Lcom/google/android/gms/common/api/internal/d;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/c;->h(Lcom/google/android/gms/common/api/internal/d;)Lt4/g;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Cannot call execute with a null RecaptchaHandle or a null RecaptchaAction. Make sure to call init first."

    .line 8
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
    invoke-static {}, Lcom/google/android/gms/common/api/internal/d;->a()Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/o;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/recaptcha/o;-><init>(Lcom/google/android/gms/internal/recaptcha/w;Lcom/google/android/gms/recaptcha/RecaptchaHandle;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/d$a;->b(Lv3/i;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/recaptcha/d;->d:Lcom/google/android/gms/common/Feature;

    aput-object v2, v0, v1

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/d$a;->d([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p1

    const/16 v0, 0x4d5c

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/d$a;->e(I)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/d$a;->a()Lcom/google/android/gms/common/api/internal/d;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/c;->h(Lcom/google/android/gms/common/api/internal/d;)Lt4/g;

    move-result-object p1

    return-object p1
.end method

.method public final init(Ljava/lang/String;)Lt4/g;
    .locals 3
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

    const-string v0, "Cannot call init with a null site key."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/api/internal/d;->a()Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/q;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/recaptcha/q;-><init>(Lcom/google/android/gms/internal/recaptcha/w;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/d$a;->b(Lv3/i;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/recaptcha/d;->b:Lcom/google/android/gms/common/Feature;

    aput-object v2, v0, v1

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/d$a;->d([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p1

    const/16 v0, 0x4d5a

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/d$a;->e(I)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/d$a;->a()Lcom/google/android/gms/common/api/internal/d;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/c;->h(Lcom/google/android/gms/common/api/internal/d;)Lt4/g;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic s(Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/google/android/gms/recaptcha/RecaptchaAction;Lcom/google/android/gms/internal/recaptcha/x;Lt4/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/t;

    .line 1
    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/recaptcha/t;-><init>(Lcom/google/android/gms/internal/recaptcha/w;Lt4/h;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/recaptcha/w;->k:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/recaptcha/RecaptchaHandle;->L()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/google/android/gms/internal/recaptcha/p1;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/d;->A()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/recaptcha/g;

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/zzv;

    new-instance v2, Lcom/google/android/gms/recaptcha/RecaptchaAction;

    invoke-direct {v2, p2, p4}, Lcom/google/android/gms/recaptcha/RecaptchaAction;-><init>(Lcom/google/android/gms/recaptcha/RecaptchaAction;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/th;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, v2, p2}, Lcom/google/android/gms/internal/recaptcha/zzv;-><init>(Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/google/android/gms/recaptcha/RecaptchaAction;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/recaptcha/g;->F0(Lcom/google/android/gms/internal/recaptcha/d;Lcom/google/android/gms/internal/recaptcha/zzv;)V

    return-void
.end method
