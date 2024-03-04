.class public final Lcom/google/android/gms/auth/api/credentials/HintRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


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
            "Lcom/google/android/gms/auth/api/credentials/HintRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field private final zbb:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

.field private final zbc:Z

.field private final zbd:Z

.field private final zbe:[Ljava/lang/String;

.field private final zbf:Z

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

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;ZZ[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
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

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->a:I

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zbb:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    iput-boolean p3, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zbc:Z

    iput-boolean p4, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zbd:Z

    .line 3
    invoke-static {p5}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zbe:[Ljava/lang/String;

    const/4 p2, 0x2

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zbf:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zbg:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zbh:Ljava/lang/String;

    return-void

    :cond_0
    iput-boolean p6, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zbf:Z

    iput-object p7, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zbg:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zbh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public I()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zbe:[Ljava/lang/String;

    return-object v0
.end method

.method public K()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zbb:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zbh:Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zbg:Ljava/lang/String;

    return-object v0
.end method

.method public P()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zbc:Z

    return v0
.end method

.method public R()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zbf:Z

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

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/HintRequest;->K()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lx3/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/HintRequest;->P()Z

    move-result p2

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1, p2}, Lx3/a;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zbd:Z

    const/4 v1, 0x3

    .line 4
    invoke-static {p1, v1, p2}, Lx3/a;->c(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/HintRequest;->I()[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x4

    .line 5
    invoke-static {p1, v1, p2, v3}, Lx3/a;->r(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/HintRequest;->R()Z

    move-result p2

    const/4 v1, 0x5

    .line 6
    invoke-static {p1, v1, p2}, Lx3/a;->c(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/HintRequest;->M()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x6

    .line 7
    invoke-static {p1, v1, p2, v3}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/HintRequest;->L()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x7

    .line 8
    invoke-static {p1, v1, p2, v3}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget p2, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->a:I

    const/16 v1, 0x3e8

    .line 9
    invoke-static {p1, v1, p2}, Lx3/a;->k(Landroid/os/Parcel;II)V

    .line 10
    invoke-static {p1, v0}, Lx3/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
