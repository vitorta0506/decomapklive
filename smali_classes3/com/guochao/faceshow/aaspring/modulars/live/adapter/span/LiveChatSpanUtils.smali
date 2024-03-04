.class public final Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001!B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J \u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH\u0007J(\u0010\u000e\u001a\u00020\t2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0004\u001a\u00020\u0005H\u0007J\u0018\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J0\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u0019H\u0002\u00a8\u0006\""
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils;",
        "",
        "()V",
        "getGiftIconSpan",
        "textView",
        "Landroid/widget/TextView;",
        "url",
        "",
        "getHandyGiftMessageSpan",
        "",
        "message",
        "Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;",
        "isSendToBroadCaster",
        "",
        "getLuckyGiftRewardSpan",
        "messageModel",
        "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;",
        "result",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;",
        "getLuckyGiftRunwayContentSpan",
        "context",
        "Landroid/content/Context;",
        "Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;",
        "getMvpLevelSpan",
        "mvpLevel",
        "",
        "setGiftSpan",
        "",
        "image",
        "spannableStringBuilder",
        "Landroid/text/SpannableStringBuilder;",
        "start",
        "end",
        "TypeFaceSpan",
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


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getGiftIconSpan(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x4

    .line 2
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0136

    .line 4
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/widget/TextView;)V

    return-object v1
.end method

.method public static final getHandyGiftMessageSpan(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;Landroid/widget/TextView;Z)Ljava/lang/CharSequence;
    .locals 13
    .param p0    # Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06013e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x7f1203e9

    .line 4
    invoke-virtual {v0, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ctx.getString(R.string.handy_gift_gave)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getIsGiftAllSend()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const p2, 0x7f1203c5

    .line 7
    invoke-virtual {v0, p2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 8
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserNickName()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v8, "\ufffc"

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->giftNum:Ljava/lang/String;

    .line 11
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v5, 0x4

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v7, v9

    aput-object v8, v7, v6

    const/4 v6, 0x2

    aput-object v0, v7, v6

    const/4 v0, 0x3

    aput-object p2, v7, v0

    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string p2, "format(format, *args)"

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 13
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 14
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    .line 15
    invoke-virtual {p2, v0, v9, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v5

    .line 16
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 17
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils;

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->giftImg:Ljava/lang/String;

    const-string v6, "message.giftImg"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils;->getGiftIconSpan(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    add-int/lit8 p1, v0, 0x1

    .line 18
    invoke-virtual {p2, p0, v0, p1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    const-string p0, "fromNick"

    .line 19
    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v6, v4

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_3

    .line 20
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 21
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p0

    .line 22
    invoke-virtual {p2, p1, p0, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    return-object p2
.end method

.method public static final getLuckyGiftRewardSpan(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 14
    .param p0    # Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;",
            "Landroid/widget/TextView;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "messageModel"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textView"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, "\ufffc"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;->getAwardMultiple()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const v5, 0x7f120538

    .line 5
    invoke-virtual {v3, v5, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "getInstance().getString(\u2026           nick\n        )"

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, "nick"

    .line 7
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v10

    move-object v4, v0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 8
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v5

    const v6, 0x7f06013f

    .line 10
    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 11
    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    const/16 v5, 0x21

    .line 13
    invoke-virtual {v13, v4, v3, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v10

    move-object v8, v9

    move v9, v0

    move v10, v3

    .line 14
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 15
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils;

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    iget-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->giftImg:Ljava/lang/String;

    const-string v1, "messageModel.data.giftImg"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v6, v5, 0x1

    move-object v1, v0

    move-object/from16 v2, p2

    move-object v4, v13

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils;->setGiftSpan(Landroid/widget/TextView;Ljava/lang/String;Landroid/text/SpannableStringBuilder;II)V

    :cond_2
    return-object v13
.end method

.method public static final getLuckyGiftRunwayContentSpan(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;)Ljava/lang/CharSequence;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;->getDiamonds()Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getGiftNumbers()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getGiftNumbers()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;->getDiamonds()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const p1, 0x7f12053a

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 5
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const p1, 0x7f120539

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 6
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    move-object v1, p0

    const-string p0, "if (message.diamonds) {\n\u2026unway1, reward)\n        }"

    .line 7
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, v0

    .line 9
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 10
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    const-string v3, "#FFED6A"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan;-><init>(FI)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    const/16 v2, 0x21

    .line 12
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    return-object p0
.end method

.method public static final getMvpLevelSpan(I)Ljava/lang/CharSequence;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "   "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    const v3, 0x7f0f0280

    invoke-virtual {p0, v3}, Landroid/app/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    const v3, 0x7f0f027f

    invoke-virtual {p0, v3}, Landroid/app/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    const v3, 0x7f0f027e

    invoke-virtual {p0, v3}, Landroid/app/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6
    new-instance v3, Lcom/guochao/faceshow/views/r;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/16 p0, 0x21

    invoke-virtual {v0, v3, v2, v1, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method private final setGiftSpan(Landroid/widget/TextView;Ljava/lang/String;Landroid/text/SpannableStringBuilder;II)V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x4

    .line 2
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0136

    .line 4
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/widget/TextView;)V

    const/16 p1, 0x21

    .line 6
    invoke-virtual {p3, v1, p4, p5, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method
