.class Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->c(Landroid/app/Activity;Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$c;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$c;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->a(Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;Ljava/lang/Exception;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
