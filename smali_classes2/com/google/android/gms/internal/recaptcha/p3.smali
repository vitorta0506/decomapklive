.class public final Lcom/google/android/gms/internal/recaptcha/p3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/o2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/recaptcha/o2<",
        "Ljava/io/OutputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[Lcom/google/android/gms/internal/recaptcha/c3;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/recaptcha/p3;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/p3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/p3;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/recaptcha/n2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/n2;->b()Lcom/google/android/gms/internal/recaptcha/q3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/n2;->a()Landroid/net/Uri;

    move-result-object v1

    .line 1
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/recaptcha/q3;->e(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/recaptcha/n2;->d(Ljava/io/OutputStream;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/p3;->a:[Lcom/google/android/gms/internal/recaptcha/c3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget-object v0, v0, v1

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/c3;->a(Ljava/util/List;)V

    .line 4
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/OutputStream;

    return-object p1
.end method

.method public final varargs c([Lcom/google/android/gms/internal/recaptcha/c3;)Lcom/google/android/gms/internal/recaptcha/p3;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/p3;->a:[Lcom/google/android/gms/internal/recaptcha/c3;

    return-object p0
.end method
