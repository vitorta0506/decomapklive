.class public Lcom/google/android/gms/recaptcha/RecaptchaHandle;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/recaptcha/RecaptchaHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/recaptcha/g;

    invoke-direct {v0}, Lcom/google/android/gms/recaptcha/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/recaptcha/RecaptchaHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/recaptcha/RecaptchaHandle;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/recaptcha/RecaptchaHandle;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/recaptcha/RecaptchaHandle;->zzc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public I()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/recaptcha/RecaptchaHandle;->zzc:Ljava/util/List;

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/recaptcha/RecaptchaHandle;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/recaptcha/RecaptchaHandle;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lx3/a;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/recaptcha/RecaptchaHandle;->L()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v0, v2}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/recaptcha/RecaptchaHandle;->K()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 5
    invoke-static {p1, v1, v0, v2}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/recaptcha/RecaptchaHandle;->I()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    .line 7
    invoke-static {p1, v1, v0, v2}, Lx3/a;->s(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 8
    invoke-static {p1, p2}, Lx3/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
