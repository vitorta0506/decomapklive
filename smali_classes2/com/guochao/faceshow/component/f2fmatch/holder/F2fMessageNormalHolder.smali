.class public final Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageNormalHolder;
.super Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageNormalHolder;",
        "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;",
        "itemView",
        "Landroid/view/View;",
        "gcUser",
        "Lcom/guochao/faceshow/aaspring/base/model/GCUser;",
        "(Landroid/view/View;Lcom/guochao/faceshow/aaspring/base/model/GCUser;)V",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/ItemF2fMsgNormalBinding;",
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

.field private final viewBinding:Lcom/guochao/faceshow/databinding/ItemF2fMsgNormalBinding;
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

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageNormalHolder;->gcUser:Lcom/guochao/faceshow/aaspring/base/model/GCUser;

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/databinding/ItemF2fMsgNormalBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ItemF2fMsgNormalBinding;

    move-result-object p1

    const-string p2, "bind(itemView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageNormalHolder;->viewBinding:Lcom/guochao/faceshow/databinding/ItemF2fMsgNormalBinding;

    return-void
.end method


# virtual methods
.method public convert(Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2FChatMessageModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;->getTranslatedMsg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageNormalHolder;->viewBinding:Lcom/guochao/faceshow/databinding/ItemF2fMsgNormalBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ItemF2fMsgNormalBinding;->transltedTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    invoke-super {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;->convert(Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageNormalHolder;->viewBinding:Lcom/guochao/faceshow/databinding/ItemF2fMsgNormalBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ItemF2fMsgNormalBinding;->transltedTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;->getMsg()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageNormalHolder;->viewBinding:Lcom/guochao/faceshow/databinding/ItemF2fMsgNormalBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ItemF2fMsgNormalBinding;->transltedTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;->getTranslatedMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageNormalHolder;->viewBinding:Lcom/guochao/faceshow/databinding/ItemF2fMsgNormalBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ItemF2fMsgNormalBinding;->textArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    .line 8
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, 0x0

    .line 9
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const v0, 0x7f0a00f0

    .line 10
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;->getImMessage()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 12
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lhc/a;->d(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageNormalHolder;->gcUser:Lcom/guochao/faceshow/aaspring/base/model/GCUser;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/base/model/GCUserBaseInfo;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lhc/a;->d(Landroid/widget/ImageView;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
