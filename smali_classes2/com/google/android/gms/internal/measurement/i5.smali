.class public final Lcom/google/android/gms/internal/measurement/i5;
.super Lcom/google/android/gms/internal/measurement/x8;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/aa;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/i5;


# instance fields
.field private zze:Lcom/google/android/gms/internal/measurement/d9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/i5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/i5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/i5;->zza:Lcom/google/android/gms/internal/measurement/i5;

    const-class v1, Lcom/google/android/gms/internal/measurement/i5;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/x8;->r(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/x8;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/x8;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x8;->n()Lcom/google/android/gms/internal/measurement/d9;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/i5;->zze:Lcom/google/android/gms/internal/measurement/d9;

    return-void
.end method

.method static synthetic x()Lcom/google/android/gms/internal/measurement/i5;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/i5;->zza:Lcom/google/android/gms/internal/measurement/i5;

    return-object v0
.end method

.method public static y()Lcom/google/android/gms/internal/measurement/i5;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/i5;->zza:Lcom/google/android/gms/internal/measurement/i5;

    return-object v0
.end method


# virtual methods
.method protected final v(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/i5;->zza:Lcom/google/android/gms/internal/measurement/i5;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/h5;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/h5;-><init>(Lcom/google/android/gms/internal/measurement/g5;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/i5;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/i5;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zze"

    aput-object v0, p1, p3

    .line 6
    const-class p3, Lcom/google/android/gms/internal/measurement/k5;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/i5;->zza:Lcom/google/android/gms/internal/measurement/i5;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i5;->zze:Lcom/google/android/gms/internal/measurement/d9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final z()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i5;->zze:Lcom/google/android/gms/internal/measurement/d9;

    return-object v0
.end method
