.class Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt4/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->e(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/modulars/login/utils/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt4/e<",
        "Lcom/google/android/gms/recaptcha/RecaptchaHandle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/h;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;Lcom/guochao/faceshow/aaspring/modulars/login/utils/h;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$b;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/recaptcha/RecaptchaHandle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/h;->b(Lcom/google/android/gms/recaptcha/RecaptchaHandle;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/recaptcha/RecaptchaHandle;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$b;->a(Lcom/google/android/gms/recaptcha/RecaptchaHandle;)V

    return-void
.end method
