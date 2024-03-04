.class final Lcom/google/android/gms/internal/recaptcha/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/sh;


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/bf;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/recaptcha/bf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/recaptcha/mg;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    iput-object p0, p1, Lcom/google/android/gms/internal/recaptcha/bf;->c:Lcom/google/android/gms/internal/recaptcha/cf;

    return-void
.end method

.method private final O(Lcom/google/android/gms/internal/recaptcha/zzuh;Ljava/lang/Class;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/zzuh;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/recaptcha/pf;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/zzuh;->zza:Lcom/google/android/gms/internal/recaptcha/zzuh;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->I()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->F()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->l()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->G()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->H()Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object p1

    return-object p1

    :pswitch_8
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ph;->a()Lcom/google/android/gms/internal/recaptcha/ph;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/recaptcha/ph;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/recaptcha/cf;->Q(Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->L()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->h()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->e()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->f()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->J()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->g()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->D()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->zza()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final P(Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/uh<",
            "TT;>;",
            "Lcom/google/android/gms/internal/recaptcha/pf;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->c:I

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->c:I

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/recaptcha/uh;->E()Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/recaptcha/uh;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/sh;Lcom/google/android/gms/internal/recaptcha/pf;)V

    .line 3
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/recaptcha/uh;->c(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    iget p2, p0, Lcom/google/android/gms/internal/recaptcha/cf;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->c:I

    return-object v1

    .line 5
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zzg()Lcom/google/android/gms/internal/recaptcha/zzrr;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->c:I

    .line 6
    throw p1
.end method

.method private final Q(Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/uh<",
            "TT;>;",
            "Lcom/google/android/gms/internal/recaptcha/pf;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    iget v2, v1, Lcom/google/android/gms/internal/recaptcha/bf;->a:I

    iget v3, v1, Lcom/google/android/gms/internal/recaptcha/bf;->b:I

    if-ge v2, v3, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/recaptcha/bf;->k(I)I

    move-result v0

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/recaptcha/uh;->E()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    iget v3, v2, Lcom/google/android/gms/internal/recaptcha/bf;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/recaptcha/bf;->a:I

    .line 4
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/recaptcha/uh;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/sh;Lcom/google/android/gms/internal/recaptcha/pf;)V

    .line 5
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/recaptcha/uh;->c(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/recaptcha/bf;->A(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    iget p2, p1, Lcom/google/android/gms/internal/recaptcha/bf;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/recaptcha/bf;->a:I

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/recaptcha/bf;->a(I)V

    return-object v1

    .line 8
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/zzrr;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    .line 9
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/recaptcha/zzrr;-><init>(Ljava/lang/String;)V

    .line 10
    throw p1
.end method

.method private final R(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zzj()Lcom/google/android/gms/internal/recaptcha/zzrr;

    move-result-object p1

    throw p1
.end method

.method private final S(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1
.end method

.method private static final T(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zzg()Lcom/google/android/gms/internal/recaptcha/zzrr;

    move-result-object p0

    throw p0
.end method

.method private static final U(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zzg()Lcom/google/android/gms/internal/recaptcha/zzrr;

    move-result-object p0

    throw p0
.end method

.method public static V(Lcom/google/android/gms/internal/recaptcha/bf;)Lcom/google/android/gms/internal/recaptcha/cf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/bf;->c:Lcom/google/android/gms/internal/recaptcha/cf;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/cf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/recaptcha/cf;-><init>(Lcom/google/android/gms/internal/recaptcha/bf;)V

    return-object v0
.end method


# virtual methods
.method public final A(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/vg;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/vg;

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/cf;->U(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->u()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vg;->f(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->u()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/vg;->f(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/cf;->U(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, v0

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    .line 18
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void
.end method

.method public final B(Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/uh<",
            "TT;>;",
            "Lcom/google/android/gms/internal/recaptcha/pf;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/cf;->Q(Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final C()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->c:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/recaptcha/bf;->d(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->i()F

    move-result v0

    return v0
.end method

.method public final E()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->c:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final F()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public final G()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v0

    return v0
.end method

.method public final H()Lcom/google/android/gms/internal/recaptcha/zzpy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->x()Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object v0

    return-object v0
.end method

.method public final I()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public final J()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final M(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/vg;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/vg;

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->v()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vg;->f(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/recaptcha/cf;->R(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->v()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/vg;->f(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->v()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/recaptcha/cf;->R(I)V

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void
.end method

.method public final N(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/qg;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/qg;

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->H()Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/recaptcha/qg;->h0(Lcom/google/android/gms/internal/recaptcha/zzpy;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->L()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->K()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    .line 9
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1
.end method

.method public final a()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->o()I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->m()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    return v0
.end method

.method public final d()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->p()I

    move-result v0

    return v0
.end method

.method public final e()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->n()I

    move-result v0

    return v0
.end method

.method public final g()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->c()Z

    move-result v0

    return v0
.end method

.method public final i(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/eg;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/eg;

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->l()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/eg;->e(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/recaptcha/cf;->R(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->l()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/eg;->e(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/recaptcha/cf;->R(I)V

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void
.end method

.method public final j(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/vg;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/vg;

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->t()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vg;->f(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/recaptcha/cf;->R(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/vg;->f(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->t()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/recaptcha/cf;->R(I)V

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void
.end method

.method public final k(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/jf;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/jf;

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/cf;->U(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->h()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/recaptcha/jf;->d(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->h()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/jf;->d(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/cf;->U(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, v0

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->h()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    .line 18
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->h()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void
.end method

.method public final l()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->l()I

    move-result v0

    return v0
.end method

.method public final m(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/recaptcha/zzpy;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->H()Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq v0, v1, :cond_0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1
.end method

.method public final n(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/eg;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/eg;

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/eg;->e(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/recaptcha/cf;->R(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/eg;->e(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/recaptcha/cf;->R(I)V

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void
.end method

.method public final o(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/eg;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/eg;

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->o()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/eg;->e(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result p1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/cf;->T(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->o()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/eg;->e(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    .line 14
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 15
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/cf;->T(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final p(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/eg;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/eg;

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->m()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/eg;->e(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result p1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/cf;->T(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->m()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/eg;->e(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    .line 14
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 15
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/cf;->T(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final q(Ljava/util/List;Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/recaptcha/uh<",
            "TT;>;",
            "Lcom/google/android/gms/internal/recaptcha/pf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/recaptcha/cf;->Q(Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1
.end method

.method public final r(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/vg;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/vg;

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/cf;->U(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->s()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vg;->f(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->s()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/vg;->f(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/cf;->U(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, v0

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->s()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    .line 18
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void
.end method

.method public final s(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/le;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/le;

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->c()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/le;->d(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/recaptcha/cf;->R(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->c()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/le;->d(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/recaptcha/cf;->R(I)V

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void
.end method

.method public final t(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/vf;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/vf;

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->i()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/vf;->d(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result p1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/cf;->T(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->i()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/vf;->d(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->i()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    .line 14
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 15
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/cf;->T(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->i()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final u(Ljava/util/List;Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/recaptcha/uh<",
            "TT;>;",
            "Lcom/google/android/gms/internal/recaptcha/pf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/recaptcha/cf;->P(Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1
.end method

.method public final v(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/vg;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/vg;

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->w()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vg;->f(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/recaptcha/cf;->R(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->w()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/vg;->f(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->w()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/recaptcha/cf;->R(I)V

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->w()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void
.end method

.method public final w(Ljava/util/Map;Lcom/google/android/gms/internal/recaptcha/zg;Lcom/google/android/gms/internal/recaptcha/pf;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/recaptcha/zg<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/recaptcha/pf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/recaptcha/bf;->k(I)I

    move-result v1

    iget-object v2, p2, Lcom/google/android/gms/internal/recaptcha/zg;->b:Ljava/lang/Object;

    iget-object v3, p2, Lcom/google/android/gms/internal/recaptcha/zg;->d:Ljava/lang/Object;

    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->E()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_5

    iget-object v5, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_3

    if-eq v4, v0, :cond_2

    .line 6
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->C()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/recaptcha/zzrr;

    .line 8
    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/recaptcha/zzrr;-><init>(Ljava/lang/String;)V

    throw v4

    .line 9
    :cond_2
    iget-object v4, p2, Lcom/google/android/gms/internal/recaptcha/zg;->c:Lcom/google/android/gms/internal/recaptcha/zzuh;

    iget-object v5, p2, Lcom/google/android/gms/internal/recaptcha/zg;->d:Ljava/lang/Object;

    .line 10
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 11
    invoke-direct {p0, v4, v5, p3}, Lcom/google/android/gms/internal/recaptcha/cf;->O(Lcom/google/android/gms/internal/recaptcha/zzuh;Ljava/lang/Class;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v4, p2, Lcom/google/android/gms/internal/recaptcha/zg;->a:Lcom/google/android/gms/internal/recaptcha/zzuh;

    const/4 v5, 0x0

    .line 12
    invoke-direct {p0, v4, v5, v5}, Lcom/google/android/gms/internal/recaptcha/cf;->O(Lcom/google/android/gms/internal/recaptcha/zzuh;Ljava/lang/Class;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/recaptcha/zzrq; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 13
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cf;->C()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/zzrr;

    .line 14
    invoke-direct {p1, v6}, Lcom/google/android/gms/internal/recaptcha/zzrr;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_5
    :goto_1
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 16
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/recaptcha/bf;->a(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 18
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/recaptcha/bf;->a(I)V

    .line 19
    throw p1
.end method

.method public final x(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/eg;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/eg;

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/eg;->e(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/recaptcha/cf;->R(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/eg;->e(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/recaptcha/cf;->R(I)V

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void
.end method

.method public final y(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/eg;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/eg;

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/eg;->e(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/recaptcha/cf;->R(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/eg;->e(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->r()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->j()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/recaptcha/cf;->R(I)V

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->q()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/cf;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->d:I

    return-void
.end method

.method public final z(Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/uh<",
            "TT;>;",
            "Lcom/google/android/gms/internal/recaptcha/pf;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/cf;->P(Lcom/google/android/gms/internal/recaptcha/uh;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/cf;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/cf;->a:Lcom/google/android/gms/internal/recaptcha/bf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/bf;->h()D

    move-result-wide v0

    return-wide v0
.end method
