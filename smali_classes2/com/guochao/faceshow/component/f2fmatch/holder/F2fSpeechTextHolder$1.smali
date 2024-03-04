.class public final Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;-><init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/base/model/GCUser;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$1",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "onViewAttachedToWindow",
        "",
        "v",
        "Landroid/view/View;",
        "onViewDetachedFromWindow",
        "app_GooglePlayRelease"
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
.field final synthetic this$0:Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;->getDrawable()Lcom/airbnb/lottie/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/f;->L()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
