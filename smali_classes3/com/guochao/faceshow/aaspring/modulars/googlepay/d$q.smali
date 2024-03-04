.class Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->z0(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->a:Z

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/e;)V
    .locals 5
    .param p1    # Lcom/android/billingclient/api/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->f(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setup onBillingSetupFinished."

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->i(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Z)Z

    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->b()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->f(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setup success. result = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->s(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->A(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Z)Z

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->a:Z

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->B(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Z)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->C(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->C(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;

    .line 10
    invoke-interface {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;->onSetupResponse(Z)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->f(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Setup fail."

    invoke-static {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "code: %s, msg: %s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->A(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Z)Z

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->E(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;Lcom/android/billingclient/api/e;)V

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->isGoogleEnable(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;)V

    :cond_1
    return-void
.end method

.method public onBillingServiceDisconnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->f(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBillingServiceDisconnected"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->A(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Z)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->i(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Z)Z

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$q;)V

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->isGoogleEnable(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;)V

    return-void
.end method
