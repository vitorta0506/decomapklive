.class public final Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$$inlined$addTextChangedListener$default$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000f\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "text",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "core-ktx_release"
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
.field final synthetic this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$$inlined$addTextChangedListener$default$1;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$$inlined$addTextChangedListener$default$1;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    invoke-virtual {v0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->feeET:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$$inlined$addTextChangedListener$default$1;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    invoke-virtual {v0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->feeET:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$$inlined$addTextChangedListener$default$1;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    invoke-static {v0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->access$getViewModel(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;)Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->findUserById(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$$inlined$addTextChangedListener$default$1;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    invoke-virtual {p1}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->checkPostData()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
