.class final Lq4/b;
.super Lcom/google/android/gms/common/api/a$a;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)Lcom/google/android/gms/common/api/a$f;
    .locals 8

    .line 1
    check-cast p4, Lq4/a;

    .line 2
    new-instance p4, Lcom/google/android/gms/signin/internal/a;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/signin/internal/a;->j0(Lcom/google/android/gms/common/internal/e;)Landroid/os/Bundle;

    move-result-object v5

    const/4 v3, 0x1

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/signin/internal/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/e;Landroid/os/Bundle;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)V

    return-object p4
.end method
