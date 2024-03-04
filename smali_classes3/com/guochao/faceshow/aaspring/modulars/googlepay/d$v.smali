.class Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->F0(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Lcom/android/billingclient/api/SkuDetails;",
        "Lcom/android/billingclient/api/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$v;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$v;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$v;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->f()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$v;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->p(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/d;->b()Lcom/android/billingclient/api/d$a;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/d$a;->b(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/d$a;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$v;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$v;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->i()Ljava/lang/String;

    move-result-object p1

    const-string v2, "subs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->c()Lb8/a;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getSended()I

    move-result p1

    if-nez p1, :cond_1

    .line 7
    invoke-static {}, Lcom/android/billingclient/api/d$b;->c()Lcom/android/billingclient/api/d$b$a;

    move-result-object p1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$v;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v2}, Lcom/android/billingclient/api/d$b$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/d$b$a;

    move-result-object p1

    const/4 v2, 0x1

    .line 9
    invoke-virtual {p1, v2}, Lcom/android/billingclient/api/d$b$a;->c(I)Lcom/android/billingclient/api/d$b$a;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/android/billingclient/api/d$b$a;->a()Lcom/android/billingclient/api/d$b;

    move-result-object p1

    .line 11
    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/d$a;->c(Lcom/android/billingclient/api/d$b;)Lcom/android/billingclient/api/d$a;

    .line 12
    :cond_1
    invoke-virtual {v1}, Lcom/android/billingclient/api/d$a;->a()Lcom/android/billingclient/api/d;

    move-result-object p1

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$v;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->q(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Lcom/android/billingclient/api/a;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/billingclient/api/a;->b(Landroid/app/Activity;Lcom/android/billingclient/api/d;)Lcom/android/billingclient/api/e;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$v;->a(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/e;

    move-result-object p1

    return-object p1
.end method
