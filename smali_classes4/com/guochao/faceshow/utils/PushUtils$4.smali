.class Lcom/guochao/faceshow/utils/PushUtils$4;
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
.field final synthetic val$addActivity:Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/PushUtils$4;->val$addActivity:Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/PushUtils$4;->val$addActivity:Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;->addActivityCache()V

    :cond_0
    return-void
.end method
