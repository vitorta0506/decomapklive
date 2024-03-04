.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B#\u0008\u0016\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010+\u001a\u00020,2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0010\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020\u0003H\u0007R\u001e\u0010\u000c\u001a\u00020\u00038\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0004R\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001e\u0010\"\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0013\"\u0004\u0008$\u0010\u0015R\u001e\u0010%\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0013\"\u0004\u0008\'\u0010\u0015R\u001e\u0010(\u001a\u00020\u00038\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u000e\"\u0004\u0008*\u0010\u0004\u00a8\u0006/"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "context",
        "Landroid/content/Context;",
        "layoutId",
        "",
        "parent",
        "Landroid/view/ViewGroup;",
        "(Landroid/content/Context;ILandroid/view/ViewGroup;)V",
        "backgroundView",
        "getBackgroundView",
        "()Landroid/view/View;",
        "setBackgroundView",
        "contentTextView",
        "Landroid/widget/TextView;",
        "getContentTextView",
        "()Landroid/widget/TextView;",
        "setContentTextView",
        "(Landroid/widget/TextView;)V",
        "loadingView",
        "Landroid/widget/ImageView;",
        "getLoadingView",
        "()Landroid/widget/ImageView;",
        "setLoadingView",
        "(Landroid/widget/ImageView;)V",
        "message",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;",
        "getMessage",
        "()Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;",
        "setMessage",
        "(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;)V",
        "translateButton",
        "getTranslateButton",
        "setTranslateButton",
        "translateContentView",
        "getTranslateContentView",
        "setTranslateContentView",
        "translateLoadingView",
        "getTranslateLoadingView",
        "setTranslateLoadingView",
        "setMessageData",
        "",
        "translate",
        "view",
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
.field public backgroundView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public contentTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public loadingView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private message:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public translateButton:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public translateContentView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public translateLoadingView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->translate$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;)V

    return-void
.end method

.method private static final translate$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getTranslateContentView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getLoadingView()Landroid/widget/ImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final getBackgroundView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->backgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "backgroundView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContentTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->contentTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "contentTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLoadingView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->loadingView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "loadingView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMessage()Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->message:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;

    return-object v0
.end method

.method public final getTranslateButton()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->translateButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "translateButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTranslateContentView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->translateContentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "translateContentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTranslateLoadingView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->translateLoadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "translateLoadingView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setBackgroundView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->backgroundView:Landroid/view/View;

    return-void
.end method

.method public final setContentTextView(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->contentTextView:Landroid/widget/TextView;

    return-void
.end method

.method public final setLoadingView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->loadingView:Landroid/widget/ImageView;

    return-void
.end method

.method public final setMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->message:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;

    return-void
.end method

.method public final setMessageData(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->message:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getContentTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getOtherLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/utils/TranslateUtils;->getPhoneLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->getTranslatedContent()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getTranslateLoadingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getTranslateButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getTranslateLoadingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getTranslateButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getTranslateContentView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getTranslateLoadingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getTranslateContentView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getTranslateButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getContentTextView()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getTranslateButton()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "#80C4FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getBackgroundView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0801e4

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 19
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getTranslateLoadingView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0800c3

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getContentTextView()Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getTranslateButton()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "#888888"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getBackgroundView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0801e1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 23
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getTranslateLoadingView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0800c1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method

.method public final setTranslateButton(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->translateButton:Landroid/widget/TextView;

    return-void
.end method

.method public final setTranslateContentView(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->translateContentView:Landroid/widget/TextView;

    return-void
.end method

.method public final setTranslateLoadingView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->translateLoadingView:Landroid/view/View;

    return-void
.end method

.method public final translate(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->message:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getTranslateButton()Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getTranslateLoadingView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getLoadingView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->getLoadingView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->message:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->translate(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$b;)V

    :cond_1
    return-void
.end method
