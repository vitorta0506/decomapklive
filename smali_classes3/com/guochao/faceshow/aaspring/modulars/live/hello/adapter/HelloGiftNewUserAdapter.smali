.class public final Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;
.super Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter<",
        "Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\'\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\"\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0008H\u0016J\u0018\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J \u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0019H\u0002J\u0018\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0019H\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;",
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;",
        "Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;",
        "mContext",
        "Landroid/content/Context;",
        "data",
        "",
        "layoutId",
        "",
        "(Landroid/content/Context;Ljava/util/List;I)V",
        "getMContext",
        "()Landroid/content/Context;",
        "setMContext",
        "(Landroid/content/Context;)V",
        "convert",
        "",
        "holder",
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;",
        "item",
        "position",
        "eventTracking",
        "status",
        "desc",
        "",
        "inviteHelloUser",
        "Landroid/widget/TextView;",
        "setTextView",
        "selected",
        "",
        "textView",
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
.field private mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;ILandroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;->convert$lambda-2(Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;ILandroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$eventTracking(Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;->eventTracking(ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setTextView(Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;ZLandroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;->setTextView(ZLandroid/widget/TextView;)V

    return-void
.end method

.method private static final convert$lambda-2(Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;ILandroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    const-string p4, "$item"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "this$0"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;->isInvite()I

    move-result p4

    const/4 v0, 0x1

    if-eq p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;->getLiveFlag()Z

    move-result p4

    if-nez p4, :cond_0

    .line 2
    invoke-direct {p1, p0, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;->inviteHelloUser(Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;ILandroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method private final eventTracking(ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "status"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "desc"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string p2, "click_hellolist_hello"

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final inviteHelloUser(Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;ILandroid/widget/TextView;)V
    .locals 3

    .line 1
    const-class p2, Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;->setTextView(ZLandroid/widget/TextView;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v1, "api/token/live/helloLog/hello"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;->GET:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->method(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "helloUserId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->addQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$success$1;

    invoke-direct {v2, p0, p3, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$success$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$fail$1;

    invoke-direct {p2, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$fail$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;Landroid/widget/TextView;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method private final setTextView(ZLandroid/widget/TextView;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0603ce

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    const p1, 0x7f1204bc

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 4
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const p1, 0x7f0800ba

    .line 5
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_3

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    const v2, 0x7f1204b7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 8
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const p1, 0x7f0800b9

    .line 9
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public convert(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;I)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const v1, 0x7f0a0d86

    .line 2
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const v2, 0x7f0a0d1c

    .line 3
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    if-eqz p1, :cond_2

    const v3, 0x7f0a0ca5

    .line 4
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v1, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    :cond_3
    if-nez v2, :cond_4

    goto :goto_3

    .line 6
    :cond_4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    if-eqz p1, :cond_8

    .line 7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;->getLiveFlag()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_5

    const v3, 0x7f1204af

    .line 9
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f06037f

    .line 10
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    :cond_5
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 13
    :cond_6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;->isInvite()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-direct {p0, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;->setTextView(ZLandroid/widget/TextView;)V

    :cond_8
    :goto_4
    if-eqz p1, :cond_9

    .line 14
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/a;

    invoke-direct {v0, p2, p0, p3, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/a;-><init>(Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;ILandroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;->convert(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;I)V

    return-void
.end method

.method public final getMContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final setMContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;->mContext:Landroid/content/Context;

    return-void
.end method
