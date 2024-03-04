.class public final Lcom/google/android/gms/internal/recaptcha/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/zg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/zg<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/recaptcha/zzuh;Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/zzuh;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/zzuh;",
            "TK;",
            "Lcom/google/android/gms/internal/recaptcha/zzuh;",
            "TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/zg;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/recaptcha/zg;-><init>(Lcom/google/android/gms/internal/recaptcha/zzuh;Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/zzuh;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ah;->a:Lcom/google/android/gms/internal/recaptcha/zg;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/ah;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/recaptcha/ah;->c:Ljava/lang/Object;

    return-void
.end method

.method static b(Lcom/google/android/gms/internal/recaptcha/zg;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/zg<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/zg;->a:Lcom/google/android/gms/internal/recaptcha/zzuh;

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/recaptcha/uf;->a(Lcom/google/android/gms/internal/recaptcha/zzuh;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/gms/internal/recaptcha/zg;->c:Lcom/google/android/gms/internal/recaptcha/zzuh;

    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/recaptcha/uf;->a(Lcom/google/android/gms/internal/recaptcha/zzuh;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static d(Lcom/google/android/gms/internal/recaptcha/zzuh;Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/zzuh;Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/ah;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/zzuh;",
            "TK;",
            "Lcom/google/android/gms/internal/recaptcha/zzuh;",
            "TV;)",
            "Lcom/google/android/gms/internal/recaptcha/ah<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/ah;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/recaptcha/ah;-><init>(Lcom/google/android/gms/internal/recaptcha/zzuh;Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/zzuh;Ljava/lang/Object;)V

    return-object v0
.end method

.method static e(Lcom/google/android/gms/internal/recaptcha/hf;Lcom/google/android/gms/internal/recaptcha/zg;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/hf;",
            "Lcom/google/android/gms/internal/recaptcha/zg<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/recaptcha/zg;->a:Lcom/google/android/gms/internal/recaptcha/zzuh;

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1, p2}, Lcom/google/android/gms/internal/recaptcha/uf;->e(Lcom/google/android/gms/internal/recaptcha/hf;Lcom/google/android/gms/internal/recaptcha/zzuh;ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/recaptcha/zg;->c:Lcom/google/android/gms/internal/recaptcha/zzuh;

    const/4 p2, 0x2

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/recaptcha/uf;->e(Lcom/google/android/gms/internal/recaptcha/hf;Lcom/google/android/gms/internal/recaptcha/zzuh;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ah;->a:Lcom/google/android/gms/internal/recaptcha/zg;

    .line 2
    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/recaptcha/ah;->b(Lcom/google/android/gms/internal/recaptcha/zg;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result p3

    add-int/2addr p3, p2

    add-int/2addr p1, p3

    return p1
.end method

.method final c()Lcom/google/android/gms/internal/recaptcha/zg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/zg<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ah;->a:Lcom/google/android/gms/internal/recaptcha/zg;

    return-object v0
.end method
