.class final Lcom/google/android/gms/internal/measurement/db;
.super Lcom/google/android/gms/internal/measurement/bb;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/bb;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/cb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/cb;->a()I

    move-result p1

    return p1
.end method

.method final synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/cb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/cb;->b()I

    move-result p1

    return p1
.end method

.method final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/x8;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/x8;->zzc:Lcom/google/android/gms/internal/measurement/cb;

    return-object p1
.end method

.method final bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/cb;->c()Lcom/google/android/gms/internal/measurement/cb;

    move-result-object v0

    check-cast p2, Lcom/google/android/gms/internal/measurement/cb;

    .line 1
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/cb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/cb;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/cb;->d(Lcom/google/android/gms/internal/measurement/cb;Lcom/google/android/gms/internal/measurement/cb;)Lcom/google/android/gms/internal/measurement/cb;

    move-result-object p1

    return-object p1
.end method

.method final synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/cb;->e()Lcom/google/android/gms/internal/measurement/cb;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic f(Ljava/lang/Object;IJ)V
    .locals 0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    check-cast p1, Lcom/google/android/gms/internal/measurement/cb;

    shl-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/cb;->h(ILjava/lang/Object;)V

    return-void
.end method

.method final g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/x8;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/x8;->zzc:Lcom/google/android/gms/internal/measurement/cb;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/cb;->f()V

    return-void
.end method

.method final synthetic h(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/measurement/cb;

    check-cast p1, Lcom/google/android/gms/internal/measurement/x8;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/x8;->zzc:Lcom/google/android/gms/internal/measurement/cb;

    return-void
.end method

.method final synthetic i(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/sb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/measurement/cb;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/cb;->i(Lcom/google/android/gms/internal/measurement/sb;)V

    return-void
.end method
