.class public final enum Lcom/google/android/gms/internal/recaptcha/zzwa;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/fg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/recaptcha/zzwa;",
        ">;",
        "Lcom/google/android/gms/internal/recaptcha/fg;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/recaptcha/zzwa;

.field public static final enum zzb:Lcom/google/android/gms/internal/recaptcha/zzwa;

.field public static final enum zzc:Lcom/google/android/gms/internal/recaptcha/zzwa;

.field public static final enum zzd:Lcom/google/android/gms/internal/recaptcha/zzwa;

.field private static final zze:Lcom/google/android/gms/internal/recaptcha/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/gg<",
            "Lcom/google/android/gms/internal/recaptcha/zzwa;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/recaptcha/zzwa;


# instance fields
.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/zzwa;

    const-string v1, "ARM7"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 1
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/recaptcha/zzwa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/zzwa;->zza:Lcom/google/android/gms/internal/recaptcha/zzwa;

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/zzwa;

    const-string v4, "X86"

    const/4 v5, 0x1

    const/4 v6, 0x4

    .line 2
    invoke-direct {v1, v4, v5, v6}, Lcom/google/android/gms/internal/recaptcha/zzwa;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/recaptcha/zzwa;->zzb:Lcom/google/android/gms/internal/recaptcha/zzwa;

    new-instance v4, Lcom/google/android/gms/internal/recaptcha/zzwa;

    const-string v7, "ARM64"

    const/4 v8, 0x5

    .line 3
    invoke-direct {v4, v7, v3, v8}, Lcom/google/android/gms/internal/recaptcha/zzwa;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/recaptcha/zzwa;->zzc:Lcom/google/android/gms/internal/recaptcha/zzwa;

    new-instance v7, Lcom/google/android/gms/internal/recaptcha/zzwa;

    const-string v8, "X86_64"

    const/4 v9, 0x3

    const/4 v10, 0x6

    .line 4
    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/gms/internal/recaptcha/zzwa;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/recaptcha/zzwa;->zzd:Lcom/google/android/gms/internal/recaptcha/zzwa;

    new-array v6, v6, [Lcom/google/android/gms/internal/recaptcha/zzwa;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v3

    aput-object v7, v6, v9

    sput-object v6, Lcom/google/android/gms/internal/recaptcha/zzwa;->zzf:[Lcom/google/android/gms/internal/recaptcha/zzwa;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/kk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/kk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/zzwa;->zze:Lcom/google/android/gms/internal/recaptcha/gg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/recaptcha/zzwa;->zzg:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/recaptcha/zzwa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/zzwa;->zzf:[Lcom/google/android/gms/internal/recaptcha/zzwa;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/recaptcha/zzwa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/recaptcha/zzwa;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/recaptcha/hg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/lk;->a:Lcom/google/android/gms/internal/recaptcha/hg;

    return-object v0
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/recaptcha/zzwa;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/recaptcha/zzwa;->zzd:Lcom/google/android/gms/internal/recaptcha/zzwa;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/recaptcha/zzwa;->zzc:Lcom/google/android/gms/internal/recaptcha/zzwa;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/recaptcha/zzwa;->zzb:Lcom/google/android/gms/internal/recaptcha/zzwa;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/recaptcha/zzwa;->zza:Lcom/google/android/gms/internal/recaptcha/zzwa;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/internal/recaptcha/zzwa;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/zzwa;->zzg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/zzwa;->zzg:I

    return v0
.end method
