.class final Lcom/google/android/gms/internal/recaptcha/y4;
.super Lcom/google/android/gms/internal/recaptcha/p5;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/internal/recaptcha/p5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/y4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/y4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/y4;->a:Lcom/google/android/gms/internal/recaptcha/p5;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/p5;-><init>()V

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/recaptcha/p5;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/y4;->a:Lcom/google/android/gms/internal/recaptcha/p5;

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a(Lcom/google/android/gms/internal/recaptcha/j4;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/recaptcha/p2;I)Lcom/google/android/gms/internal/recaptcha/o5;
    .locals 9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/j4;->g()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/pf;->b()Lcom/google/android/gms/internal/recaptcha/pf;

    move-result-object p5

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/pf;->a()Lcom/google/android/gms/internal/recaptcha/pf;

    move-result-object p5

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/j4;->d()Lcom/google/android/gms/internal/recaptcha/gh;

    move-result-object v0

    .line 4
    invoke-static {v0, p5}, Lcom/google/android/gms/internal/recaptcha/v5;->c(Lcom/google/android/gms/internal/recaptcha/gh;Lcom/google/android/gms/internal/recaptcha/pf;)Lcom/google/android/gms/internal/recaptcha/v5;

    move-result-object v4

    new-instance p5, Lcom/google/android/gms/internal/recaptcha/z4;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/j4;->a()Landroid/net/Uri;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/dd;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/j4;->b()Lcom/google/android/gms/internal/recaptcha/z3;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/j4;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/m6;->d()Lcom/google/android/gms/internal/recaptcha/m6;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/m6;->c()Lcom/google/android/gms/internal/recaptcha/m6;

    move-result-object p1

    :goto_1
    move-object v8, p1

    move-object v1, p5

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/recaptcha/z4;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/o4;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/recaptcha/p2;Lcom/google/android/gms/internal/recaptcha/z3;Lcom/google/android/gms/internal/recaptcha/m6;)V

    return-object p5
.end method
