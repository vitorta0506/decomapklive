.class public Lcom/google/android/gms/auth/api/proxy/ProxyRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/proxy/ProxyRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final HTTP_METHOD_DELETE:I

.field public static final HTTP_METHOD_GET:I

.field public static final HTTP_METHOD_HEAD:I

.field public static final HTTP_METHOD_OPTIONS:I

.field public static final HTTP_METHOD_PATCH:I

.field public static final HTTP_METHOD_POST:I

.field public static final HTTP_METHOD_PUT:I

.field public static final HTTP_METHOD_TRACE:I

.field public static final LAST_CODE:I

.field public static final VERSION_CODE:I = 0x2


# instance fields
.field final a:I

.field b:Landroid/os/Bundle;

.field public final body:[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final httpMethod:I

.field public final timeoutMillis:J

.field public final url:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/proxy/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/proxy/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->HTTP_METHOD_GET:I

    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->HTTP_METHOD_POST:I

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->HTTP_METHOD_PUT:I

    const/4 v0, 0x3

    sput v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->HTTP_METHOD_DELETE:I

    const/4 v0, 0x4

    sput v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->HTTP_METHOD_HEAD:I

    const/4 v0, 0x5

    sput v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->HTTP_METHOD_OPTIONS:I

    const/4 v0, 0x6

    sput v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->HTTP_METHOD_TRACE:I

    const/4 v0, 0x7

    sput v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->HTTP_METHOD_PATCH:I

    sput v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->LAST_CODE:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IJ[BLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->a:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->url:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->httpMethod:I

    iput-wide p4, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->timeoutMillis:J

    iput-object p6, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->body:[B

    iput-object p7, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->url:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->httpMethod:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProxyRequest[ url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", method: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lx3/a;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->url:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, v0, v2}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->httpMethod:I

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1, v0}, Lx3/a;->k(Landroid/os/Parcel;II)V

    iget-wide v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->timeoutMillis:J

    const/4 v3, 0x3

    .line 4
    invoke-static {p1, v3, v0, v1}, Lx3/a;->m(Landroid/os/Parcel;IJ)V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->body:[B

    const/4 v1, 0x4

    .line 5
    invoke-static {p1, v1, v0, v2}, Lx3/a;->f(Landroid/os/Parcel;I[BZ)V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->b:Landroid/os/Bundle;

    const/4 v1, 0x5

    .line 6
    invoke-static {p1, v1, v0, v2}, Lx3/a;->e(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->a:I

    const/16 v1, 0x3e8

    .line 7
    invoke-static {p1, v1, v0}, Lx3/a;->k(Landroid/os/Parcel;II)V

    .line 8
    invoke-static {p1, p2}, Lx3/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
