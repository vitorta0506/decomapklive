.class public final Lcom/google/android/gms/internal/recaptcha/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(I)Ljava/lang/String;
    .locals 1

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "D"

    return-object p0

    :cond_0
    const-string p0, "C"

    return-object p0

    :cond_1
    const-string p0, "B"

    return-object p0

    :cond_2
    const-string p0, "A"

    return-object p0
.end method
