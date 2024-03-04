.class public final Lcom/google/android/gms/auth/api/identity/SignInCredential;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/identity/SignInCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zba:Ljava/lang/String;

.field private final zbb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zbc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zbd:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zbe:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zbf:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zbg:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zbh:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq3/d;

    invoke-direct {v0}, Lq3/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/p;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zba:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbe:Landroid/net/Uri;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbf:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbg:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public I()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbb:Ljava/lang/String;

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbd:Ljava/lang/String;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbc:Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbg:Ljava/lang/String;

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zba:Ljava/lang/String;

    return-object v0
.end method

.method public R()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbf:Ljava/lang/String;

    return-object v0
.end method

.method public c0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbh:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/auth/api/identity/SignInCredential;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/android/gms/auth/api/identity/SignInCredential;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zba:Ljava/lang/String;

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zba:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbb:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbb:Ljava/lang/String;

    .line 4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbc:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbc:Ljava/lang/String;

    .line 5
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbd:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbd:Ljava/lang/String;

    .line 6
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbe:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbe:Landroid/net/Uri;

    .line 7
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbf:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbf:Ljava/lang/String;

    .line 8
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbg:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbg:Ljava/lang/String;

    .line 9
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbh:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbh:Ljava/lang/String;

    .line 10
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public f0()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbe:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zba:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbb:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbc:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbd:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbe:Landroid/net/Uri;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbf:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbg:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/SignInCredential;->zbh:Ljava/lang/String;

    const/4 v2, 0x7

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

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->P()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, v3}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->I()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, v2, v1, v3}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->L()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 4
    invoke-static {p1, v2, v1, v3}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->K()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 5
    invoke-static {p1, v2, v1, v3}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->f0()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    .line 6
    invoke-static {p1, v2, v1, p2, v3}, Lx3/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->R()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x6

    .line 7
    invoke-static {p1, v1, p2, v3}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->M()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x7

    .line 8
    invoke-static {p1, v1, p2, v3}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->c0()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x8

    .line 9
    invoke-static {p1, v1, p2, v3}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    invoke-static {p1, v0}, Lx3/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
