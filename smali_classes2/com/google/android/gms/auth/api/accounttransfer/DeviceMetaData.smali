.class public Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field private zzb:Z

.field private zzc:J

.field private final zzd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/accounttransfer/e;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/accounttransfer/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZJZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;->a:I

    iput-boolean p2, p0, Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;->zzb:Z

    iput-wide p3, p0, Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;->zzc:J

    iput-boolean p5, p0, Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;->zzd:Z

    return-void
.end method


# virtual methods
.method public I()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;->zzc:J

    return-wide v0
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;->zzd:Z

    return v0
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;->zzb:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lx3/a;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;->a:I

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1, v0}, Lx3/a;->k(Landroid/os/Parcel;II)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;->L()Z

    move-result v0

    const/4 v1, 0x2

    .line 4
    invoke-static {p1, v1, v0}, Lx3/a;->c(Landroid/os/Parcel;IZ)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;->I()J

    move-result-wide v0

    const/4 v2, 0x3

    .line 6
    invoke-static {p1, v2, v0, v1}, Lx3/a;->m(Landroid/os/Parcel;IJ)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;->K()Z

    move-result v0

    const/4 v1, 0x4

    .line 8
    invoke-static {p1, v1, v0}, Lx3/a;->c(Landroid/os/Parcel;IZ)V

    .line 9
    invoke-static {p1, p2}, Lx3/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
