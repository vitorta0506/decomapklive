.class Lcom/guochao/faceshow/utils/PushUtils$5;
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
.field final synthetic val$baseActivity:Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/PushUtils$5;->val$baseActivity:Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/utils/PushUtils$5;->val$baseActivity:Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    return-void
.end method
