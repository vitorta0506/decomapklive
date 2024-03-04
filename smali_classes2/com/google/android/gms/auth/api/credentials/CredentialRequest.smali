.class public final Lcom/google/android/gms/auth/api/credentials/CredentialRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/credentials/CredentialRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field private final zbb:Z

.field private final zbc:[Ljava/lang/String;

.field private final zbd:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

.field private final zbe:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

.field private final zbf:Z

.field private final zbg:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zbh:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zbi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZ[Ljava/lang/String;Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p4    # Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
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

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->a:I

    iput-boolean p2, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbb:Z

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbc:[Ljava/lang/String;

    if-nez p4, :cond_0

    new-instance p2, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;

    invoke-direct {p2}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;->a()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object p4

    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbd:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    if-nez p5, :cond_1

    new-instance p2, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;

    invoke-direct {p2}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;-><init>()V

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;->a()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object p5

    :cond_1
    iput-object p5, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbe:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    const/4 p2, 0x3

    if-ge p1, p2, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbf:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbg:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbh:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-boolean p6, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbf:Z

    iput-object p7, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbg:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbh:Ljava/lang/String;

    :goto_0
    iput-boolean p9, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbi:Z

    return-void
.end method


# virtual methods
.method public I()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbc:[Ljava/lang/String;

    return-object v0
.end method

.method public K()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbe:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-object v0
.end method

.method public L()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbd:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbh:Ljava/lang/String;

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbg:Ljava/lang/String;

    return-object v0
.end method

.method public R()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbf:Z

    return v0
.end method

.method public c0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbb:Z

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

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->c0()Z

    move-result v1

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v1}, Lx3/a;->c(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->I()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, Lx3/a;->r(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->L()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object v1

    const/4 v2, 0x3

    .line 4
    invoke-static {p1, v2, v1, p2, v3}, Lx3/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->K()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object v1

    const/4 v2, 0x4

    .line 5
    invoke-static {p1, v2, v1, p2, v3}, Lx3/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->R()Z

    move-result p2

    const/4 v1, 0x5

    .line 6
    invoke-static {p1, v1, p2}, Lx3/a;->c(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->P()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x6

    .line 7
    invoke-static {p1, v1, p2, v3}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->M()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x7

    .line 8
    invoke-static {p1, v1, p2, v3}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean p2, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zbi:Z

    const/16 v1, 0x8

    .line 9
    invoke-static {p1, v1, p2}, Lx3/a;->c(Landroid/os/Parcel;IZ)V

    iget p2, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->a:I

    const/16 v1, 0x3e8

    .line 10
    invoke-static {p1, v1, p2}, Lx3/a;->k(Landroid/os/Parcel;II)V

    .line 11
    invoke-static {p1, v0}, Lx3/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
