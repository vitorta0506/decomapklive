.class Lcom/guochao/faceshow/utils/PushUtils$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/utils/PushUtils;->receiveCustomMessage(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/PushUtils$6;->val$data:Ljava/util/Map;

    iput-object p2, p0, Lcom/guochao/faceshow/utils/PushUtils$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->b()Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/utils/PushUtils$6;->val$data:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->a(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/i;->a(Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/utils/PushUtils$6;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/guochao/faceshow/utils/PushUtils$6;->val$data:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/PushUtils;->access$000(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method
