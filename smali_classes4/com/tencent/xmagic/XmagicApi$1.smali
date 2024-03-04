.class Lcom/tencent/xmagic/XmagicApi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/light/listener/YTDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/xmagic/XmagicApi;->setYTDataListener(Lcom/tencent/xmagic/XmagicApi$XmagicYTDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/xmagic/XmagicApi;

.field final synthetic val$ytDataListener:Lcom/tencent/xmagic/XmagicApi$XmagicYTDataListener;


# direct methods
.method constructor <init>(Lcom/tencent/xmagic/XmagicApi;Lcom/tencent/xmagic/XmagicApi$XmagicYTDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/xmagic/XmagicApi$1;->this$0:Lcom/tencent/xmagic/XmagicApi;

    iput-object p2, p0, Lcom/tencent/xmagic/XmagicApi$1;->val$ytDataListener:Lcom/tencent/xmagic/XmagicApi$XmagicYTDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onYTDataUpdate(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi$1;->val$ytDataListener:Lcom/tencent/xmagic/XmagicApi$XmagicYTDataListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/tencent/xmagic/XmagicApi$XmagicYTDataListener;->onYTDataUpdate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
