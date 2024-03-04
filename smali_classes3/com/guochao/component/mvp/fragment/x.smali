.class public final synthetic Lcom/guochao/component/mvp/fragment/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/component/mvp/fragment/MVPListFragment;

.field public final synthetic b:Lcom/guochao/component/mvp/model/GiftModel;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic d:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/x;->a:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    iput-object p2, p0, Lcom/guochao/component/mvp/fragment/x;->b:Lcom/guochao/component/mvp/model/GiftModel;

    iput-object p3, p0, Lcom/guochao/component/mvp/fragment/x;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/guochao/component/mvp/fragment/x;->d:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/x;->a:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    iget-object v1, p0, Lcom/guochao/component/mvp/fragment/x;->b:Lcom/guochao/component/mvp/model/GiftModel;

    iget-object v2, p0, Lcom/guochao/component/mvp/fragment/x;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/guochao/component/mvp/fragment/x;->d:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->g(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Landroid/view/View;)V

    return-void
.end method
