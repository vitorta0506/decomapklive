.class public final Lcom/google/android/gms/measurement/internal/zzac;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/zzac;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public zzb:Ljava/lang/String;

.field public zzc:Lcom/google/android/gms/measurement/internal/zzlc;

.field public zzd:J

.field public zze:Z

.field public zzf:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzg:Lcom/google/android/gms/measurement/internal/zzaw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public zzh:J

.field public zzi:Lcom/google/android/gms/measurement/internal/zzaw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzj:J

.field public final zzk:Lcom/google/android/gms/measurement/internal/zzaw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/d;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzac;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzac;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlc;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlc;

    .line 6
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzd:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzd:J

    .line 7
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzf:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzg:Lcom/google/android/gms/measurement/internal/zzaw;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzg:Lcom/google/android/gms/measurement/internal/zzaw;

    .line 10
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzh:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzh:J

    .line 11
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzi:Lcom/google/android/gms/measurement/internal/zzaw;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzi:Lcom/google/android/gms/measurement/internal/zzaw;

    .line 12
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzj:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzj:J

    .line 13
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzk:Lcom/google/android/gms/measurement/internal/zzaw;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzk:Lcom/google/android/gms/measurement/internal/zzaw;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzlc;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzaw;JLcom/google/android/gms/measurement/internal/zzaw;JLcom/google/android/gms/measurement/internal/zzaw;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/gms/measurement/internal/zzaw;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/google/android/gms/measurement/internal/zzaw;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/google/android/gms/measurement/internal/zzaw;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlc;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzd:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzf:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzg:Lcom/google/android/gms/measurement/internal/zzaw;

    iput-wide p9, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzh:J

    iput-object p11, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzi:Lcom/google/android/gms/measurement/internal/zzaw;

    iput-wide p12, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzj:J

    iput-object p14, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzk:Lcom/google/android/gms/measurement/internal/zzaw;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lx3/a;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, v3}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    const/4 v2, 0x3

    .line 3
    invoke-static {p1, v2, v1, v3}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlc;

    const/4 v2, 0x4

    .line 4
    invoke-static {p1, v2, v1, p2, v3}, Lx3/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzd:J

    const/4 v4, 0x5

    .line 5
    invoke-static {p1, v4, v1, v2}, Lx3/a;->m(Landroid/os/Parcel;IJ)V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    const/4 v2, 0x6

    .line 6
    invoke-static {p1, v2, v1}, Lx3/a;->c(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzf:Ljava/lang/String;

    const/4 v2, 0x7

    .line 7
    invoke-static {p1, v2, v1, v3}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzg:Lcom/google/android/gms/measurement/internal/zzaw;

    const/16 v2, 0x8

    .line 8
    invoke-static {p1, v2, v1, p2, v3}, Lx3/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzh:J

    const/16 v4, 0x9

    .line 9
    invoke-static {p1, v4, v1, v2}, Lx3/a;->m(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzi:Lcom/google/android/gms/measurement/internal/zzaw;

    const/16 v2, 0xa

    .line 10
    invoke-static {p1, v2, v1, p2, v3}, Lx3/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzj:J

    const/16 v4, 0xb

    .line 11
    invoke-static {p1, v4, v1, v2}, Lx3/a;->m(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzk:Lcom/google/android/gms/measurement/internal/zzaw;

    const/16 v2, 0xc

    .line 12
    invoke-static {p1, v2, v1, p2, v3}, Lx3/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 13
    invoke-static {p1, v0}, Lx3/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
