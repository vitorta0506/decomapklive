.class Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;ILcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity$c;->a:Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    const v0, 0x7f1201e0

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity$c;->a:Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_1

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    :goto_1
    return-void
.end method
