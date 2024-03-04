.class Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt4/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->c(Landroid/app/Activity;Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt4/e<",
        "Lcom/google/android/gms/recaptcha/RecaptchaResultData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$d;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/recaptcha/RecaptchaResultData;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/recaptcha/RecaptchaResultData;->I()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;->b(Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reCAPTCHA response token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "executeRecaptcha"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/recaptcha/RecaptchaResultData;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$d;->a(Lcom/google/android/gms/recaptcha/RecaptchaResultData;)V

    return-void
.end method
