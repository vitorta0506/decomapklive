.class public final enum Lcom/google/android/gms/internal/recaptcha/zzvw;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/fg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/recaptcha/zzvw;",
        ">;",
        "Lcom/google/android/gms/internal/recaptcha/fg;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/recaptcha/zzvw;

.field public static final enum zzb:Lcom/google/android/gms/internal/recaptcha/zzvw;

.field public static final enum zzc:Lcom/google/android/gms/internal/recaptcha/zzvw;

.field public static final enum zzd:Lcom/google/android/gms/internal/recaptcha/zzvw;

.field public static final enum zze:Lcom/google/android/gms/internal/recaptcha/zzvw;

.field public static final enum zzf:Lcom/google/android/gms/internal/recaptcha/zzvw;

.field public static final enum zzg:Lcom/google/android/gms/internal/recaptcha/zzvw;

.field public static final enum zzh:Lcom/google/android/gms/internal/recaptcha/zzvw;

.field public static final enum zzi:Lcom/google/android/gms/internal/recaptcha/zzvw;

.field private static final zzj:Lcom/google/android/gms/internal/recaptcha/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/gg<",
            "Lcom/google/android/gms/internal/recaptcha/zzvw;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzk:[Lcom/google/android/gms/internal/recaptcha/zzvw;


# instance fields
.field private final zzl:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/zzvw;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/recaptcha/zzvw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/zzvw;->zza:Lcom/google/android/gms/internal/recaptcha/zzvw;

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/zzvw;

    const-string v3, "UNKNOWN"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/recaptcha/zzvw;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzb:Lcom/google/android/gms/internal/recaptcha/zzvw;

    new-instance v3, Lcom/google/android/gms/internal/recaptcha/zzvw;

    const-string v5, "CHALLENGE_EXPIRED"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/recaptcha/zzvw;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzc:Lcom/google/android/gms/internal/recaptcha/zzvw;

    new-instance v5, Lcom/google/android/gms/internal/recaptcha/zzvw;

    const-string v7, "INVALID_REQUEST_TOKEN"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/recaptcha/zzvw;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzd:Lcom/google/android/gms/internal/recaptcha/zzvw;

    new-instance v7, Lcom/google/android/gms/internal/recaptcha/zzvw;

    const-string v9, "INVALID_PIN"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/recaptcha/zzvw;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/recaptcha/zzvw;->zze:Lcom/google/android/gms/internal/recaptcha/zzvw;

    new-instance v9, Lcom/google/android/gms/internal/recaptcha/zzvw;

    const-string v11, "PIN_MISMATCH"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/recaptcha/zzvw;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzf:Lcom/google/android/gms/internal/recaptcha/zzvw;

    new-instance v11, Lcom/google/android/gms/internal/recaptcha/zzvw;

    const-string v13, "ATTEMPTS_EXHAUSTED"

    const/4 v14, 0x6

    .line 7
    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/recaptcha/zzvw;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzg:Lcom/google/android/gms/internal/recaptcha/zzvw;

    new-instance v13, Lcom/google/android/gms/internal/recaptcha/zzvw;

    const-string v15, "ABORTED"

    const/4 v14, 0x7

    const/16 v12, 0xa

    .line 8
    invoke-direct {v13, v15, v14, v12}, Lcom/google/android/gms/internal/recaptcha/zzvw;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzh:Lcom/google/android/gms/internal/recaptcha/zzvw;

    new-instance v12, Lcom/google/android/gms/internal/recaptcha/zzvw;

    const-string v15, "UNRECOGNIZED"

    const/16 v14, 0x8

    const/4 v10, -0x1

    .line 9
    invoke-direct {v12, v15, v14, v10}, Lcom/google/android/gms/internal/recaptcha/zzvw;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzi:Lcom/google/android/gms/internal/recaptcha/zzvw;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/google/android/gms/internal/recaptcha/zzvw;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    sput-object v10, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzk:[Lcom/google/android/gms/internal/recaptcha/zzvw;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/ik;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/ik;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzj:Lcom/google/android/gms/internal/recaptcha/gg;

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

    iput p3, p0, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzl:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/recaptcha/zzvw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzk:[Lcom/google/android/gms/internal/recaptcha/zzvw;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/recaptcha/zzvw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/recaptcha/zzvw;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/recaptcha/zzvw;
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzg:Lcom/google/android/gms/internal/recaptcha/zzvw;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzf:Lcom/google/android/gms/internal/recaptcha/zzvw;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/recaptcha/zzvw;->zze:Lcom/google/android/gms/internal/recaptcha/zzvw;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzd:Lcom/google/android/gms/internal/recaptcha/zzvw;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzc:Lcom/google/android/gms/internal/recaptcha/zzvw;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzb:Lcom/google/android/gms/internal/recaptcha/zzvw;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/recaptcha/zzvw;->zza:Lcom/google/android/gms/internal/recaptcha/zzvw;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzh:Lcom/google/android/gms/internal/recaptcha/zzvw;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/internal/recaptcha/zzvw;

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

    sget-object v1, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzi:Lcom/google/android/gms/internal/recaptcha/zzvw;

    if-eq p0, v1, :cond_0

    const-string v1, " number="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zzvw;->zza()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
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
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzi:Lcom/google/android/gms/internal/recaptcha/zzvw;

    if-eq p0, v0, :cond_0

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/zzvw;->zzl:I

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
