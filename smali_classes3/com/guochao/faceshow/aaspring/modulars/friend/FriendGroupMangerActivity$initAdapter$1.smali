.class public final Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1;
.super Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter<",
        "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1",
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;",
        "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
        "convert",
        "",
        "holder",
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;",
        "item",
        "position",
        "",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

    const v0, 0x7f0d01fa

    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/db/GroupInfo;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1;->convert$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/db/GroupInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Lcom/guochao/faceshow/aaspring/db/GroupInfo;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1;->convert$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Lcom/guochao/faceshow/aaspring/db/GroupInfo;Landroid/view/View;)V

    return-void
.end method

.method private static final convert$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Lcom/guochao/faceshow/aaspring/db/GroupInfo;Landroid/view/View;)V
    .locals 6

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getMDeletePop()Landroid/widget/PopupWindow;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_3

    const p1, 0x7f1203b2

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "getString(R.string.frien\u2026group_delect_default_tip)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_2

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->deleteGroup(Landroid/content/Context;Ljava/lang/Integer;)V

    :goto_2
    return-void
.end method

.method private static final convert$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/db/GroupInfo;Landroid/view/View;)V
    .locals 2

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->setCurrentIndex(I)V

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    const p1, 0x7f12059a

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_5

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    const-string p2, "if (item?.id == 0 && ite\u2026g()\n                    }"

    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getMRenameGroupDialog()Ls8/c;

    move-result-object p2

    if-nez p2, :cond_6

    .line 7
    new-instance p2, Ls8/c;

    .line 8
    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1$convert$2$1;

    invoke-direct {p3, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1$convert$2$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;)V

    .line 9
    invoke-direct {p2, p0, p3}, Ls8/c;-><init>(Landroid/content/Context;Ls8/c$c;)V

    .line 10
    invoke-virtual {p2, p1}, Ls8/c;->e(Ljava/lang/CharSequence;)Ls8/c;

    move-result-object p1

    const p2, 0x7f1203b7

    .line 11
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ls8/c;->d(Ljava/lang/CharSequence;)Ls8/c;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->setMRenameGroupDialog(Ls8/c;)V

    goto :goto_4

    .line 13
    :cond_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getMRenameGroupDialog()Ls8/c;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ls8/c;->b()Landroid/widget/EditText;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getMRenameGroupDialog()Ls8/c;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ls8/c;->b()Landroid/widget/EditText;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 15
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getMRenameGroupDialog()Ls8/c;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ls8/c;->show()V

    :cond_9
    return-void
.end method


# virtual methods
.method public convert(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/db/GroupInfo;I)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/db/GroupInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v2, 0x7f0a04a2

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    if-eqz p1, :cond_8

    .line 3
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

    const v0, 0x7f12059a

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;

    goto :goto_5

    :cond_4
    if-eqz p1, :cond_8

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v3

    :goto_3
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getMemberNum()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v0, v3

    :goto_4
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;

    :cond_8
    :goto_5
    const p3, 0x7f0a02aa

    if-eqz p1, :cond_9

    .line 5
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    :cond_9
    move-object v0, v3

    :goto_6
    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    if-eqz p1, :cond_b

    const v1, 0x7f0a02a5

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    :cond_b
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_7
    if-eqz p1, :cond_c

    .line 6
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_c

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/friend/m;

    invoke-direct {v1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/friend/m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Lcom/guochao/faceshow/aaspring/db/GroupInfo;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    if-eqz p1, :cond_d

    .line 7
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p3, :cond_d

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/friend/n;

    invoke-direct {v1, v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/friend/n;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/db/GroupInfo;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1;->convert(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/db/GroupInfo;I)V

    return-void
.end method
