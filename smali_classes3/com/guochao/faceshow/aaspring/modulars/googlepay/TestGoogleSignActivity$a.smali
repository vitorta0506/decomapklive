.class Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;->i0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 9

    .line 1
    invoke-static {}, Lu7/c;->c()Lu7/c;

    move-result-object v0

    invoke-virtual {v0}, Lu7/c;->d()Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;

    const-string v0, "\u672c\u5730\u51ed\u8bc1\u662f\u7a7a\u7684\uff0c\u53ea\u80fd\u63d2\u5165\u4e00\u4e2a\u4e0d\u91cd\u590d\u7684"

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    sget-object p2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->u:Ljava/lang/String;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$a;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "googlePlay"

    .line 6
    invoke-static {v1, p2, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p2, :cond_1

    .line 7
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 8
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;-><init>()V

    const-string v2, "0"

    .line 9
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->setSignture(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->setSigntureData(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->setUserId(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->setTimeStamp(J)V

    const/4 v2, 0x0

    .line 13
    invoke-virtual {p2, v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 14
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->u:Ljava/lang/String;

    invoke-static {v1, v0, p2}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {}, Lu7/c;->c()Lu7/c;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;-><init>()V

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Lu7/a;->b(Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 16
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;)V

    .line 17
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
