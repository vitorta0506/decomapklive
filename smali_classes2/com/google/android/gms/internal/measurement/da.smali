.class final Lcom/google/android/gms/internal/measurement/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ka;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/z9;

.field private final b:Lcom/google/android/gms/internal/measurement/bb;

.field private final c:Z

.field private final d:Lcom/google/android/gms/internal/measurement/l8;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/bb;Lcom/google/android/gms/internal/measurement/l8;Lcom/google/android/gms/internal/measurement/z9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/da;->b:Lcom/google/android/gms/internal/measurement/bb;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/l8;->c(Lcom/google/android/gms/internal/measurement/z9;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/da;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/da;->d:Lcom/google/android/gms/internal/measurement/l8;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/da;->a:Lcom/google/android/gms/internal/measurement/z9;

    return-void
.end method

.method static i(Lcom/google/android/gms/internal/measurement/bb;Lcom/google/android/gms/internal/measurement/l8;Lcom/google/android/gms/internal/measurement/z9;)Lcom/google/android/gms/internal/measurement/da;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/da;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/da;-><init>(Lcom/google/android/gms/internal/measurement/bb;Lcom/google/android/gms/internal/measurement/l8;Lcom/google/android/gms/internal/measurement/z9;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->b:Lcom/google/android/gms/internal/measurement/bb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/bb;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/bb;->b(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/da;->c:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->d:Lcom/google/android/gms/internal/measurement/l8;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l8;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->b:Lcom/google/android/gms/internal/measurement/bb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/bb;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/da;->c:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->d:Lcom/google/android/gms/internal/measurement/l8;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l8;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->b:Lcom/google/android/gms/internal/measurement/bb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/bb;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->d:Lcom/google/android/gms/internal/measurement/l8;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l8;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/sb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/da;->d:Lcom/google/android/gms/internal/measurement/l8;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/l8;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->b:Lcom/google/android/gms/internal/measurement/bb;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ma;->f(Lcom/google/android/gms/internal/measurement/bb;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/da;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->d:Lcom/google/android/gms/internal/measurement/l8;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ma;->e(Lcom/google/android/gms/internal/measurement/l8;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->b:Lcom/google/android/gms/internal/measurement/bb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/bb;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->b:Lcom/google/android/gms/internal/measurement/bb;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/measurement/bb;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/da;->c:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->d:Lcom/google/android/gms/internal/measurement/l8;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l8;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/da;->d:Lcom/google/android/gms/internal/measurement/l8;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/l8;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final g(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->d:Lcom/google/android/gms/internal/measurement/l8;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l8;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final h(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/l7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/measurement/x8;

    iget-object p3, p2, Lcom/google/android/gms/internal/measurement/x8;->zzc:Lcom/google/android/gms/internal/measurement/cb;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/cb;->c()Lcom/google/android/gms/internal/measurement/cb;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cb;->e()Lcom/google/android/gms/internal/measurement/cb;

    move-result-object p3

    .line 3
    iput-object p3, p2, Lcom/google/android/gms/internal/measurement/x8;->zzc:Lcom/google/android/gms/internal/measurement/cb;

    .line 4
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/v8;

    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public final l()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->a:Lcom/google/android/gms/internal/measurement/z9;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/z9;->a()Lcom/google/android/gms/internal/measurement/y9;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/y9;->p0()Lcom/google/android/gms/internal/measurement/z9;

    move-result-object v0

    return-object v0
.end method
