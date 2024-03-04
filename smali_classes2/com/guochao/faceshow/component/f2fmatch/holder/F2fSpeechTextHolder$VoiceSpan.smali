.class public final Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$VoiceSpan;
.super Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceSpan"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$VoiceSpan;",
        "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;",
        "Lcom/airbnb/lottie/f;",
        "drawable",
        "<init>",
        "(Lcom/airbnb/lottie/f;)V",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;)V
    .locals 1
    .param p1    # Lcom/airbnb/lottie/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
