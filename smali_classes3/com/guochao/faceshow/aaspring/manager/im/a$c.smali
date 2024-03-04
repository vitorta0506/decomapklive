.class Lcom/guochao/faceshow/aaspring/manager/im/a$c;
.super Lcom/tencent/imsdk/v2/V2TIMGroupListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/im/a;->k(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/manager/im/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/im/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$c;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupDismissed(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onGroupDismissed(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$c;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/manager/im/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/manager/im/a$g;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/im/a$g;->T(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onReceiveRESTCustomData(Ljava/lang/String;[B)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onReceiveRESTCustomData(Ljava/lang/String;[B)V

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->createCustomMessage([B)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$c;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1, p1}, Lcom/guochao/faceshow/aaspring/manager/im/a;->q(Lcom/tencent/imsdk/v2/V2TIMMessage;ZLjava/lang/String;)V

    return-void
.end method
