.class public final synthetic Lcom/guochao/component/mvp/fragment/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/g;->a:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/g;->a:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    check-cast p1, Lcom/guochao/component/mvp/model/UserModel;

    invoke-static {v0, p1}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->Q1(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;Lcom/guochao/component/mvp/model/UserModel;)V

    return-void
.end method
