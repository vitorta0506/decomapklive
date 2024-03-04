.class public final Lcom/google/android/gms/internal/recaptcha/c3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/OutputStream;

.field private b:Lcom/google/android/gms/internal/recaptcha/h3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/w8;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/recaptcha/h3;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/h3;

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/c3;->b:Lcom/google/android/gms/internal/recaptcha/h3;

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/c3;->a:Ljava/io/OutputStream;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/c3;->b:Lcom/google/android/gms/internal/recaptcha/h3;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/c3;->a:Ljava/io/OutputStream;

    .line 2
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/c3;->b:Lcom/google/android/gms/internal/recaptcha/h3;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/h3;->a()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/zzew;

    const-string v1, "Cannot sync underlying stream"

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/recaptcha/zzew;-><init>(Ljava/lang/String;)V

    throw v0
.end method
