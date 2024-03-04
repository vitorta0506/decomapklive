.class Lcom/guochao/faceshow/utils/PushUtils$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/utils/PushUtils;->showSuperLikeNotification(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/PushUtils$7;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/guochao/faceshow/utils/PushUtils$7;->val$data:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->b()Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/utils/PushUtils$7;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/guochao/faceshow/utils/PushUtils$7;->val$data:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->d(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method
