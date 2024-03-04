.class public final Lcom/google/android/gms/internal/recaptcha/x;
.super Lcom/google/android/gms/common/internal/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/f<",
        "Lcom/google/android/gms/internal/recaptcha/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Lv3/c;Lv3/h;)V
    .locals 7

    const/16 v3, 0xcd

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/f;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/e;Lv3/c;Lv3/h;)V

    return-void
.end method


# virtual methods
.method protected final B()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.recaptcha.internal.IRecaptchaService"

    return-object v0
.end method

.method protected final C()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.recaptcha.service.START"

    return-object v0
.end method

.method public final P()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final k()I
    .locals 1

    const v0, 0x1160f98

    return v0
.end method

.method protected final bridge synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.recaptcha.internal.IRecaptchaService"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/recaptcha/g;

    if-eqz v1, :cond_1

    .line 3
    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/g;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/g;

    .line 4
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/recaptcha/g;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final s()[Lcom/google/android/gms/common/Feature;
    .locals 1

    sget-object v0, Lcom/google/android/gms/recaptcha/d;->e:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method
