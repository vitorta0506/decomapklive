.class public final Lcom/guochao/component/mvp/view/TitleView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J!\u0010\r\u001a\u00020\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\u0013J\u0018\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0010H\u0016J\u000e\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0010J\u000e\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0010R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/guochao/component/mvp/view/TitleView;",
        "Landroid/widget/LinearLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "viewBinding",
        "Lcom/guochao/component/mvp/databinding/ViewTitleBinding;",
        "getViewBinding",
        "()Lcom/guochao/component/mvp/databinding/ViewTitleBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/mvp/databinding/ViewTitleBinding;)V",
        "addBackListener",
        "",
        "res",
        "",
        "listener",
        "Landroid/view/View$OnClickListener;",
        "(Ljava/lang/Integer;Landroid/view/View$OnClickListener;)V",
        "addMoreListener",
        "setBackgroundColor",
        "color",
        "setTitle",
        "text",
        "",
        "setTitleColor",
        "component_mvp_release"
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
.field private viewBinding:Lcom/guochao/component/mvp/databinding/ViewTitleBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/guochao/component/mvp/view/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/guochao/component/mvp/databinding/ViewTitleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/mvp/databinding/ViewTitleBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context), this, true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/mvp/view/TitleView;->viewBinding:Lcom/guochao/component/mvp/databinding/ViewTitleBinding;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/component/mvp/view/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic addBackListener$default(Lcom/guochao/component/mvp/view/TitleView;Ljava/lang/Integer;Landroid/view/View$OnClickListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/mvp/view/TitleView;->addBackListener(Ljava/lang/Integer;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final addBackListener(Ljava/lang/Integer;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/guochao/component/mvp/view/TitleView;->viewBinding:Lcom/guochao/component/mvp/databinding/ViewTitleBinding;

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/ViewTitleBinding;->backIV:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/component/mvp/view/TitleView;->viewBinding:Lcom/guochao/component/mvp/databinding/ViewTitleBinding;

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/ViewTitleBinding;->backIV:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/component/mvp/view/TitleView;->viewBinding:Lcom/guochao/component/mvp/databinding/ViewTitleBinding;

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/ViewTitleBinding;->backIV:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final addMoreListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p2    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/component/mvp/view/TitleView;->viewBinding:Lcom/guochao/component/mvp/databinding/ViewTitleBinding;

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/ViewTitleBinding;->moreIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/component/mvp/view/TitleView;->viewBinding:Lcom/guochao/component/mvp/databinding/ViewTitleBinding;

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/ViewTitleBinding;->moreIV:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/component/mvp/view/TitleView;->viewBinding:Lcom/guochao/component/mvp/databinding/ViewTitleBinding;

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/ViewTitleBinding;->moreIV:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final getViewBinding()Lcom/guochao/component/mvp/databinding/ViewTitleBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/view/TitleView;->viewBinding:Lcom/guochao/component/mvp/databinding/ViewTitleBinding;

    return-object v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/mvp/view/TitleView;->viewBinding:Lcom/guochao/component/mvp/databinding/ViewTitleBinding;

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/ViewTitleBinding;->allLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/guochao/component/mvp/view/TitleView;->viewBinding:Lcom/guochao/component/mvp/databinding/ViewTitleBinding;

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/ViewTitleBinding;->titleTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/component/mvp/view/TitleView;->viewBinding:Lcom/guochao/component/mvp/databinding/ViewTitleBinding;

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/ViewTitleBinding;->titleTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/mvp/view/TitleView;->viewBinding:Lcom/guochao/component/mvp/databinding/ViewTitleBinding;

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/ViewTitleBinding;->titleTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/mvp/databinding/ViewTitleBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/mvp/databinding/ViewTitleBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/mvp/view/TitleView;->viewBinding:Lcom/guochao/component/mvp/databinding/ViewTitleBinding;

    return-void
.end method
