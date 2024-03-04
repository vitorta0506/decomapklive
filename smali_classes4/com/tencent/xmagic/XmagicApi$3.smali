.class Lcom/tencent/xmagic/XmagicApi$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/light/listener/OnTipsStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/xmagic/XmagicApi;->setTipsListener(Lcom/tencent/xmagic/XmagicApi$XmagicTipsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/xmagic/XmagicApi;

.field final synthetic val$xmagicTipsListener:Lcom/tencent/xmagic/XmagicApi$XmagicTipsListener;


# direct methods
.method constructor <init>(Lcom/tencent/xmagic/XmagicApi;Lcom/tencent/xmagic/XmagicApi$XmagicTipsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/xmagic/XmagicApi$3;->this$0:Lcom/tencent/xmagic/XmagicApi;

    iput-object p2, p0, Lcom/tencent/xmagic/XmagicApi$3;->val$xmagicTipsListener:Lcom/tencent/xmagic/XmagicApi$XmagicTipsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tipsNeedHide(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi$3;->val$xmagicTipsListener:Lcom/tencent/xmagic/XmagicApi$XmagicTipsListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/xmagic/XmagicApi$XmagicTipsListener;->tipsNeedHide(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public tipsNeedShow(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi$3;->val$xmagicTipsListener:Lcom/tencent/xmagic/XmagicApi$XmagicTipsListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/xmagic/XmagicApi$XmagicTipsListener;->tipsNeedShow(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
