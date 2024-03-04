.class final Lo3/f;
.super Lcom/google/android/gms/common/api/a$a;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;Lv3/c;Lv3/h;)Lcom/google/android/gms/common/api/a$f;
    .locals 7

    .line 1
    move-object v4, p4

    check-cast v4, Lo3/c;

    .line 2
    new-instance p4, Lcom/google/android/gms/internal/auth/g;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/auth/g;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Lo3/c;Lv3/c;Lv3/h;)V

    return-object p4
.end method
