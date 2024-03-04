.class final Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$adapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$adapter$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$adapter$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    .line 3
    new-instance v1, Landroid/view/View;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v2, 0x41f00000    # 30.0f

    .line 5
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    const/4 v3, -0x2

    .line 6
    invoke-direct {v0, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addFooterView$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I

    return-object v6
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$adapter$2;->invoke()Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;

    move-result-object v0

    return-object v0
.end method
