.class public final Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1$convert$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls8/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1;->convert$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/db/GroupInfo;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u001c\u0010\n\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1$convert$2$1",
        "Ls8/c$c;",
        "Landroid/app/Dialog;",
        "dialog",
        "",
        "confirm",
        "",
        "onClick",
        "",
        "content",
        "onConfirm",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1$convert$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 0
    .param p1    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onConfirm(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 7
    .param p1    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    .line 1
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1$convert$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

    const p1, 0x7f12043b

    .line 3
    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string p1, "getString(R.string.input_group_name)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 4
    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1$convert$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1$convert$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getCurrentIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1$convert$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

    .line 7
    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->setGroupName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object v0

    .line 9
    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 10
    invoke-static/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->editGroup$default(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;ILjava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreate(Ls8/c;)V
    .locals 0

    invoke-static {p0, p1}, Ls8/d;->a(Ls8/c$c;Ls8/c;)V

    return-void
.end method
