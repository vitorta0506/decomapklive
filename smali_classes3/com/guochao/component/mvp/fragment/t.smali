.class public final synthetic Lcom/guochao/component/mvp/fragment/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/t;->a:Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;

    iput-object p2, p0, Lcom/guochao/component/mvp/fragment/t;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/t;->a:Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;

    iget-object v1, p0, Lcom/guochao/component/mvp/fragment/t;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->Q1(Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method
