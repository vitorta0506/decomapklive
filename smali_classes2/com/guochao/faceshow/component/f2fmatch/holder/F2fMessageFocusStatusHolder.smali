.class public final Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusStatusHolder;
.super Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0008\u001a\u00020\u0004R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusStatusHolder;",
        "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
        "message",
        "",
        "position",
        "",
        "convert",
        "getLayoutId",
        "Lcom/guochao/faceshow/views/NormalCircleImageView;",
        "userAvatar",
        "Lcom/guochao/faceshow/views/NormalCircleImageView;",
        "getUserAvatar",
        "()Lcom/guochao/faceshow/views/NormalCircleImageView;",
        "setUserAvatar",
        "(Lcom/guochao/faceshow/views/NormalCircleImageView;)V",
        "Landroid/view/View;",
        "itemView",
        "<init>",
        "(Landroid/view/View;)V",
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
.field private userAvatar:Lcom/guochao/faceshow/views/NormalCircleImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a00f0

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getViewKt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/views/NormalCircleImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusStatusHolder;->userAvatar:Lcom/guochao/faceshow/views/NormalCircleImageView;

    const p1, 0x7f0a04f9

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getViewKt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/guochao/faceshow/component/f2fmatch/holder/a;->a:Lcom/guochao/faceshow/component/f2fmatch/holder/a;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final _init_$lambda-0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic c(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusStatusHolder;->_init_$lambda-0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final convert(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;I)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "message"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    const v0, 0x7f1209b2

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusStatusHolder;->userAvatar:Lcom/guochao/faceshow/views/NormalCircleImageView;

    const p2, 0x7f0f0089

    const-string v0, ""

    invoke-static {p1, v0, p2}, Lhc/a;->s(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method

.method public final getLayoutId()I
    .locals 1

    const v0, 0x7f0d0232

    return v0
.end method

.method public final getUserAvatar()Lcom/guochao/faceshow/views/NormalCircleImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusStatusHolder;->userAvatar:Lcom/guochao/faceshow/views/NormalCircleImageView;

    return-object v0
.end method

.method public final setUserAvatar(Lcom/guochao/faceshow/views/NormalCircleImageView;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/views/NormalCircleImageView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusStatusHolder;->userAvatar:Lcom/guochao/faceshow/views/NormalCircleImageView;

    return-void
.end method
