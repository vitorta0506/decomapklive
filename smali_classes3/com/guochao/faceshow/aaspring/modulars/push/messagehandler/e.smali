.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;

.field public final synthetic e:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/e;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/e;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/e;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/e;->d:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/e;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/e;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/e;->c:Ljava/lang/Object;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/e;->d:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/e;->e:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;->b(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;Ljava/util/Map;)V

    return-void
.end method
