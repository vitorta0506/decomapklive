.class public final Lcom/google/android/gms/recaptcha/RecaptchaActionType;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/recaptcha/RecaptchaActionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOGIN:Ljava/lang/String; = "login"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final OTHER:Ljava/lang/String; = "other"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final SIGNUP:Ljava/lang/String; = "signup"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/recaptcha/f;

    invoke-direct {v0}, Lcom/google/android/gms/recaptcha/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/recaptcha/RecaptchaActionType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/recaptcha/RecaptchaActionType;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lx3/a;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/recaptcha/RecaptchaActionType;->a:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, v0, v2}, Lx3/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 3
    invoke-static {p1, p2}, Lx3/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
