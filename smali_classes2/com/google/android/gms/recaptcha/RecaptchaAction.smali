.class public final Lcom/google/android/gms/recaptcha/RecaptchaAction;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/recaptcha/RecaptchaAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Lcom/google/android/gms/recaptcha/RecaptchaActionType;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Landroid/os/Bundle;

.field private final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/recaptcha/e;

    invoke-direct {v0}, Lcom/google/android/gms/recaptcha/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/recaptcha/RecaptchaAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/recaptcha/RecaptchaAction;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/recaptcha/RecaptchaAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/google/android/gms/recaptcha/RecaptchaAction;->I()Lcom/google/android/gms/recaptcha/RecaptchaActionType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/recaptcha/RecaptchaAction;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/recaptcha/RecaptchaAction;->K()Landroid/os/Bundle;

    move-result-object p1

    .line 1
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/gms/recaptcha/RecaptchaAction;-><init>(Lcom/google/android/gms/recaptcha/RecaptchaActionType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/recaptcha/RecaptchaActionType;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/recaptcha/RecaptchaActionType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, ""

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/google/android/gms/recaptcha/RecaptchaAction;-><init>(Lcom/google/android/gms/recaptcha/RecaptchaActionType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/recaptcha/RecaptchaActionType;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/recaptcha/RecaptchaAction;->zza:Lcom/google/android/gms/recaptcha/RecaptchaActionType;

    iput-object p2, p0, Lcom/google/android/gms/recaptcha/RecaptchaAction;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/recaptcha/RecaptchaAction;->zzc:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/recaptcha/RecaptchaAction;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public I()Lcom/google/android/gms/recaptcha/RecaptchaActionType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/recaptcha/RecaptchaAction;->zza:Lcom/google/android/gms/recaptcha/RecaptchaActionType;

    return-object v0
.end method

.method public K()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/recaptcha/RecaptchaAction;->zzc:Landroid/os/Bundle;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/recaptcha/RecaptchaAction;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/recaptcha/RecaptchaAction;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/recaptcha/RecaptchaAction;->zza:Lcom/google/android/gms/recaptcha/RecaptchaActionType;

    iget-object v0, v0, Lcom/google/android/gms/recaptcha/RecaptchaActionType;->a:Ljava/lang/String;

    const-string v1, "other"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/recaptcha/RecaptchaAction;->zzb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/recaptcha/RecaptchaAction;->zzb:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/recaptcha/RecaptchaAction;->zza:Lcom/google/android/gms/recaptcha/RecaptchaActionType;

    iget-object v0, v0, Lcom/google/android/gms/recaptcha/RecaptchaActionType;->a:Ljava/lang/String;

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

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/recaptcha/RecaptchaAction;->I()Lcom/google/android/gms/recaptcha/RecaptchaActionType;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lx3/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/recaptcha/RecaptchaAction;->L()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1, p2, v3}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/recaptcha/RecaptchaAction;->K()Landroid/os/Bundle;

    move-result-object p2

    const/4 v1, 0x3

    .line 4
    invoke-static {p1, v1, p2, v3}, Lx3/a;->e(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/recaptcha/RecaptchaAction;->M()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x4

    .line 5
    invoke-static {p1, v1, p2, v3}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 6
    invoke-static {p1, v0}, Lx3/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
