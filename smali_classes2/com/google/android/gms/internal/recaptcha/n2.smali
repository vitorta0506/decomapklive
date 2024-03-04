.class public final Lcom/google/android/gms/internal/recaptcha/n2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/p2;

.field private final b:Lcom/google/android/gms/internal/recaptcha/q3;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/recaptcha/v3;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/recaptcha/u3;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/net/Uri;

.field private final f:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/m2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/m2;->i(Lcom/google/android/gms/internal/recaptcha/m2;)Lcom/google/android/gms/internal/recaptcha/p2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/n2;->a:Lcom/google/android/gms/internal/recaptcha/p2;

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/m2;->j(Lcom/google/android/gms/internal/recaptcha/m2;)Lcom/google/android/gms/internal/recaptcha/q3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/n2;->b:Lcom/google/android/gms/internal/recaptcha/q3;

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/m2;->k(Lcom/google/android/gms/internal/recaptcha/m2;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/n2;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/m2;->l(Lcom/google/android/gms/internal/recaptcha/m2;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/n2;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/m2;->a(Lcom/google/android/gms/internal/recaptcha/m2;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/n2;->e:Landroid/net/Uri;

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/m2;->b(Lcom/google/android/gms/internal/recaptcha/m2;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/n2;->f:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/n2;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/recaptcha/q3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/n2;->b:Lcom/google/android/gms/internal/recaptcha/q3;

    return-object v0
.end method

.method public final c(Ljava/io/InputStream;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/n2;->d:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/n2;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/n2;->e:Landroid/net/Uri;

    .line 4
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/recaptcha/i2;->a(Ljava/util/List;Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/gms/internal/recaptcha/i2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/n2;->c:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/recaptcha/v3;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/w8;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    invoke-interface {v1}, Lcom/google/android/gms/internal/recaptcha/v3;->E()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method

.method public final d(Ljava/io/OutputStream;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/n2;->d:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/n2;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/n2;->e:Landroid/net/Uri;

    .line 4
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/recaptcha/j2;->a(Ljava/util/List;Landroid/net/Uri;Ljava/io/OutputStream;)Lcom/google/android/gms/internal/recaptcha/j2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/n2;->c:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/recaptcha/v3;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/w8;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/OutputStream;

    invoke-interface {v1}, Lcom/google/android/gms/internal/recaptcha/v3;->c()Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/n2;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
