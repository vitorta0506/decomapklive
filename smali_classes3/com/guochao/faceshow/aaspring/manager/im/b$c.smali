.class Lcom/guochao/faceshow/aaspring/manager/im/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/im/b;->onLogout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/manager/im/b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/im/b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$c;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$c;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->V(Lcom/guochao/faceshow/aaspring/manager/im/b;J)J

    return-void
.end method
