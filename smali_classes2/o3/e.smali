.class final Lo3/e;
.super Lcom/google/android/gms/common/api/a$a;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)Lcom/google/android/gms/common/api/a$f;
    .locals 7
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 2
    new-instance p4, Lt3/f;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lt3/f;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)V

    return-object p4
.end method
