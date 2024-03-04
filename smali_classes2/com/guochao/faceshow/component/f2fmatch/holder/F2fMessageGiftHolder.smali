.class public final Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageGiftHolder;
.super Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageGiftHolder;",
        "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;",
        "itemView",
        "Landroid/view/View;",
        "gcUser",
        "Lcom/guochao/faceshow/aaspring/base/model/GCUser;",
        "(Landroid/view/View;Lcom/guochao/faceshow/aaspring/base/model/GCUser;)V",
        "buildGiftMessage",
        "",
        "giftMessage",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;",
        "textView",
        "Landroid/widget/TextView;",
        "convert",
        "",
        "f2FChatMessageModel",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;",
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
.field private final gcUser:Lcom/guochao/faceshow/aaspring/base/model/GCUser;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/base/model/GCUser;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/model/GCUser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gcUser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageGiftHolder;->gcUser:Lcom/guochao/faceshow/aaspring/base/model/GCUser;

    return-void
.end method

.method private final buildGiftMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageGiftHolder;->gcUser:Lcom/guochao/faceshow/aaspring/base/model/GCUser;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/base/model/GCUserBaseInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v3, "[gift_icon]"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->getGiftInfo()Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    move-result-object v4

    iget v4, v4, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->counts:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x20

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f12029a

    new-array v5, v5, [Ljava/lang/Object;

    .line 5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v4

    .line 6
    invoke-virtual {v7, v8, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120298

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    invoke-virtual {v7, v8, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 8
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06013e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 10
    invoke-static {v4, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->setColorSpan(ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 11
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060106

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 12
    invoke-static {v4, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->setColorSpan(ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 13
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 14
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x4

    .line 15
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0136

    .line 17
    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 18
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;

    .line 19
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->getGiftInfo()Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->img:Ljava/lang/String;

    const-string v2, "giftMessage.giftInfo.img"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {v3, v4, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/widget/TextView;)V

    add-int/lit8 p1, v1, 0xb

    const/16 p2, 0x21

    .line 21
    invoke-virtual {v0, v3, v1, p1, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

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

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;->convert(Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;->getImMessage()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.chat.models.GiftMessage"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageGiftHolder;->buildGiftMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
