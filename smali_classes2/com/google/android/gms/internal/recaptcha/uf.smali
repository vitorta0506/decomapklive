.class final Lcom/google/android/gms/internal/recaptcha/uf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/recaptcha/tf<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Lcom/google/android/gms/internal/recaptcha/uf;


# instance fields
.field final a:Lcom/google/android/gms/internal/recaptcha/ei;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/ei<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/uf;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/recaptcha/uf;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/uf;->d:Lcom/google/android/gms/internal/recaptcha/uf;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/xh;

    const/16 v1, 0x10

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/recaptcha/xh;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/uf;->a:Lcom/google/android/gms/internal/recaptcha/ei;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/recaptcha/xh;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/recaptcha/xh;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/uf;->a:Lcom/google/android/gms/internal/recaptcha/ei;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/uf;->c()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/uf;->c()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/recaptcha/zzuh;ILjava/lang/Object;)I
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/hf;->k(I)I

    move-result p1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/zzuh;->zzj:Lcom/google/android/gms/internal/recaptcha/zzuh;

    if-ne p0, v0, :cond_0

    .line 3
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/gh;

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/mg;->i(Lcom/google/android/gms/internal/recaptcha/gh;)Z

    add-int/2addr p1, p1

    .line 4
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/zzui;->zza:Lcom/google/android/gms/internal/recaptcha/zzui;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    .line 5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v2, v0, v0

    const/16 p0, 0x3f

    shr-long/2addr v0, p0

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/recaptcha/hf;->m(J)I

    move-result v0

    goto/16 :goto_1

    .line 8
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int p2, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p2

    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v0

    goto/16 :goto_1

    .line 9
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    goto/16 :goto_0

    .line 10
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    goto/16 :goto_1

    .line 11
    :pswitch_4
    instance-of p0, p2, Lcom/google/android/gms/internal/recaptcha/fg;

    if-eqz p0, :cond_1

    .line 12
    check-cast p2, Lcom/google/android/gms/internal/recaptcha/fg;

    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/fg;->zza()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/hf;->e(I)I

    move-result v0

    goto/16 :goto_1

    .line 13
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/hf;->e(I)I

    move-result v0

    goto/16 :goto_1

    .line 14
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v0

    goto/16 :goto_1

    .line 15
    :pswitch_6
    instance-of p0, p2, Lcom/google/android/gms/internal/recaptcha/zzpy;

    if-eqz p0, :cond_2

    .line 16
    check-cast p2, Lcom/google/android/gms/internal/recaptcha/zzpy;

    invoke-static {p2}, Lcom/google/android/gms/internal/recaptcha/hf;->b(Lcom/google/android/gms/internal/recaptcha/zzpy;)I

    move-result v0

    goto/16 :goto_1

    .line 17
    :cond_2
    check-cast p2, [B

    invoke-static {p2}, Lcom/google/android/gms/internal/recaptcha/hf;->O([B)I

    move-result v0

    goto/16 :goto_1

    .line 18
    :pswitch_7
    instance-of p0, p2, Lcom/google/android/gms/internal/recaptcha/ng;

    if-eqz p0, :cond_3

    .line 19
    check-cast p2, Lcom/google/android/gms/internal/recaptcha/ng;

    invoke-static {p2}, Lcom/google/android/gms/internal/recaptcha/hf;->f(Lcom/google/android/gms/internal/recaptcha/og;)I

    move-result v0

    goto :goto_1

    .line 20
    :cond_3
    check-cast p2, Lcom/google/android/gms/internal/recaptcha/gh;

    invoke-static {p2}, Lcom/google/android/gms/internal/recaptcha/hf;->g(Lcom/google/android/gms/internal/recaptcha/gh;)I

    move-result v0

    goto :goto_1

    .line 21
    :pswitch_8
    check-cast p2, Lcom/google/android/gms/internal/recaptcha/gh;

    invoke-static {p2}, Lcom/google/android/gms/internal/recaptcha/hf;->d(Lcom/google/android/gms/internal/recaptcha/gh;)I

    move-result v0

    goto :goto_1

    .line 22
    :pswitch_9
    instance-of p0, p2, Lcom/google/android/gms/internal/recaptcha/zzpy;

    if-eqz p0, :cond_4

    .line 23
    check-cast p2, Lcom/google/android/gms/internal/recaptcha/zzpy;

    invoke-static {p2}, Lcom/google/android/gms/internal/recaptcha/hf;->b(Lcom/google/android/gms/internal/recaptcha/zzpy;)I

    move-result v0

    goto :goto_1

    .line 24
    :cond_4
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/recaptcha/hf;->j(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 25
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v0, 0x1

    goto :goto_1

    .line 26
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    goto :goto_1

    .line 27
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    goto :goto_0

    .line 28
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/hf;->e(I)I

    move-result v0

    goto :goto_1

    .line 29
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/recaptcha/hf;->m(J)I

    move-result v0

    goto :goto_1

    .line 30
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/recaptcha/hf;->m(J)I

    move-result v0

    goto :goto_1

    .line 31
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    goto :goto_1

    .line 32
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    :goto_0
    const/16 v0, 0x8

    :goto_1
    add-int/2addr p1, v0

    return p1

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
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()Lcom/google/android/gms/internal/recaptcha/uf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/recaptcha/tf<",
            "TT;>;>()",
            "Lcom/google/android/gms/internal/recaptcha/uf<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method static e(Lcom/google/android/gms/internal/recaptcha/hf;Lcom/google/android/gms/internal/recaptcha/zzuh;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/zzuh;->zzj:Lcom/google/android/gms/internal/recaptcha/zzuh;

    if-eq p1, v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/zzuh;->zza()I

    move-result v0

    .line 3
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/recaptcha/hf;->J(II)V

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/recaptcha/zzui;->zza:Lcom/google/android/gms/internal/recaptcha/zzui;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 5
    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long v0, p1, p1

    const/16 p3, 0x3f

    shr-long/2addr p1, p3

    xor-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/hf;->N(J)V

    return-void

    .line 6
    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int p2, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/hf;->L(I)V

    return-void

    .line 7
    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/hf;->C(J)V

    return-void

    .line 8
    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/hf;->A(I)V

    return-void

    .line 9
    :pswitch_4
    instance-of p1, p3, Lcom/google/android/gms/internal/recaptcha/fg;

    if-eqz p1, :cond_0

    .line 10
    check-cast p3, Lcom/google/android/gms/internal/recaptcha/fg;

    invoke-interface {p3}, Lcom/google/android/gms/internal/recaptcha/fg;->zza()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/hf;->E(I)V

    return-void

    .line 11
    :cond_0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/hf;->E(I)V

    return-void

    .line 12
    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/hf;->L(I)V

    return-void

    .line 13
    :pswitch_6
    instance-of p1, p3, Lcom/google/android/gms/internal/recaptcha/zzpy;

    if-eqz p1, :cond_1

    .line 14
    check-cast p3, Lcom/google/android/gms/internal/recaptcha/zzpy;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/recaptcha/hf;->y(Lcom/google/android/gms/internal/recaptcha/zzpy;)V

    return-void

    .line 15
    :cond_1
    check-cast p3, [B

    const/4 p1, 0x0

    .line 16
    array-length p2, p3

    .line 17
    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/internal/recaptcha/hf;->v([BII)V

    return-void

    .line 18
    :pswitch_7
    check-cast p3, Lcom/google/android/gms/internal/recaptcha/gh;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/recaptcha/hf;->G(Lcom/google/android/gms/internal/recaptcha/gh;)V

    return-void

    .line 19
    :pswitch_8
    check-cast p3, Lcom/google/android/gms/internal/recaptcha/gh;

    .line 20
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/recaptcha/gh;->a(Lcom/google/android/gms/internal/recaptcha/hf;)V

    return-void

    .line 21
    :pswitch_9
    instance-of p1, p3, Lcom/google/android/gms/internal/recaptcha/zzpy;

    if-eqz p1, :cond_2

    .line 22
    check-cast p3, Lcom/google/android/gms/internal/recaptcha/zzpy;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/recaptcha/hf;->y(Lcom/google/android/gms/internal/recaptcha/zzpy;)V

    return-void

    .line 23
    :cond_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/recaptcha/hf;->I(Ljava/lang/String;)V

    return-void

    .line 24
    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/hf;->t(B)V

    return-void

    .line 26
    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/hf;->A(I)V

    return-void

    .line 27
    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/hf;->C(J)V

    return-void

    .line 28
    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/hf;->E(I)V

    return-void

    .line 29
    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/hf;->N(J)V

    return-void

    .line 30
    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/hf;->N(J)V

    return-void

    .line 31
    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 32
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/hf;->A(I)V

    return-void

    .line 34
    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 35
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/hf;->C(J)V

    return-void

    .line 37
    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/recaptcha/gh;

    invoke-static {p3}, Lcom/google/android/gms/internal/recaptcha/mg;->i(Lcom/google/android/gms/internal/recaptcha/gh;)Z

    const/4 p1, 0x3

    .line 38
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/recaptcha/hf;->J(II)V

    .line 39
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/recaptcha/gh;->a(Lcom/google/android/gms/internal/recaptcha/hf;)V

    const/4 p1, 0x4

    .line 40
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/recaptcha/hf;->J(II)V

    return-void

    nop

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
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final f(Lcom/google/android/gms/internal/recaptcha/tf;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/recaptcha/tf;->D()Lcom/google/android/gms/internal/recaptcha/zzuh;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/mg;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/recaptcha/zzuh;->zza:Lcom/google/android/gms/internal/recaptcha/zzuh;

    sget-object v1, Lcom/google/android/gms/internal/recaptcha/zzui;->zza:Lcom/google/android/gms/internal/recaptcha/zzui;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzuh;->zzb()Lcom/google/android/gms/internal/recaptcha/zzui;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 4
    :pswitch_0
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/gh;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/ng;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 5
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/fg;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 6
    :pswitch_2
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/zzpy;

    if-nez v0, :cond_0

    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    goto :goto_1

    .line 7
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    .line 8
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 9
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    .line 10
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    .line 11
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    .line 12
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-void

    .line 13
    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 14
    invoke-interface {p0}, Lcom/google/android/gms/internal/recaptcha/tf;->zza()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 15
    invoke-interface {p0}, Lcom/google/android/gms/internal/recaptcha/tf;->D()Lcom/google/android/gms/internal/recaptcha/zzuh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zzuh;->zzb()Lcom/google/android/gms/internal/recaptcha/zzui;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x2

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    .line 17
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/uf;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/uf;->a:Lcom/google/android/gms/internal/recaptcha/ei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/ei;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/uf;->b:Z

    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/uf;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/uf;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/uf;->a:Lcom/google/android/gms/internal/recaptcha/ei;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/recaptcha/ei;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/uf;->a:Lcom/google/android/gms/internal/recaptcha/ei;

    .line 3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/recaptcha/ei;->g(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/recaptcha/tf;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/recaptcha/uf;->d(Lcom/google/android/gms/internal/recaptcha/tf;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/uf;->a:Lcom/google/android/gms/internal/recaptcha/ei;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/ei;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/recaptcha/tf;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/recaptcha/uf;->d(Lcom/google/android/gms/internal/recaptcha/tf;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/recaptcha/uf;->c:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/recaptcha/uf;->c:Z

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/internal/recaptcha/tf;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/recaptcha/tf;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/recaptcha/uf;->f(Lcom/google/android/gms/internal/recaptcha/tf;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/recaptcha/uf;->f(Lcom/google/android/gms/internal/recaptcha/tf;Ljava/lang/Object;)V

    .line 10
    :goto_1
    instance-of v0, p2, Lcom/google/android/gms/internal/recaptcha/ng;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/uf;->c:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/uf;->a:Lcom/google/android/gms/internal/recaptcha/ei;

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/ei;->e(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/uf;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/uf;

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/uf;->a:Lcom/google/android/gms/internal/recaptcha/ei;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/recaptcha/uf;->a:Lcom/google/android/gms/internal/recaptcha/ei;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/ei;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/uf;->a:Lcom/google/android/gms/internal/recaptcha/ei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/ei;->hashCode()I

    move-result v0

    return v0
.end method
