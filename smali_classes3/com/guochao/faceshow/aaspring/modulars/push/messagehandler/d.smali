.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;Landroid/content/Context;Ljava/util/Map;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/d;->a:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/d;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/d;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/d;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/d;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/d;->a:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/d;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/d;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/d;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;->a(Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;Landroid/content/Context;Ljava/util/Map;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method
