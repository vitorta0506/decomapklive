.class final Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->convert$lambda-4$lambda-3(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field final synthetic $item:Lcom/guochao/component/mvp/model/GiftModel;

.field final synthetic this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;

.field final synthetic this$1:Lcom/guochao/component/mvp/fragment/MVPListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Lcom/guochao/component/mvp/fragment/MVPListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$1$1;->$item:Lcom/guochao/component/mvp/model/GiftModel;

    iput-object p2, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$1$1;->this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;

    iput-object p3, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$1$1;->this$1:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$1$1;->$item:Lcom/guochao/component/mvp/model/GiftModel;

    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/mvp/model/TypeData;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/component/mvp/model/TypeData;->setStatus(Ljava/lang/Integer;)V

    .line 3
    :goto_1
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$1$1;->this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$1$1;->this$1:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/component/mvp/activity/MVPActivity;

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$1$1;->this$1:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.guochao.component.mvp.activity.MVPActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/component/mvp/activity/MVPActivity;

    invoke-virtual {p1}, Lcom/guochao/component/mvp/activity/MVPActivity;->checkGetAll()V

    :cond_2
    return-void
.end method
