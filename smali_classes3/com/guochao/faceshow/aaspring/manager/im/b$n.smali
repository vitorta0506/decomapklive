.class Lcom/guochao/faceshow/aaspring/manager/im/b$n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/manager/im/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;",
            ">;>;"
        }
    .end annotation
.end field

.field c:Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->a:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->b:Ljava/util/List;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->b:Ljava/util/List;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->a:Z

    .line 6
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object p2

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/im/b$n$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/b$n$a;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/b$n;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Lcom/tencent/imsdk/v2/V2TIMManager;->getUsersInfo(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method
