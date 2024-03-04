.class public final synthetic Lt9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService;

.field public final synthetic b:Lcom/huawei/hms/push/RemoteMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService;Lcom/huawei/hms/push/RemoteMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/c;->a:Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService;

    iput-object p2, p0, Lt9/c;->b:Lcom/huawei/hms/push/RemoteMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lt9/c;->a:Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService;

    iget-object v1, p0, Lt9/c;->b:Lcom/huawei/hms/push/RemoteMessage;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService;->c(Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService;Lcom/huawei/hms/push/RemoteMessage;)V

    return-void
.end method
