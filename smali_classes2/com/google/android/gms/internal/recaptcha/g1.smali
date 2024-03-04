.class public final Lcom/google/android/gms/internal/recaptcha/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;

.field private static e:Lcom/google/android/gms/internal/recaptcha/g1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/h1;

.field private final b:Lcom/google/android/gms/internal/recaptcha/z0;

.field private c:Lcom/google/android/gms/internal/recaptcha/zzkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/zzkn<",
            "Lcom/google/android/gms/internal/recaptcha/zzvj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/e1;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/g1;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/h1;Lcom/google/android/gms/internal/recaptcha/z0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/g1;->b:Lcom/google/android/gms/internal/recaptcha/z0;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/g1;->a:Lcom/google/android/gms/internal/recaptcha/h1;

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzkn;->zzl()Lcom/google/android/gms/internal/recaptcha/zzkn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/g1;->c:Lcom/google/android/gms/internal/recaptcha/zzkn;

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/recaptcha/g1;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/g1;->e:Lcom/google/android/gms/internal/recaptcha/g1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/g1;

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/h1;

    invoke-direct {v1}, Lcom/google/android/gms/internal/recaptcha/h1;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/recaptcha/z0;

    invoke-direct {v2}, Lcom/google/android/gms/internal/recaptcha/z0;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/g1;-><init>(Lcom/google/android/gms/internal/recaptcha/h1;Lcom/google/android/gms/internal/recaptcha/z0;)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/g1;->e:Lcom/google/android/gms/internal/recaptcha/g1;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/g1;->e:Lcom/google/android/gms/internal/recaptcha/g1;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/gms/internal/recaptcha/c1;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/u8;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/u8;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/g1;->c:Lcom/google/android/gms/internal/recaptcha/zzkn;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/zzkn;->zze()Lcom/google/android/gms/internal/recaptcha/j9;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/recaptcha/zzvj;

    .line 3
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/recaptcha/zzvj;->zza()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/g1;->b:Lcom/google/android/gms/internal/recaptcha/z0;

    .line 4
    invoke-static {v2, p1, v4}, Lcom/google/android/gms/internal/recaptcha/h1;->a(Lcom/google/android/gms/internal/recaptcha/zzvj;Landroid/content/Context;Lcom/google/android/gms/internal/recaptcha/z0;)Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/recaptcha/u8;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/u8;
    :try_end_0
    .catch Lcom/google/android/gms/internal/recaptcha/a1; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/recaptcha/d1; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 6
    :goto_1
    sget-object v3, Lcom/google/android/gms/internal/recaptcha/g1;->d:Ljava/lang/String;

    .line 7
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/recaptcha/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/u8;->b()Lcom/google/android/gms/internal/recaptcha/zzkl;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/g1;->b:Lcom/google/android/gms/internal/recaptcha/z0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/z0;->e()Lcom/google/android/gms/internal/recaptcha/zj;

    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/recaptcha/c1;->c(Lcom/google/android/gms/internal/recaptcha/zzkl;Lcom/google/android/gms/internal/recaptcha/zj;)Lcom/google/android/gms/internal/recaptcha/c1;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/google/android/gms/internal/recaptcha/b1;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/b1;->a()Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/zzkn;->zzk(Ljava/util/Collection;)Lcom/google/android/gms/internal/recaptcha/zzkn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/g1;->c:Lcom/google/android/gms/internal/recaptcha/zzkn;

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/g1;->b:Lcom/google/android/gms/internal/recaptcha/z0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/b1;->b()Lcom/google/android/gms/internal/recaptcha/xj;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/z0;->f(Lcom/google/android/gms/internal/recaptcha/xj;)V

    return-void
.end method
