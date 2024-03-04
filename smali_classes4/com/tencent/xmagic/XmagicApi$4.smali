.class Lcom/tencent/xmagic/XmagicApi$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/xmagic/LightNode$OnAssetsLoadErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/xmagic/XmagicApi;->addAssetsLoadError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/xmagic/XmagicApi;


# direct methods
.method constructor <init>(Lcom/tencent/xmagic/XmagicApi;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/xmagic/XmagicApi$4;->this$0:Lcom/tencent/xmagic/XmagicApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetsLoadError(I)V
    .locals 4

    const/16 v0, -0x320

    if-eq p1, v0, :cond_8

    const/16 v0, -0x2bc

    if-eq p1, v0, :cond_7

    const/16 v0, -0x258

    if-eq p1, v0, :cond_6

    const/16 v0, -0x1f4

    if-eq p1, v0, :cond_5

    const/16 v0, -0x190

    if-eq p1, v0, :cond_4

    const/16 v0, -0x12c

    if-eq p1, v0, :cond_3

    const/16 v0, -0xc8

    if-eq p1, v0, :cond_2

    const/16 v0, -0x64

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const-string v0, ""

    goto/16 :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi$4;->this$0:Lcom/tencent/xmagic/XmagicApi;

    invoke-static {v0}, Lcom/tencent/xmagic/XmagicApi;->access$000(Lcom/tencent/xmagic/XmagicApi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/xmagic/R$string;->xamgic_n1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi$4;->this$0:Lcom/tencent/xmagic/XmagicApi;

    invoke-static {v0}, Lcom/tencent/xmagic/XmagicApi;->access$000(Lcom/tencent/xmagic/XmagicApi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/xmagic/R$string;->xamgic_n100:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi$4;->this$0:Lcom/tencent/xmagic/XmagicApi;

    invoke-static {v0}, Lcom/tencent/xmagic/XmagicApi;->access$000(Lcom/tencent/xmagic/XmagicApi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/xmagic/R$string;->xamgic_n200:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi$4;->this$0:Lcom/tencent/xmagic/XmagicApi;

    invoke-static {v0}, Lcom/tencent/xmagic/XmagicApi;->access$000(Lcom/tencent/xmagic/XmagicApi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/xmagic/R$string;->xamgic_n300:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_4
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi$4;->this$0:Lcom/tencent/xmagic/XmagicApi;

    invoke-static {v0}, Lcom/tencent/xmagic/XmagicApi;->access$000(Lcom/tencent/xmagic/XmagicApi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/xmagic/R$string;->xamgic_n400:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi$4;->this$0:Lcom/tencent/xmagic/XmagicApi;

    invoke-static {v0}, Lcom/tencent/xmagic/XmagicApi;->access$000(Lcom/tencent/xmagic/XmagicApi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/xmagic/R$string;->xamgic_n500:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi$4;->this$0:Lcom/tencent/xmagic/XmagicApi;

    invoke-static {v0}, Lcom/tencent/xmagic/XmagicApi;->access$000(Lcom/tencent/xmagic/XmagicApi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/xmagic/R$string;->xamgic_n600:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi$4;->this$0:Lcom/tencent/xmagic/XmagicApi;

    invoke-static {v0}, Lcom/tencent/xmagic/XmagicApi;->access$000(Lcom/tencent/xmagic/XmagicApi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/xmagic/R$string;->xamgic_n700:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi$4;->this$0:Lcom/tencent/xmagic/XmagicApi;

    invoke-static {v0}, Lcom/tencent/xmagic/XmagicApi;->access$000(Lcom/tencent/xmagic/XmagicApi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/xmagic/R$string;->xamgic_n800:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    :goto_0
    invoke-static {}, Lcom/tencent/xmagic/XmagicApi;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load assets error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/tencent/xmagic/XmagicApi$4;->this$0:Lcom/tencent/xmagic/XmagicApi;

    invoke-static {v1}, Lcom/tencent/xmagic/XmagicApi;->access$200(Lcom/tencent/xmagic/XmagicApi;)Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 12
    iget-object v1, p0, Lcom/tencent/xmagic/XmagicApi$4;->this$0:Lcom/tencent/xmagic/XmagicApi;

    invoke-static {v1}, Lcom/tencent/xmagic/XmagicApi;->access$200(Lcom/tencent/xmagic/XmagicApi;)Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;->onXmagicPropertyError(Ljava/lang/String;I)V

    :cond_9
    return-void
.end method
