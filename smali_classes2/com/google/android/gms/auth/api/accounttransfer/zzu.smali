.class public final Lcom/google/android/gms/auth/api/accounttransfer/zzu;
.super Lcom/google/android/gms/internal/auth/zzbz;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/accounttransfer/zzu;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field private zzd:Lcom/google/android/gms/auth/api/accounttransfer/zzw;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/accounttransfer/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/accounttransfer/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->zzc:Ljava/util/HashMap;

    const-class v1, Lcom/google/android/gms/auth/api/accounttransfer/zzw;

    const-string v2, "authenticatorInfo"

    const/4 v3, 0x2

    .line 2
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->I(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "signature"

    const/4 v2, 0x3

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->M(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package"

    const/4 v2, 0x4

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->M(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzbz;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    .line 2
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->a:Ljava/util/Set;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->b:I

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/auth/api/accounttransfer/zzw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzbz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->a:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->b:I

    iput-object p3, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->zzd:Lcom/google/android/gms/auth/api/accounttransfer/zzw;

    iput-object p4, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->zze:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->zzf:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->zzg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->zzc:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->R()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->zzf:Ljava/lang/String;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->R()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown SafeParcelable id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->zze:Ljava/lang/String;

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->zzd:Lcom/google/android/gms/auth/api/accounttransfer/zzw;

    return-object p1

    :cond_3
    iget p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->b:I

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected final d(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->R()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lx3/a;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->a:Ljava/util/Set;

    const/4 v2, 0x1

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->b:I

    .line 3
    invoke-static {p1, v2, v3}, Lx3/a;->k(Landroid/os/Parcel;II)V

    :cond_0
    const/4 v3, 0x2

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->zzd:Lcom/google/android/gms/auth/api/accounttransfer/zzw;

    .line 5
    invoke-static {p1, v3, v4, p2, v2}, Lx3/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_1
    const/4 p2, 0x3

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->zze:Ljava/lang/String;

    .line 7
    invoke-static {p1, p2, v3, v2}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_2
    const/4 p2, 0x4

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->zzf:Ljava/lang/String;

    .line 9
    invoke-static {p1, p2, v3, v2}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_3
    const/4 p2, 0x5

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzu;->zzg:Ljava/lang/String;

    .line 11
    invoke-static {p1, p2, v1, v2}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 12
    :cond_4
    invoke-static {p1, v0}, Lx3/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
