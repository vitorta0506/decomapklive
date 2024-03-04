.class Lcom/guochao/faceshow/utils/PushUtils$1;
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
.field final synthetic val$data:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/PushUtils$1;->val$data:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/PushUtils$1;->val$data:Ljava/util/Map;

    const-string v1, "levelId"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v1, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    .line 5
    iput v2, v1, Lcom/guochao/faceshow/bean/UserBean;->levelId:I

    .line 6
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lb8/d;->a(Lb8/a;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    invoke-static {}, Ljb/a;->c()Ljb/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljb/a;->d(Ljava/lang/String;)V

    return-void
.end method
