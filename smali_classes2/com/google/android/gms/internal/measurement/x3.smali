.class public final Lcom/google/android/gms/internal/measurement/x3;
.super Lcom/google/android/gms/internal/measurement/x8;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/aa;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/x3;


# instance fields
.field private zze:I

.field private zzf:J

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/measurement/d9;

.field private zzj:Lcom/google/android/gms/internal/measurement/d9;

.field private zzk:Lcom/google/android/gms/internal/measurement/d9;

.field private zzl:Ljava/lang/String;

.field private zzm:Z

.field private zzn:Lcom/google/android/gms/internal/measurement/d9;

.field private zzo:Lcom/google/android/gms/internal/measurement/d9;

.field private zzp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/x3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/x3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/x3;->zza:Lcom/google/android/gms/internal/measurement/x3;

    const-class v1, Lcom/google/android/gms/internal/measurement/x3;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/x8;->r(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/x8;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/x8;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzg:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x8;->n()Lcom/google/android/gms/internal/measurement/d9;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/x3;->zzi:Lcom/google/android/gms/internal/measurement/d9;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x8;->n()Lcom/google/android/gms/internal/measurement/d9;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/x3;->zzj:Lcom/google/android/gms/internal/measurement/d9;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x8;->n()Lcom/google/android/gms/internal/measurement/d9;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/x3;->zzk:Lcom/google/android/gms/internal/measurement/d9;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzl:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x8;->n()Lcom/google/android/gms/internal/measurement/d9;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/x3;->zzn:Lcom/google/android/gms/internal/measurement/d9;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x8;->n()Lcom/google/android/gms/internal/measurement/d9;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/x3;->zzo:Lcom/google/android/gms/internal/measurement/d9;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzp:Ljava/lang/String;

    return-void
.end method

.method public static A()Lcom/google/android/gms/internal/measurement/w3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/x3;->zza:Lcom/google/android/gms/internal/measurement/x3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x8;->s()Lcom/google/android/gms/internal/measurement/u8;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/w3;

    return-object v0
.end method

.method static synthetic B()Lcom/google/android/gms/internal/measurement/x3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/x3;->zza:Lcom/google/android/gms/internal/measurement/x3;

    return-object v0
.end method

.method public static C()Lcom/google/android/gms/internal/measurement/x3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/x3;->zza:Lcom/google/android/gms/internal/measurement/x3;

    return-object v0
.end method

.method static synthetic J(Lcom/google/android/gms/internal/measurement/x3;ILcom/google/android/gms/internal/measurement/v3;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzj:Lcom/google/android/gms/internal/measurement/d9;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/d9;->E()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x8;->o(Lcom/google/android/gms/internal/measurement/d9;)Lcom/google/android/gms/internal/measurement/d9;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzj:Lcom/google/android/gms/internal/measurement/d9;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzj:Lcom/google/android/gms/internal/measurement/d9;

    .line 4
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic K(Lcom/google/android/gms/internal/measurement/x3;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/x8;->n()Lcom/google/android/gms/internal/measurement/d9;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzk:Lcom/google/android/gms/internal/measurement/d9;

    return-void
.end method


# virtual methods
.method public final D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzp:Ljava/lang/String;

    return-object v0
.end method

.method public final F()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzk:Lcom/google/android/gms/internal/measurement/d9;

    return-object v0
.end method

.method public final G()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzo:Lcom/google/android/gms/internal/measurement/d9;

    return-object v0
.end method

.method public final H()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzn:Lcom/google/android/gms/internal/measurement/d9;

    return-object v0
.end method

.method public final I()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzi:Lcom/google/android/gms/internal/measurement/d9;

    return-object v0
.end method

.method public final L()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzm:Z

    return v0
.end method

.method public final M()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final N()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
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
    sget-object p1, Lcom/google/android/gms/internal/measurement/x3;->zza:Lcom/google/android/gms/internal/measurement/x3;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/w3;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/w3;-><init>(Lcom/google/android/gms/internal/measurement/q3;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/x3;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/x3;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x11

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    const-string p2, "zzi"

    aput-object p2, p1, v0

    .line 6
    const-class p2, Lcom/google/android/gms/internal/measurement/b4;

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lcom/google/android/gms/internal/measurement/v3;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lcom/google/android/gms/internal/measurement/z2;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-class p3, Lcom/google/android/gms/internal/measurement/m5;

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-class p3, Lcom/google/android/gms/internal/measurement/t3;

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzp"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/x3;->zza:Lcom/google/android/gms/internal/measurement/x3;

    const-string p3, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0005\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1004\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\u1008\u0003\u0008\u1007\u0004\t\u001b\n\u001b\u000b\u1008\u0005"

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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzn:Lcom/google/android/gms/internal/measurement/d9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final x()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzj:Lcom/google/android/gms/internal/measurement/d9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final y()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzf:J

    return-wide v0
.end method

.method public final z(I)Lcom/google/android/gms/internal/measurement/v3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzj:Lcom/google/android/gms/internal/measurement/d9;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/v3;

    return-object p1
.end method
