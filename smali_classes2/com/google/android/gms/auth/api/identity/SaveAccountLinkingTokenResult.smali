.class public Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zba:Landroid/app/PendingIntent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq3/b;

    invoke-direct {v0}, Lq3/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenResult;->zba:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public I()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenResult;->zba:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenResult;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenResult;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenResult;->zba:Landroid/app/PendingIntent;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenResult;->zba:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenResult;->zba:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lx3/a;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenResult;->I()Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lx3/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    invoke-static {p1, v0}, Lx3/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
