.class public final Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/library_xmagic/XMagicHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FaceListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u000c\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\r\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;",
        "Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;",
        "()V",
        "faceListener",
        "getFaceListener",
        "()Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;",
        "setFaceListener",
        "(Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;)V",
        "onBodyDataUpdated",
        "",
        "p0",
        "",
        "onFaceDataUpdated",
        "onHandDataUpdated",
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
.field private faceListener:Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFaceListener()Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;->faceListener:Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;

    return-object v0
.end method

.method public onBodyDataUpdated(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onFaceDataUpdated(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;->faceListener:Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;->onFaceDataUpdated(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onHandDataUpdated(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final setFaceListener(Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;)V
    .locals 0
    .param p1    # Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;->faceListener:Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;

    return-void
.end method
