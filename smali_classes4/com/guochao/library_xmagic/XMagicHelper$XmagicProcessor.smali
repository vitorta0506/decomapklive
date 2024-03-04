.class final Lcom/guochao/library_xmagic/XMagicHelper$XmagicProcessor;
.super Lcom/guochao/library_xmagic/XMagicHelper$Processor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/library_xmagic/XMagicHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "XmagicProcessor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/guochao/library_xmagic/XMagicHelper$XmagicProcessor;",
        "Lcom/guochao/library_xmagic/XMagicHelper$Processor;",
        "(Lcom/guochao/library_xmagic/XMagicHelper;)V",
        "process",
        "",
        "textureId",
        "width",
        "height",
        "lib_xmagic_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/library_xmagic/XMagicHelper;


# direct methods
.method public constructor <init>(Lcom/guochao/library_xmagic/XMagicHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/library_xmagic/XMagicHelper$XmagicProcessor;->this$0:Lcom/guochao/library_xmagic/XMagicHelper;

    invoke-direct {p0}, Lcom/guochao/library_xmagic/XMagicHelper$Processor;-><init>()V

    return-void
.end method


# virtual methods
.method public process(III)I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper$XmagicProcessor;->this$0:Lcom/guochao/library_xmagic/XMagicHelper;

    invoke-virtual {v0}, Lcom/guochao/library_xmagic/XMagicHelper;->getMXmagicApi()Lcom/tencent/xmagic/XmagicApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/library_xmagic/XMagicHelper$XmagicProcessor;->this$0:Lcom/guochao/library_xmagic/XMagicHelper;

    invoke-virtual {v1}, Lcom/guochao/library_xmagic/XMagicHelper;->getMIsSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/xmagic/XmagicApi;->process(III)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p2

    .line 4
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return p1
.end method
