.class Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl$2;
.super Lcom/tencent/imsdk/common/IMCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;->doBackground(ILcom/tencent/imsdk/v2/V2TIMCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl$2;->this$0:Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;

    invoke-direct {p0, p2}, Lcom/tencent/imsdk/common/IMCallback;-><init>(Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/imsdk/common/IMCallback;->success(Ljava/lang/Object;)V

    return-void
.end method
