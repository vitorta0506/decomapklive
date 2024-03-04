.class public final Lcom/google/android/gms/common/internal/zav;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/zav;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:Landroid/os/IBinder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zac:Lcom/google/android/gms/common/ConnectionResult;

.field private final zad:Z

.field private final zae:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/o0;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/o0;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zav;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/ConnectionResult;ZZ)V
    .locals 0
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/zav;->a:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zav;->b:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zav;->zac:Lcom/google/android/gms/common/ConnectionResult;

    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/zav;->zad:Z

    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/zav;->zae:Z

    return-void
.end method


# virtual methods
.method public final I()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zav;->zac:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method public final K()Lcom/google/android/gms/common/internal/i;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zav;->b:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/i$a;->f(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/common/internal/zav;

    if-nez v2, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Lcom/google/android/gms/common/internal/zav;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zav;->zac:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/zav;->zac:Lcom/google/android/gms/common/ConnectionResult;

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/ConnectionResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zav;->K()Lcom/google/android/gms/common/internal/i;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->K()Lcom/google/android/gms/common/internal/i;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lx3/a;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/internal/zav;->a:I

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v1}, Lx3/a;->k(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zav;->b:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, Lx3/a;->j(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zav;->zac:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x3

    .line 4
    invoke-static {p1, v2, v1, p2, v3}, Lx3/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/zav;->zad:Z

    const/4 v1, 0x4

    .line 5
    invoke-static {p1, v1, p2}, Lx3/a;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/zav;->zae:Z

    const/4 v1, 0x5

    .line 6
    invoke-static {p1, v1, p2}, Lx3/a;->c(Landroid/os/Parcel;IZ)V

    .line 7
    invoke-static {p1, v0}, Lx3/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
