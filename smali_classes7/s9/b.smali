.class public final synthetic Ls9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushService;

.field public final synthetic b:Lcom/google/firebase/messaging/RemoteMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushService;Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls9/b;->a:Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushService;

    iput-object p2, p0, Ls9/b;->b:Lcom/google/firebase/messaging/RemoteMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ls9/b;->a:Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushService;

    iget-object v1, p0, Ls9/b;->b:Lcom/google/firebase/messaging/RemoteMessage;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushService;->c(Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushService;Lcom/google/firebase/messaging/RemoteMessage;)V

    return-void
.end method
