.class public final Lcom/google/android/gms/common/zzo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/zzo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:Landroid/content/Context;

.field private final zze:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/s;

    invoke-direct {v0}, Lcom/google/android/gms/common/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zzo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZZLandroid/os/IBinder;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/zzo;->zza:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/common/zzo;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/common/zzo;->zzc:Z

    invoke-static {p4}, Lh4/a$a;->f(Landroid/os/IBinder;)Lh4/a;

    move-result-object p1

    invoke-static {p1}, Lh4/b;->D0(Lh4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/common/zzo;->zzd:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/google/android/gms/common/zzo;->zze:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lx3/a;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/common/zzo;->zza:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, v0, v2}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/zzo;->zzb:Z

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1, v0}, Lx3/a;->c(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/zzo;->zzc:Z

    const/4 v1, 0x3

    .line 4
    invoke-static {p1, v1, v0}, Lx3/a;->c(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/common/zzo;->zzd:Landroid/content/Context;

    .line 5
    invoke-static {v0}, Lh4/b;->E0(Ljava/lang/Object;)Lh4/a;

    move-result-object v0

    const/4 v1, 0x4

    .line 6
    invoke-static {p1, v1, v0, v2}, Lx3/a;->j(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/zzo;->zze:Z

    const/4 v1, 0x5

    .line 7
    invoke-static {p1, v1, v0}, Lx3/a;->c(Landroid/os/Parcel;IZ)V

    .line 8
    invoke-static {p1, p2}, Lx3/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
