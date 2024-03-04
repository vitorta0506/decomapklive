.class final Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->convert$lambda-7$lambda-6(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
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
.field final synthetic $count:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $item:Lcom/guochao/component/mvp/model/GiftModel;

.field final synthetic this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;

.field final synthetic this$1:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;


# direct methods
.method constructor <init>(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/mvp/fragment/MVPListFragment;",
            "Lcom/guochao/component/mvp/model/GiftModel;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;->this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    iput-object p2, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;->$item:Lcom/guochao/component/mvp/model/GiftModel;

    iput-object p3, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;->$count:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;->this$1:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;->this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    invoke-virtual {v0}, Lcom/guochao/component/mvp/fragment/MVPListFragment;->getCallBack()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;->$item:Lcom/guochao/component/mvp/model/GiftModel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/TypeData;->getData()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const/4 v3, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_6

    .line 4
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;->$item:Lcom/guochao/component/mvp/model/GiftModel;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/model/TypeData;

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    if-nez v0, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {v0, p1}, Lcom/guochao/component/mvp/model/TypeData;->setData(Ljava/lang/String;)V

    goto :goto_6

    .line 5
    :cond_6
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;->$item:Lcom/guochao/component/mvp/model/GiftModel;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/model/TypeData;

    goto :goto_4

    :cond_7
    move-object v0, v1

    :goto_4
    if-nez v0, :cond_8

    goto :goto_6

    .line 6
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;->$item:Lcom/guochao/component/mvp/model/GiftModel;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/guochao/component/mvp/model/TypeData;->getData()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_9
    move-object v5, v1

    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/guochao/component/mvp/model/TypeData;->setData(Ljava/lang/String;)V

    .line 8
    :goto_6
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;->$count:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_a

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    const/4 p1, 0x2

    if-eqz v3, :cond_d

    .line 9
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;->$item:Lcom/guochao/component/mvp/model/GiftModel;

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/guochao/component/mvp/model/TypeData;

    :cond_b
    if-nez v1, :cond_c

    goto :goto_a

    :cond_c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/guochao/component/mvp/model/TypeData;->setStatus(Ljava/lang/Integer;)V

    goto :goto_a

    .line 10
    :cond_d
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;->$item:Lcom/guochao/component/mvp/model/GiftModel;

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/TypeData;->getData()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_8

    :cond_e
    const/4 v0, 0x0

    :goto_8
    iget-object v3, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;->$count:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_9

    :cond_f
    const/4 v3, 0x0

    :goto_9
    if-lt v0, v3, :cond_12

    .line 11
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;->$item:Lcom/guochao/component/mvp/model/GiftModel;

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/guochao/component/mvp/model/TypeData;

    :cond_10
    if-nez v1, :cond_11

    goto :goto_a

    :cond_11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/guochao/component/mvp/model/TypeData;->setStatus(Ljava/lang/Integer;)V

    .line 12
    :cond_12
    :goto_a
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;->this$1:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 13
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;->this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/component/mvp/activity/MVPActivity;

    if-eqz p1, :cond_13

    .line 14
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;->this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.guochao.component.mvp.activity.MVPActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/component/mvp/activity/MVPActivity;

    invoke-virtual {p1}, Lcom/guochao/component/mvp/activity/MVPActivity;->checkGetAll()V

    :cond_13
    return-void
.end method
