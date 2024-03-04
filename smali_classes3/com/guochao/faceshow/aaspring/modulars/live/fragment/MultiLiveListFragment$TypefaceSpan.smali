.class public final Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$TypefaceSpan;
.super Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalTextSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypefaceSpan"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u0010\u000b\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$TypefaceSpan;",
        "Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalTextSpan;",
        "type",
        "Landroid/graphics/Typeface;",
        "(Landroid/graphics/Typeface;)V",
        "getType",
        "()Landroid/graphics/Typeface;",
        "applyToTypeface",
        "",
        "tp",
        "Landroid/text/TextPaint;",
        "updateDrawState",
        "updateMeasureState",
        "textPaint",
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
.field private final type:Landroid/graphics/Typeface;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalTextSpan;-><init>(Landroid/graphics/Typeface;F)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$TypefaceSpan;->type:Landroid/graphics/Typeface;

    return-void
.end method

.method private final applyToTypeface(Landroid/text/TextPaint;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$TypefaceSpan;->type:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v0, 0x41800000    # 16.0f

    .line 2
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getType()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$TypefaceSpan;->type:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$TypefaceSpan;->applyToTypeface(Landroid/text/TextPaint;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textPaint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$TypefaceSpan;->applyToTypeface(Landroid/text/TextPaint;)V

    return-void
.end method
