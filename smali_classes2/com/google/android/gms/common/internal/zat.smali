.class public final Lcom/google/android/gms/common/internal/zat;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/zat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field private final zab:Landroid/accounts/Account;

.field private final zac:I

.field private final zad:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/n0;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/n0;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0
    .param p4    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/zat;->a:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zat;->zab:Landroid/accounts/Account;

    iput p3, p0, Lcom/google/android/gms/common/internal/zat;->zac:I

    iput-object p4, p0, Lcom/google/android/gms/common/internal/zat;->zad:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1
    .param p3    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zat;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lx3/a;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/internal/zat;->a:I

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v1}, Lx3/a;->k(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zat;->zab:Landroid/accounts/Account;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lx3/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget v1, p0, Lcom/google/android/gms/common/internal/zat;->zac:I

    const/4 v2, 0x3

    .line 4
    invoke-static {p1, v2, v1}, Lx3/a;->k(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zat;->zad:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const/4 v2, 0x4

    .line 5
    invoke-static {p1, v2, v1, p2, v3}, Lx3/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 6
    invoke-static {p1, v0}, Lx3/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
