.class public final Lcom/google/android/gms/internal/measurement/b5;
.super Lcom/google/android/gms/internal/measurement/x8;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/aa;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/b5;


# instance fields
.field private zze:Lcom/google/android/gms/internal/measurement/c9;

.field private zzf:Lcom/google/android/gms/internal/measurement/c9;

.field private zzg:Lcom/google/android/gms/internal/measurement/d9;

.field private zzh:Lcom/google/android/gms/internal/measurement/d9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/b5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/b5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/b5;->zza:Lcom/google/android/gms/internal/measurement/b5;

    const-class v1, Lcom/google/android/gms/internal/measurement/b5;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/x8;->r(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/x8;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/x8;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x8;->l()Lcom/google/android/gms/internal/measurement/c9;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zze:Lcom/google/android/gms/internal/measurement/c9;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x8;->l()Lcom/google/android/gms/internal/measurement/c9;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzf:Lcom/google/android/gms/internal/measurement/c9;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x8;->n()Lcom/google/android/gms/internal/measurement/d9;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzg:Lcom/google/android/gms/internal/measurement/d9;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x8;->n()Lcom/google/android/gms/internal/measurement/d9;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzh:Lcom/google/android/gms/internal/measurement/d9;

    return-void
.end method

.method public static B()Lcom/google/android/gms/internal/measurement/a5;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/b5;->zza:Lcom/google/android/gms/internal/measurement/b5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x8;->s()Lcom/google/android/gms/internal/measurement/u8;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/a5;

    return-object v0
.end method

.method static synthetic C()Lcom/google/android/gms/internal/measurement/b5;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/b5;->zza:Lcom/google/android/gms/internal/measurement/b5;

    return-object v0
.end method

.method public static D()Lcom/google/android/gms/internal/measurement/b5;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/b5;->zza:Lcom/google/android/gms/internal/measurement/b5;

    return-object v0
.end method

.method static synthetic J(Lcom/google/android/gms/internal/measurement/b5;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zze:Lcom/google/android/gms/internal/measurement/c9;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/d9;->E()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x8;->m(Lcom/google/android/gms/internal/measurement/c9;)Lcom/google/android/gms/internal/measurement/c9;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zze:Lcom/google/android/gms/internal/measurement/c9;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/b5;->zze:Lcom/google/android/gms/internal/measurement/c9;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/i7;->h(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic K(Lcom/google/android/gms/internal/measurement/b5;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/x8;->l()Lcom/google/android/gms/internal/measurement/c9;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zze:Lcom/google/android/gms/internal/measurement/c9;

    return-void
.end method

.method static synthetic L(Lcom/google/android/gms/internal/measurement/b5;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzf:Lcom/google/android/gms/internal/measurement/c9;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/d9;->E()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x8;->m(Lcom/google/android/gms/internal/measurement/c9;)Lcom/google/android/gms/internal/measurement/c9;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzf:Lcom/google/android/gms/internal/measurement/c9;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzf:Lcom/google/android/gms/internal/measurement/c9;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/i7;->h(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic M(Lcom/google/android/gms/internal/measurement/b5;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/x8;->l()Lcom/google/android/gms/internal/measurement/c9;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzf:Lcom/google/android/gms/internal/measurement/c9;

    return-void
.end method

.method static synthetic N(Lcom/google/android/gms/internal/measurement/b5;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b5;->T()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzg:Lcom/google/android/gms/internal/measurement/d9;

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/i7;->h(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic O(Lcom/google/android/gms/internal/measurement/b5;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/x8;->n()Lcom/google/android/gms/internal/measurement/d9;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzg:Lcom/google/android/gms/internal/measurement/d9;

    return-void
.end method

.method static synthetic P(Lcom/google/android/gms/internal/measurement/b5;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b5;->T()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzg:Lcom/google/android/gms/internal/measurement/d9;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic Q(Lcom/google/android/gms/internal/measurement/b5;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b5;->U()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzh:Lcom/google/android/gms/internal/measurement/d9;

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/i7;->h(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic R(Lcom/google/android/gms/internal/measurement/b5;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/x8;->n()Lcom/google/android/gms/internal/measurement/d9;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzh:Lcom/google/android/gms/internal/measurement/d9;

    return-void
.end method

.method static synthetic S(Lcom/google/android/gms/internal/measurement/b5;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b5;->U()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzh:Lcom/google/android/gms/internal/measurement/d9;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private final T()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzg:Lcom/google/android/gms/internal/measurement/d9;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/d9;->E()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x8;->o(Lcom/google/android/gms/internal/measurement/d9;)Lcom/google/android/gms/internal/measurement/d9;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzg:Lcom/google/android/gms/internal/measurement/d9;

    :cond_0
    return-void
.end method

.method private final U()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzh:Lcom/google/android/gms/internal/measurement/d9;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/d9;->E()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x8;->o(Lcom/google/android/gms/internal/measurement/d9;)Lcom/google/android/gms/internal/measurement/d9;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzh:Lcom/google/android/gms/internal/measurement/d9;

    :cond_0
    return-void
.end method


# virtual methods
.method public final A(I)Lcom/google/android/gms/internal/measurement/j4;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzg:Lcom/google/android/gms/internal/measurement/d9;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/j4;

    return-object p1
.end method

.method public final E(I)Lcom/google/android/gms/internal/measurement/d5;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzh:Lcom/google/android/gms/internal/measurement/d9;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/d5;

    return-object p1
.end method

.method public final F()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzg:Lcom/google/android/gms/internal/measurement/d9;

    return-object v0
.end method

.method public final G()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzf:Lcom/google/android/gms/internal/measurement/c9;

    return-object v0
.end method

.method public final H()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzh:Lcom/google/android/gms/internal/measurement/d9;

    return-object v0
.end method

.method public final I()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zze:Lcom/google/android/gms/internal/measurement/c9;

    return-object v0
.end method

.method protected final v(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/b5;->zza:Lcom/google/android/gms/internal/measurement/b5;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/a5;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/a5;-><init>(Lcom/google/android/gms/internal/measurement/c4;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/b5;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/b5;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    .line 6
    const-class p2, Lcom/google/android/gms/internal/measurement/j4;

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-class p2, Lcom/google/android/gms/internal/measurement/d5;

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/measurement/b5;->zza:Lcom/google/android/gms/internal/measurement/b5;

    const-string p3, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/x8;->q(Lcom/google/android/gms/internal/measurement/z9;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final w()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzg:Lcom/google/android/gms/internal/measurement/d9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final x()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzf:Lcom/google/android/gms/internal/measurement/c9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final y()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zzh:Lcom/google/android/gms/internal/measurement/d9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final z()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->zze:Lcom/google/android/gms/internal/measurement/c9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
