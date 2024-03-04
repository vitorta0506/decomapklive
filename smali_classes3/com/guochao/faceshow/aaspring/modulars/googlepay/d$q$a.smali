.class Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q$a;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->a(Lcom/android/billingclient/api/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/e;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;Lcom/android/billingclient/api/e;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q$a;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q$a;->a:Lcom/android/billingclient/api/e;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 3
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q$a;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;

    iget v0, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->b:I

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q$a;->a:Lcom/android/billingclient/api/e;

    invoke-virtual {v1}, Lcom/android/billingclient/api/e;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isChina"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v2, "g_connect_error"

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q$a;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iget-boolean v1, p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->a:Z

    iget p1, p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->b:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->F(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;ZI)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
