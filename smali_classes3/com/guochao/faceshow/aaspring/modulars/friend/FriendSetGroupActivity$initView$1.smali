.class public final Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls8/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->initView(Landroid/os/Bundle;)V
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
        "com/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initView$1",
        "Ls8/b$a;",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initView$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

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
    .locals 8
    .param p1    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v1, p2

    if-eqz v1, :cond_2

    .line 2
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p2, 0x1

    :goto_2
    if-eqz p2, :cond_3

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initView$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    const p1, 0x7f12043b

    .line 4
    invoke-virtual {v2, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p1, "getString(R.string.input_group_name)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 5
    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initView$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->addGroup$default(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic onCreate(Ls8/b;)V
    .locals 0

    invoke-static {p0, p1}, Ls8/a;->a(Ls8/b$a;Ls8/b;)V

    return-void
.end method
