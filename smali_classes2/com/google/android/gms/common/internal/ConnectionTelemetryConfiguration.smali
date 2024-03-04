.class public Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:I

.field private final zzf:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/k1;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/k1;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;ZZ[II[I)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zza:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    iput-boolean p2, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzc:Z

    iput-object p4, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzd:[I

    iput p5, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zze:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzf:[I

    return-void
.end method


# virtual methods
.method public I()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zze:I

    return v0
.end method

.method public K()[I
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzd:[I

    return-object v0
.end method

.method public L()[I
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzf:[I

    return-object v0
.end method

.method public M()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzb:Z

    return v0
.end method

.method public P()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzc:Z

    return v0
.end method

.method public final R()Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zza:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lx3/a;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zza:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lx3/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->M()Z

    move-result p2

    const/4 v1, 0x2

    .line 4
    invoke-static {p1, v1, p2}, Lx3/a;->c(Landroid/os/Parcel;IZ)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->P()Z

    move-result p2

    const/4 v1, 0x3

    .line 6
    invoke-static {p1, v1, p2}, Lx3/a;->c(Landroid/os/Parcel;IZ)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->K()[I

    move-result-object p2

    const/4 v1, 0x4

    .line 8
    invoke-static {p1, v1, p2, v3}, Lx3/a;->l(Landroid/os/Parcel;I[IZ)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->I()I

    move-result p2

    const/4 v1, 0x5

    .line 10
    invoke-static {p1, v1, p2}, Lx3/a;->k(Landroid/os/Parcel;II)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->L()[I

    move-result-object p2

    const/4 v1, 0x6

    .line 12
    invoke-static {p1, v1, p2, v3}, Lx3/a;->l(Landroid/os/Parcel;I[IZ)V

    .line 13
    invoke-static {p1, v0}, Lx3/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
