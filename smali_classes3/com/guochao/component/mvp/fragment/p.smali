.class public final synthetic Lcom/guochao/component/mvp/fragment/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/f;


# instance fields
.field public final synthetic a:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSelectAdapter;

.field public final synthetic b:Lcom/guochao/component/mvp/model/GiftModel;

.field public final synthetic c:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSelectAdapter;Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/p;->a:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSelectAdapter;

    iput-object p2, p0, Lcom/guochao/component/mvp/fragment/p;->b:Lcom/guochao/component/mvp/model/GiftModel;

    iput-object p3, p0, Lcom/guochao/component/mvp/fragment/p;->c:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/p;->a:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSelectAdapter;

    iget-object v1, p0, Lcom/guochao/component/mvp/fragment/p;->b:Lcom/guochao/component/mvp/model/GiftModel;

    iget-object v2, p0, Lcom/guochao/component/mvp/fragment/p;->c:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->S1(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSelectAdapter;Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
