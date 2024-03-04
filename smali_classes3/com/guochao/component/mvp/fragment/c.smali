.class public final synthetic Lcom/guochao/component/mvp/fragment/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/c;->a:Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/c;->a:Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;

    check-cast p1, Lcom/guochao/component/mvp/model/UserModel;

    invoke-static {v0, p1}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->P1(Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;Lcom/guochao/component/mvp/model/UserModel;)V

    return-void
.end method
