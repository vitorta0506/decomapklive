.class public Lcom/google/android/gms/auth/api/proxy/ProxyResponse;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/proxy/ProxyResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_CODE_NO_CONNECTION:I = -0x1


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field public final body:[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final googlePlayServicesStatusCode:I

.field public final recoveryAction:Landroid/app/PendingIntent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/proxy/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/proxy/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILandroid/app/PendingIntent;ILandroid/os/Bundle;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->a:I

    iput p2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->googlePlayServicesStatusCode:I

    iput p4, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->statusCode:I

    iput-object p5, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->b:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->body:[B

    iput-object p3, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->recoveryAction:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lx3/a;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->googlePlayServicesStatusCode:I

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v1}, Lx3/a;->k(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->recoveryAction:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lx3/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget p2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->statusCode:I

    const/4 v1, 0x3

    .line 4
    invoke-static {p1, v1, p2}, Lx3/a;->k(Landroid/os/Parcel;II)V

    iget-object p2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->b:Landroid/os/Bundle;

    const/4 v1, 0x4

    .line 5
    invoke-static {p1, v1, p2, v3}, Lx3/a;->e(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object p2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->body:[B

    const/4 v1, 0x5

    .line 6
    invoke-static {p1, v1, p2, v3}, Lx3/a;->f(Landroid/os/Parcel;I[BZ)V

    iget p2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->a:I

    const/16 v1, 0x3e8

    .line 7
    invoke-static {p1, v1, p2}, Lx3/a;->k(Landroid/os/Parcel;II)V

    .line 8
    invoke-static {p1, v0}, Lx3/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
