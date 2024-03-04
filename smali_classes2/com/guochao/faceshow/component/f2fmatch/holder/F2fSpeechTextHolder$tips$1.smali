.class public final Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$tips$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;->tips(Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$tips$1",
        "Landroid/graphics/drawable/Drawable$Callback;",
        "invalidateDrawable",
        "",
        "who",
        "Landroid/graphics/drawable/Drawable;",
        "scheduleDrawable",
        "what",
        "Ljava/lang/Runnable;",
        "when",
        "",
        "unscheduleDrawable",
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

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$tips$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "who"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$tips$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p3, "who"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "what"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$tips$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "who"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "what"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$tips$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
