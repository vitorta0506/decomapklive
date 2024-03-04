.class public final Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;
.super Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$VoiceSpan;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0019B\u001f\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000c\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;",
        "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;",
        "f2FChatMessageModel",
        "",
        "tips",
        "",
        "convert",
        "Lcom/guochao/faceshow/aaspring/base/model/GCUser;",
        "gcUser",
        "Lcom/guochao/faceshow/aaspring/base/model/GCUser;",
        "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;",
        "f2fChatMessageFragment",
        "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;",
        "Lcom/airbnb/lottie/f;",
        "drawable",
        "Lcom/airbnb/lottie/f;",
        "getDrawable",
        "()Lcom/airbnb/lottie/f;",
        "setDrawable",
        "(Lcom/airbnb/lottie/f;)V",
        "Landroid/view/View;",
        "itemView",
        "<init>",
        "(Landroid/view/View;Lcom/guochao/faceshow/aaspring/base/model/GCUser;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V",
        "VoiceSpan",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private drawable:Lcom/airbnb/lottie/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f2fChatMessageFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gcUser:Lcom/guochao/faceshow/aaspring/base/model/GCUser;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/base/model/GCUser;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/model/GCUser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gcUser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "f2fChatMessageFragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;->gcUser:Lcom/guochao/faceshow/aaspring/base/model/GCUser;

    .line 3
    iput-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;->f2fChatMessageFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;

    .line 4
    new-instance p2, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$1;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 5
    new-instance p2, Lcom/airbnb/lottie/f;

    invoke-direct {p2}, Lcom/airbnb/lottie/f;-><init>()V

    const/high16 p3, 0x41a00000    # 20.0f

    .line 6
    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p3

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p3, -0x1

    .line 7
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/f;->g0(I)V

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "f2f.json"

    invoke-static {p1, p3}, Lcom/airbnb/lottie/e;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/m;

    move-result-object p1

    .line 9
    new-instance p3, Lcom/guochao/faceshow/component/f2fmatch/holder/d;

    invoke-direct {p3, p2}, Lcom/guochao/faceshow/component/f2fmatch/holder/d;-><init>(Lcom/airbnb/lottie/f;)V

    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/m;->f(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/m;

    .line 10
    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;->drawable:Lcom/airbnb/lottie/f;

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;->convert$lambda-5$lambda-4(Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;Landroid/view/View;)V

    return-void
.end method

.method private static final convert$lambda-5$lambda-4(Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;->f2fChatMessageFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->cancelRecord()V

    return-void
.end method

.method public static synthetic d(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;->drawable$lambda-1$lambda-0(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/d;)V

    return-void
.end method

.method private static final drawable$lambda-1$lambda-0(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/d;)V
    .locals 2

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->P(Lcom/airbnb/lottie/d;)Z

    .line 2
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getIntrinsicHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->L()V

    return-void
.end method

.method private final tips(Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;->getF2fSpeechToTextResultModel()Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->getResult()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;->drawable:Lcom/airbnb/lottie/f;

    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$tips$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$tips$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3
    new-instance p1, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$VoiceSpan;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;->drawable:Lcom/airbnb/lottie/f;

    invoke-direct {p1, v1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$VoiceSpan;-><init>(Lcom/airbnb/lottie/f;)V

    .line 4
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    .line 6
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;->drawable:Lcom/airbnb/lottie/f;

    invoke-virtual {p1}, Lcom/airbnb/lottie/f;->L()V

    return-object v0
.end method


# virtual methods
.method public convert(Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2FChatMessageModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a00f0

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhc/a;->d(Landroid/widget/ImageView;Ljava/lang/String;)V

    const v0, 0x7f0a0255

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0803ea

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a020d

    .line 5
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/holder/c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/component/f2fmatch/holder/c;-><init>(Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;->getF2fSpeechToTextResultModel()Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->getFinalResult()Z

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;->tips(Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getDrawable()Lcom/airbnb/lottie/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;->drawable:Lcom/airbnb/lottie/f;

    return-object v0
.end method

.method public final setDrawable(Lcom/airbnb/lottie/f;)V
    .locals 1
    .param p1    # Lcom/airbnb/lottie/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;->drawable:Lcom/airbnb/lottie/f;

    return-void
.end method
