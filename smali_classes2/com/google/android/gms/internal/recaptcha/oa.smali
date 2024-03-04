.class final Lcom/google/android/gms/internal/recaptcha/oa;
.super Lcom/google/android/gms/internal/recaptcha/pa;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/recaptcha/ma;Ljava/lang/Character;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/pa;-><init>(Lcom/google/android/gms/internal/recaptcha/ma;Ljava/lang/Character;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/ma;->d(Lcom/google/android/gms/internal/recaptcha/ma;)[C

    move-result-object p1

    .line 2
    array-length p1, p1

    const/16 p2, 0x40

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/z7;->e(Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/ma;

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/ma;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/internal/recaptcha/oa;-><init>(Lcom/google/android/gms/internal/recaptcha/ma;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Appendable;[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length p3, p2

    const/4 v0, 0x0

    invoke-static {v0, p4, p3}, Lcom/google/android/gms/internal/recaptcha/z7;->h(III)V

    move p3, p4

    :goto_0
    const/4 v1, 0x3

    if-lt p3, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v2, 0x1

    .line 2
    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p2, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/pa;->f:Lcom/google/android/gms/internal/recaptcha/ma;

    ushr-int/lit8 v2, v0, 0x12

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/recaptcha/ma;->a(I)C

    move-result v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/pa;->f:Lcom/google/android/gms/internal/recaptcha/ma;

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/recaptcha/ma;->a(I)C

    move-result v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/pa;->f:Lcom/google/android/gms/internal/recaptcha/ma;

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/recaptcha/ma;->a(I)C

    move-result v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/pa;->f:Lcom/google/android/gms/internal/recaptcha/ma;

    and-int/lit8 v0, v0, 0x3f

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/recaptcha/ma;->a(I)C

    move-result v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p3, p3, -0x3

    move v0, v3

    goto :goto_0

    :cond_0
    if-ge v0, p4, :cond_1

    sub-int/2addr p4, v0

    .line 7
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/android/gms/internal/recaptcha/pa;->g(Ljava/lang/Appendable;[BII)V

    :cond_1
    return-void
.end method

.method final f(Lcom/google/android/gms/internal/recaptcha/ma;Ljava/lang/Character;)Lcom/google/android/gms/internal/recaptcha/qa;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/oa;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/oa;-><init>(Lcom/google/android/gms/internal/recaptcha/ma;Ljava/lang/Character;)V

    return-object v0
.end method
