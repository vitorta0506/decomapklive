.class Lib/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Lcom/guochao/faceshow/aaspring/beans/FocusBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lhb/b;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lhb/b;)V
    .locals 0

    iput-object p1, p0, Lib/b$b;->a:Landroid/app/Activity;

    iput-object p2, p0, Lib/b$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lib/b$b;->c:Lhb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/aaspring/beans/FocusBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lib/b$b;->a:Landroid/app/Activity;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lib/b$b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/FocusBean;

    if-eqz p1, :cond_7

    .line 3
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/beans/FocusBean;->errorUserIds:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/FocusBean$ErrorUser;

    .line 5
    iget-object v2, p0, Lib/b$b;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/guochao/faceshow/aaspring/beans/FocusBean$ErrorUser;->errorUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/beans/FocusBean$ErrorUser;->errorCode:Ljava/lang/String;

    const-string v2, "-2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v2, 0x7f1203a1

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 8
    :cond_2
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/beans/FocusBean$ErrorUser;->errorCode:Ljava/lang/String;

    const-string v2, "-4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    const v3, 0x7f1203a2

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/FocusBean;->upperNum:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 10
    :cond_3
    iget-object p1, v1, Lcom/guochao/faceshow/aaspring/beans/FocusBean$ErrorUser;->errorCode:Ljava/lang/String;

    const-string v0, "-3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Lib/b$b;->b:Ljava/lang/String;

    invoke-static {p1}, Ly7/e;->e(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lib/b$b;->c:Lhb/b;

    if-eqz p1, :cond_4

    .line 13
    iget-object v0, p0, Lib/b$b;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lhb/b;->onResponse(Ljava/lang/Object;)V

    :cond_4
    return-void

    .line 14
    :cond_5
    iget-object p1, p0, Lib/b$b;->c:Lhb/b;

    if-eqz p1, :cond_6

    .line 15
    iget-object v0, p0, Lib/b$b;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lhb/b;->onFail(Ljava/lang/Object;)V

    :cond_6
    return-void

    .line 16
    :cond_7
    iget-object p1, p0, Lib/b$b;->b:Ljava/lang/String;

    invoke-static {p1}, Ly7/e;->e(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lib/b$b;->c:Lhb/b;

    if-eqz p1, :cond_8

    .line 18
    iget-object v0, p0, Lib/b$b;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lhb/b;->onResponse(Ljava/lang/Object;)V

    :cond_8
    :goto_0
    return-void
.end method
