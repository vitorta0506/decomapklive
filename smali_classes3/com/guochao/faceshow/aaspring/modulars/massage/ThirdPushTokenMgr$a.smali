.class Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr$a;->b:Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setOfflinePushToken err code = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TAG_KEY_FORM_PUSH"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOfflinePushToken success  token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  \u8bc1\u4e66id\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr$a;->b:Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->a(Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG_KEY_FORM_PUSH"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr$a;->b:Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->b(Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;Z)Z

    return-void
.end method
